import json
import os
import re
import subprocess as sp
import shutil
from typing import Optional
import zipfile

from .red_config import RedConfig
from . import utils as Utils


def setup_config(config_path: Optional[str] = None):
    global MOD_NAME
    global VERSION
    global STAGE
    global RAW
    global ARCHIVEXL
    global WOLVENKIT_CLI
    global RED_CLI
    global SOURCE
    global TARGET

    if config_path is None:
        config_path = Utils.normjoin(os.getcwd(), "red.config.json")
    else:
        config_path = Utils.normpath(config_path)

    config: Optional[RedConfig]
    try:
        with open(config_path, "r") as file:
            config = json.load(file)
    except FileNotFoundError:
        raise FileNotFoundError(f"{config_path} not found")
    except json.JSONDecodeError:
        raise json.JSONDecodeError(f"{config_path} is not a valid JSON file")
    except Exception as e:
        raise e
    finally:
        if config is None:
            raise Exception(f"Failed to load {config_path}")

    MOD_NAME = config["name"]
    VERSION = config["version"]
    STAGE = os.path.normpath(config["stage"])
    RAW = os.path.normpath(config["archives"]["raw"])
    ARCHIVEXL = os.path.normpath(config["archives"]["archivexl"])
    WOLVENKIT_CLI = os.path.normpath(config["tools"]["wolvenkitCLI"])
    RED_CLI = os.path.normpath(config["tools"]["redCLI"])

    baseArchivePath = os.path.join("archive", "pc", "mod")
    SOURCE = {
        "raw": RAW,
        "archivexl": ARCHIVEXL,
    }
    TARGET = {
        "raw": Utils.normjoin(STAGE, baseArchivePath, MOD_NAME),
        "archivexl": Utils.normjoin(STAGE, baseArchivePath, f"{MOD_NAME}.archive.xl"),
    }

    return


def init():
    if not os.path.exists(RAW):
        print(
            'Error: The archive file was not found, check your "red.config.json" file.'
        )
        exit(1)

    if not os.path.exists(ARCHIVEXL):
        print(
            'Error: The archive.xl file was not found, check your "red.config.json" file.'
        )
        exit(1)

    wproc = sp.run([WOLVENKIT_CLI, "--version"], stdout=sp.PIPE, stderr=sp.PIPE)
    if wproc.returncode != 0:
        raise FileNotFoundError(f"WolvenKit CLI not found at: {WOLVENKIT_CLI}")

    rproc = sp.run([RED_CLI, "--help"], stdout=sp.PIPE, stderr=sp.PIPE)
    if rproc.returncode != 0:
        raise FileNotFoundError(f"Red CLI not found at: {RED_CLI}")

    if os.path.exists(STAGE):
        try:
            shutil.rmtree(STAGE)

        except PermissionError:
            raise PermissionError(f"Permission denied when trying to remove: {STAGE}")
        except OSError as e:
            raise OSError(f"Failed to remove file {STAGE}: {e}")
        except Exception as e:
            raise e

    return


def archives_bundle():
    print("Archives bundling starded!", flush=True)

    shutil.copytree(SOURCE["raw"], TARGET["raw"])
    shutil.copyfile(SOURCE["archivexl"], TARGET["archivexl"])

    for root, _, files in os.walk(TARGET["raw"]):
        for file in files:
            filePath = Utils.normjoin(root, file)

            print(f"Bundling file: {filePath}...", end=" ", flush=True)

            try:
                if not os.path.exists(filePath):
                    raise FileNotFoundError(f"JSON file not found: {filePath}")

                proc = sp.run(
                    [WOLVENKIT_CLI, "cr2w", "-d", filePath],
                    stdout=sp.PIPE,
                    stderr=sp.PIPE,
                    text=True,
                    encoding="utf-8",
                )

                if proc.returncode != 0:
                    raise RuntimeError(
                        f"WolvenKit CLI command failed with exit code: {proc.returncode}\n\n{proc.stderr}"
                    )

                try:
                    os.remove(filePath)
                except PermissionError:
                    raise PermissionError(
                        f"Permission denied when trying to remove: {filePath}"
                    )
                except OSError as e:
                    raise OSError(f"Failed to remove file {filePath}: {e}")
                except Exception as e:
                    raise e
            except Exception as e:
                raise e

            print("done!", flush=True)

    return


def archives_pack():
    print("Archives packing started!", flush=True)

    modPath = TARGET["raw"]

    try:
        if not os.path.exists(modPath):
            raise FileNotFoundError(f"Mod archives path not found: {modPath}")

        print(f"Packing mod archives: {modPath}...", end=" ", flush=True)

        proc = sp.run(
            [WOLVENKIT_CLI, "pack", modPath],
            stdout=sp.PIPE,
            stderr=sp.PIPE,
            text=True,
            encoding="utf-8",
        )

        if proc.returncode != 0:
            raise RuntimeError(
                f"WolvenKit CLI command failed with exit code: {proc.returncode}\n\n{proc.stderr}"
            )

        try:
            shutil.rmtree(modPath)
        except PermissionError:
            raise PermissionError(f"Permission denied when trying to remove: {modPath}")
        except OSError as e:
            raise OSError(f"Failed to remove file {modPath}: {e}")
        except Exception as e:
            raise e

        print("done!", flush=True)
    except Exception as e:
        raise e

    return


def scripts_bundle():
    print("Scripts bundling started", end=" ", flush=True)

    try:
        proc = sp.Popen(
            [RED_CLI, "bundle"],
            stdout=sp.PIPE,
            stderr=sp.PIPE,
            text=True,
            encoding="utf-8",
        )

        isFirstLine = True
        for line in proc.stdout:
            mode = re.search(r"^.*in \b(\w+)\b mode.*$", line)
            module = re.search(r"^.*module \b(\w+)\b .([1-9][0-9]* scripts.)$", line)

            if mode:
                print(f'in "{mode.group(1)}" mode!', flush=True)
            elif module:
                if isFirstLine:
                    isFirstLine = False
                else:
                    print("done!", end=" ", flush=True)

                print(f'Bundling module: "{module.group(1)}"...', end=" ", flush=True)

        error = proc.stderr.read()
        if error:
            raise RuntimeError(
                f"Red CLI command failed with exit code: {proc.returncode}\n\n{error}"
            )

        proc.wait()
        print("done!", flush=True)
    except Exception as e:
        raise e

    return


def pack_mod():
    print("Mod packing started!", flush=True)

    try:
        if not re.match(r"^[a-zA-Z0-9_\-\.]+$", MOD_NAME):
            raise ValueError(f"Invalid mod name: {MOD_NAME}")

        if not re.match(
            r"^(0|[1-9]\d*)\.(0|[1-9]\d*)\.(0|[1-9]\d*)(?:-((?:0|[1-9]\d*|"
            r"\d*[a-zA-Z-][0-9a-zA-Z-]*)(?:\.(?:0|[1-9]\d*|"
            r"\d*[a-zA-Z-][0-9a-zA-Z-]*))*))?(?:\+([0-9a-zA-Z-]+(?:\.[0-9a-zA-Z-]+)*))?$",
            VERSION,
        ):
            raise ValueError(f"Invalid mod version: {VERSION}")

        outputName = f"{MOD_NAME}-{VERSION}.zip"
        outputPath = Utils.normjoin(os.getcwd(), outputName)

        if os.path.exists(outputPath):
            try:
                os.remove(outputPath)
            except PermissionError:
                raise PermissionError(f"Permission denied when trying to remove: {outputPath}")
            except OSError as e:
                raise OSError(f"Failed to remove file {outputPath}: {e}")
            except Exception as e:
                raise e

        print(f"Creating mod archive: {outputName}...", end=" ", flush=True)

        with zipfile.ZipFile(outputPath, "w", zipfile.ZIP_DEFLATED) as zipFile:
            for root, _, files in os.walk(STAGE):
                for file in files:
                    if file == outputName:
                        continue
                    filePath = Utils.normjoin(root, file)
                    relPath = os.path.relpath(filePath, STAGE)
                    zipFile.write(filePath, relPath)

        print("done!", flush=True)
    except Exception as e:
        raise e

    return
