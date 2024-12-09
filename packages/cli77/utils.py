import os


def normjoin(*args: str) -> str:
    return os.path.normpath(os.path.join(*args))
