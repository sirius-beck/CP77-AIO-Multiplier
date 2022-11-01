import json
from os import path, system

system('cls')

class build():
    def __init__(self) -> None:
        self.name = ''
        self.version = ''
        self.isRedmod = ''
    
    def run(self):
        if path.isfile('scripts/config.json'):
            self.name = self.setConfig('name')
            self.version = self.setConfig('version')
            self.isRedmod = self.setConfig('isRedmod')
        else:
            self.setConfig('create')
        
        self.pack()
    
    def setConfig(self, key):
        if key != 'create':
            with open('scripts/config.json', 'r') as file:
                config = json.load(file)
                name = config['name']
                version = config['version']
                isRedmod = config['isRedmod']
            
            if key == 'name':
                return name
            if key == 'version':
                return version
            if key == 'isRedmod':
                return isRedmod
        else:
            self.name = input('Mod name: ')
            while self.name == '':
                system('cls')
                self.name = input('Mod version (ex: 1.0.0): ')

            self.version = input('Mod version (ex: 1.0.0): ')
            while self.version == '':
                system('cls')
                print(f'Mod name: {self.name}')
                self.version = input('Mod version (ex: 1.0.0): ')

            self.isRedmod = input('Build for REDmod? [y]es / [n]o: ')
            if self.isRedmod == '':
                self.isRedmod = 'a'
            self.isRedmod = self.isRedmod[0].capitalize()

            while self.isRedmod != 'Y' and self.isRedmod != 'N':
                system('cls')
                print(f'Mod name: {self.name}')
                print(f'Mod version (ex: 1.0.0): {self.version}')
                self.isRedmod = input('Build for REDmod? [y]es / [n]o: ')
                if self.isRedmod == '':
                    self.isRedmod = 'a'
                self.isRedmod = self.isRedmod[0].capitalize()
            
            if self.isRedmod == 'Y':
                self.isRedmod = True
            elif self.isRedmod == 'N':
                self.isRedmod = False

            configData = {
                "name": self.name,
                "version": self.version,
                "isRedmod": self.isRedmod
            }
            
            with open('scripts/config.json', 'w') as file:
                json.dump(configData, file, indent=4)
    
    def pack(self):
        try:
            if path.exists('src/redscript'):
                system(f'xcopy /Y /D /S /I src\\redscript "build\\r6\\scripts\\{self.name}"')
            
            if path.exists('src/archivexl'):
                system(f'xcopy /Y /D /S /I src\\archivexl "build\\archive\\pc\\mod"')
            
            if self.isRedmod:
                if path.exists('src/archive'):
                    system(f'xcopy /Y /D /S /I src\\archive "build\\mods\\{self.name}\\archives\\{self.name}"')
                    system(f'wolvenkit.cli.exe pack "build\\mods\\{self.name}\\archives\\{self.name}"')
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
                    system(f'wolvenkit.cli.exe pack "build\\archive\\pc\\mod\\{self.name}"')
                    system(f'rmdir /Q /S "build\\archive\\pc\\mod\\{self.name}"')
            
            print(f'\n\nThe "{self.name}" project was packaged in the "build" folder. Press a key to exit...')
            system('pause >nul')
        except:
            print(f'\n\nError packaging the "{self.name}" project! Press a key to exit...')
            system('pause >nul')



if __name__ == '__main__':
    app = build()
    app.run()
