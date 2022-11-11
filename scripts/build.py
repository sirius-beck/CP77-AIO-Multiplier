import json
from os import path, system
from time import sleep

system('cls')

class ModManager():
    def __init__(self) -> None:
        self.name = ''
        self.version = ''
        self.isRedmod = ''
        self.bundleFile = ''
        # self.wolvenkitCLI = ''
        # self.redscriptCLI = ''
    
    def run(self):
        system('cls')
        if path.isfile('scripts/mod_config.json'):
            self.name = self.setConfig('name')
            self.version = self.setConfig('version')
            self.isRedmod = self.setConfig('isRedmod')
            self.bundleFile = self.setConfig('bundleFile')
            # self.wolvenkitCLI = self.setConfig('wolvenkitCLI')
            # self.redscriptCLI = self.setConfig('redscriptCLI')
        else:
            self.setConfig('create')
        
        # self.menu()
    
    def menu(self):
        system('cls')
        print('| MOD MANAGER')
        print('|- 1. New project')
        print('|- 2. Edit project')
        print('|- 3. Pack mod')
        print('|- 4. Pack mod and exit')
        print('|- 5. Check redscript files')
        print('|- 6. Open project folder')
        print('|- 7. Open source folder')
        print('|- 8. Open build folder')
        print('|- 9. Exit')
        option = int(input('|\n|- Enter the desired option number: '))

        if option == 1:
            print('\nComing soon...\nUse option 3 or 4 to package the mod.')
            sleep(2)
            self.menu()
        if option == 2:
            print('\nComing soon...\nChange current settings to mod by editing "mod_config.json" file.')
            sleep(2)
            self.menu()
        elif option == 3:
            self.run()
            self.pack(0)
        elif option == 4:
            self.run()
            self.pack(1)
        elif option == 5:
            self.run()
            self.lintRedsFiles()
        elif option == 6:
            system('explorer %CD%')
            self.menu()
        elif option == 7:
            system('explorer %CD%\\src')
            self.menu()
        elif option == 8:
            if path.exists('./build'):
                system('explorer %CD%\\build')
            else:
                print('\n\nDirectory does not exist, package your project first!')
            self.menu()
        else:
            exit()
    
    def setConfig(self, key):
        system('cls')
        if key != 'create':
            with open('scripts/mod_config.json', 'r') as file:
                config = json.load(file)
                name = config['name']
                version = config['version']
                isRedmod = config['isRedmod']
                bundleFile = config['externals']['bundleFile']
                # wolvenkitCLI = config['externals']['wolvenkitCLI']
                # redscriptCLI = config['externals']['redscriptCLI']
            
            if key == 'name':
                return name
            if key == 'version':
                return version
            if key == 'isRedmod':
                return isRedmod
            if key == 'bundleFile':
                return bundleFile
            # if key == 'wolvenkitCLI':
            #     return wolvenkitCLI
            # if key == 'redscriptCLI':
            #     return redscriptCLI
        else:
            print('| MOD DETAILS')
            self.name = input('|- Mod name: ')
            while self.name == '':
                system('cls')
                print('| MOD DETAILS')
                self.name = input('|- Mod version (ex: 1.0.0): ')

            self.version = input('|- Mod version (ex: 1.0.0): ')
            while self.version == '':
                system('cls')
                print('| MOD DETAILS')
                print(f'|- Mod name: {self.name}')
                self.version = input('|- Mod version (ex: 1.0.0): ')

            isRedmod = input('|- Build for REDmod? [y]es / [n]o: ')
            if isRedmod == '':
                isRedmod = 'a'
            isRedmod = isRedmod[0].capitalize()

            while isRedmod != 'Y' and isRedmod != 'N':
                system('cls')
                print('| MOD DETAILS')
                print(f'|- Mod name: {self.name}')
                print(f'|- Mod version (ex: 1.0.0): {self.version}')
                isRedmod = input('>> Build for REDmod? [y]es / [n]o: ')
                if isRedmod == '':
                    isRedmod = 'a'
                isRedmod = isRedmod[0].capitalize()
            
            if isRedmod == 'Y':
                self.isRedmod = True
            elif isRedmod == 'N':
                self.isRedmod = False
            
            bundleFilePath = input('|- Dir containing the "final.redscripts" file: ')
            self.bundleFile = path.join(bundleFilePath, 'final.redscripts').replace('/', '\\')
            while path.isfile(self.bundleFile) == False:
                system('cls')
                print('| MOD DETAILS')
                print(f'|- Mod name: {self.name}')
                print(f'|- Mod version (ex: 1.0.0): {self.version}')
                print(f'|- Build for REDmod? [y]es / [n]o: {isRedmod}')
                print('\n| EXTERNAL FILES')
                bundleFilePath = input('|- Dir containing the "final.redscripts" file: ')
                self.bundleFile = path.join(bundleFilePath, 'final.redscripts').replace('/', '\\')
            
            # wolvenkitCLIPath = input('|- Dir containing the "WolvenKit.CLI.exe" file: ')
            # self.wolvenkitCLI = path.join(wolvenkitCLIPath, 'WolvenKit.CLI.exe').replace('/', '\\')
            # while path.isfile(self.wolvenkitCLI) == False:
            #     system('cls')
            #     print('| MOD DETAILS')
            #     print(f'|- Mod name: {self.name}')
            #     print(f'|- Mod version (ex: 1.0.0): {self.version}')
            #     print(f'|- Build for REDmod? [y]es / [n]o: {isRedmod}')
            #     print('\n| EXTERNAL FILES')
            #     print(f'|- Dir containing the "final.redscripts" file: {bundleFilePath}')
            #     wolvenkitCLIPath = input('|- Dir containing the "WolvenKit.CLI.exe" file: ')
            #     self.wolvenkitCLI = path.join(wolvenkitCLIPath, 'WolvenKit.CLI.exe').replace('/', '\\')

            # redscriptCLIPath = input('|- Dir containing the "redscript-cli.exe" file: ')
            # self.redscriptCLI = path.join(redscriptCLIPath, 'redscript-cli.exe').replace('/', '\\')
            # while path.isfile(self.redscriptCLI) == False:
            #     system('cls')
            #     print('| MOD DETAILS')
            #     print(f'|- Mod name: {self.name}')
            #     print(f'|- Mod version (ex: 1.0.0): {self.version}')
            #     print(f'|- Build for REDmod? [y]es / [n]o: {isRedmod}')
            #     print('\n| EXTERNAL FILES')
            #     print(f'|- Dir containing the "final.redscripts" file: {bundleFilePath}')
            #     print(f'|- Dir containing the "WolvenKit.CLI.exe" file: {wolvenkitCLIPath}')
            #     redscriptCLIPath = input('|- Dir containing the "redscript-cli.exe" file: ')
            #     self.redscriptCLI = path.join(redscriptCLIPath, 'redscript-cli.exe').replace('/', '\\')

            configData = {
                "name": self.name,
                "version": self.version,
                "isRedmod": self.isRedmod,
                "externals": {
                    "bundleFile": self.bundleFile
                    # "wolvenkitCLI": self.wolvenkitCLI,
                    # "redscriptCLI": self.redscriptCLI
                }
            }
            
            with open('scripts/mod_config.json', 'w') as file:
                json.dump(configData, file, indent=4)
    
    def pack(self, mode):
        system('cls')
        if path.exists('src/redscript'):
            i = 0
            logFile = f'{self.name}_[{str(i)}].log'
            while path.isfile(f'scripts/log/{logFile}'):
                i += 1
                logFile = f'{self.name}_[{str(i)}].log'

            if path.exists('scripts/log') == False:
                system('mkdir "scripts\\log"')
            system(f'redscript-cli.exe lint -s "src\\redscript" -b "{self.bundleFile}" >> "scripts\\log\\{logFile}"')
            system(f'redscript-cli.exe lint -s "src\\redscript" -b "{self.bundleFile}"')
            
            with open(f'scripts\\log\\{logFile}', 'r') as file:
                log = file.read()
            if 'ERROR' in log:
                if mode == 0:
                    print('\n\n>> There are errors in one of your .reds files, correct them and try again later! Press a key to return to the main menu...')
                    system('pause >nul')
                    self.menu()
                else:
                    print('\n\n>> There are errors in one of your .reds files, correct them and try again later! Press a key to exit...')
                    system('pause >nul')
                    exit()
            else:
                system(f'xcopy /Y /D /S /I src\\redscript "build\\r6\\scripts\\{self.name}"')
                system('rmdir /Q /S scripts\\log')
        
        if self.isRedmod:
            if path.exists('src/archive'):
                system(f'xcopy /Y /D /S /I src\\archive "build\\mods\\{self.name}\\archives\\{self.name}"')
                system(f'WolvenKit.CLI.exe cr2w "build\\mods\\{self.name}\\archives\\{self.name}" -d')
                system(f'del /F /S /Q "build\\mods\\{self.name}\\archives\\{self.name}\\*.json.json"')
                system(f'WolvenKit.CLI.exe pack "build\\mods\\{self.name}\\archives\\{self.name}"')
                system(f'rmdir /Q /S "build\\mods\\{self.name}\\archives\\{self.name}"')

                infoData = {
                    "name": self.name,
                    "version": self.version,
                    "customSounds": []
                }

                with open(f'build/mods/{self.name}/info.json', 'w') as file:
                    json.dump(infoData, file, indent=4)
        else:
            if path.exists('src/archive'):
                system(f'xcopy /Y /D /S /I src\\archive "build\\archive\\pc\\mod\\{self.name}"')
                system(f'WolvenKit.CLI.exe cr2w "build\\archive\\pc\\mod\\{self.name}" -d')
                system(f'del /F /S /Q "build\\archive\\pc\\mod\\{self.name}\\*.json.json"')
                system(f'WolvenKit.CLI.exe pack "build\\archive\\pc\\mod\\{self.name}"')
                system(f'rmdir /Q /S "build\\archive\\pc\\mod\\{self.name}"')
        
        if path.exists('src/archivexl'):
            system(f'xcopy /Y /D /S /I src\\archivexl "build\\archive\\pc\\mod"')
        
        if mode == 0:
            print(f'\n\n>> The "{self.name}" project was packaged in the "build" folder. Press a key to return to the main menu...')
            system('pause >nul')
            self.menu()
        else:
            print(f'\n\n>> The "{self.name}" project was packaged in the "build" folder. Press a key to exit...')
            system('pause >nul')
            exit()
    
    def lintRedsFiles(self):
        system('cls')
        system(f'redscript-cli.exe lint -s "src\\redscripts" -b "{self.bundleFile}"')
        print(f'\n\n>> Press a key to return to the main menu...')
        system('pause >nul')
        self.menu()




if __name__ == '__main__':
    app = ModManager()
    app.menu()
