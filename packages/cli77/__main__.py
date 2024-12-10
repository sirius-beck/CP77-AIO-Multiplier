import sys
from typing import Optional
from .core import (
    archives_bundle,
    archives_convert,
    init,
    pack_mod,
    scripts_bundle,
    setup_config,
)


def main():
    args = sys.argv[1:]
    commands_set = {"pack", "bundle", "--pack-only", "-p", "--copy-scripts", "-c", "--no-clean-scripts", "-ncs"}
    config_path: Optional[str] = next((arg for arg in args if arg not in commands_set), None)
    pack_mod_enabled = "pack" in args
    pack_only_enabled = "--pack-only" in args or "-p" in args
    scripts_bundle_method = "copy" if "--copy-scripts" in args or "-c" in args else "bundle"
    clear_r6_output_after_pack = False if "--no-clean-scripts" in args or "-ncs" in args else True

    if pack_only_enabled and not pack_mod_enabled:
        raise ValueError('--pack-only flag is only available with the "pack" command')

    setup_config(config_path)
    init(not pack_only_enabled)

    if pack_only_enabled:
        if (scripts_bundle_method == "copy"):
            scripts_bundle("copy")
        pack_mod(clear_r6_output_after_pack)
        exit()

    archives_bundle()
    archives_convert()
    scripts_bundle(scripts_bundle_method)

    if pack_mod_enabled:
        pack_mod(clear_r6_output_after_pack)


if __name__ == "__main__":
    main()
