import sys
from typing import Optional
from .core import (
    archives_bundle,
    archives_pack,
    init,
    pack_mod,
    scripts_bundle,
    setup_config,
)


def main():
    args = sys.argv[1:]
    pack_mod_enabled: bool = False
    pack_only_enabled: bool = False
    config_path: Optional[str] = None

    while len(args) > 0:
        match args[0]:
            case "pack":
                pack_mod_enabled = True
                break
            case "bundle":
                pack_mod_enabled = False
                break
            case "--pack-only" | "-p":
                if "pack" not in args:
                    raise Exception(
                        '--pack-only flag is only available with the "pack" command'
                    )
                pack_only_enabled = True
                break
            case _:
                break
        args.pop(0)

    if pack_only_enabled:
        try:
            pack_mod()
        except Exception as e:
            raise e
    else:
        setup_config()
        init()
        archives_bundle()
        archives_pack()
        scripts_bundle()
        pack_mod()


if __name__ == "__main__":
    main()
