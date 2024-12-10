PYTHON			= C:\Users\sirius\AppData\Roaming\uv\python\cpython-3.13.1+freethreaded-windows-x86_64-none\python.exe
PYTHON_ARGS		= -m
CLI_TOOL		= packages.cli77
CLI_TOOL_ARGS	= pack
RED_CLI			= red


.PHONY: default
default: 
	@cls
	@$(PYTHON) $(PYTHON_ARGS) $(CLI_TOOL) $(CLI_TOOL_ARGS)
	@pwsh.exe -c "Remove-Item -Path .\out\r6 -Recurse -Force"

.PHONY: scripts
scripts:
	@cls
	@pwsh.exe -c "Remove-Item -Path .\out\*.zip -Force"
	@$(RED_CLI) pack --no-clean
	@pwsh.exe -c "Remove-Item -Path .\out\r6 -Recurse -Force"
