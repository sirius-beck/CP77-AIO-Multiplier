PYTHON					= C:\Users\sirius\AppData\Roaming\uv\python\cpython-3.13.1+freethreaded-windows-x86_64-none\python.exe
PYTHON_ARGS				= -m
CLI_TOOL				= packages.cli77
CLI_TOOL_ARGS			= pack --copy-scripts
CLI_TOOL_ARGS_PACK_ONLY	= pack --copy-scripts --pack-only
RED_CLI					= red


default: 
	@cls
	@$(PYTHON) $(PYTHON_ARGS) $(CLI_TOOL) $(CLI_TOOL_ARGS)


pack-only:
	@cls
	@$(PYTHON) $(PYTHON_ARGS) $(CLI_TOOL) $(CLI_TOOL_ARGS_PACK_ONLY)


po: pack-only


.PHONY: default pack-only
