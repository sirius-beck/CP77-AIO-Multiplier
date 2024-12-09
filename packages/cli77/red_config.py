from typing import Optional, TypedDict


class Archives(TypedDict):
    """Archive configuration for different mod types"""

    archivexl: str
    """Path to archive.xl file, relative to project root"""

    raw: str
    """Path to raw archives folder, relative to project root"""


class Plugin(TypedDict):
    """RED4ext plugin configuration"""

    debug: str
    """Relative path to Debug build output of RED4ext plugin"""

    release: str
    """Relative path to Release build output of RED4ext plugin"""


class Cet(TypedDict):
    """Cyber Engine Tweaks configuration"""

    src: str
    """Relative path to .lua script files"""

    output: Optional[str] = None
    """Relative path for CET mod installation in game directory"""


class Redscript(TypedDict):
    """Redscript-specific configuration"""

    src: str
    """Relative path to .reds script files"""

    debounceTime: Optional[float] = None
    """Debounce time between type checks for hot reload (milliseconds)"""

    output: Optional[str] = None
    """Relative path for redscript installation in game directory"""


class Scripts(TypedDict):
    """Script configuration for different mod types"""

    cet: Optional[Cet] = None
    """Cyber Engine Tweaks configuration"""

    redscript: Optional[Redscript] = None
    """Redscript-specific configuration"""


class Tools(TypedDict):
    """Configuration for different ci tools"""

    redCLI: Optional[str] = None
    """Path to red-cli executable (can be relative to project root, absolute, environment
    variable or the name of an executable in PATH)
    """
    wolvenkitCLI: Optional[str] = None
    """Path to wolvenkit-cli executable (can be relative to project root, absolute, environment
    variable or the name of an executable in PATH)
    """


class RedConfig(TypedDict):
    """Configuration schema for the Red CLI tool"""

    name: str
    """Name of your mod. Used as folder name in installation paths"""

    archives: Optional[Archives] = None
    """Archive configuration for different mod types"""

    game: Optional[str] = None
    """Absolute path to Cyberpunk 2077 directory. Leave empty for auto-detection"""

    license: Optional[bool] = None
    """Whether to include LICENSE file when packing a release"""

    plugin: Optional[Plugin] = None
    """RED4ext plugin configuration"""

    scripts: Optional[Scripts] = None
    """Script configuration for different mod types"""

    stage: Optional[str] = None
    """Relative path for temporary script bundling output"""

    tools: Optional[Tools] = None
    """Configuration for different ci tools"""

    version: Optional[str] = None
    """Version of your mod using semver format"""

    watchTime: Optional[float] = None
    """Total time recorded when using watch command (in milliseconds)"""
