#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys
import os
import os.path
import subprocess

# Language dictionaries
LANGUAGES = {
    'en': {
        'menu_title': '****** MENU ******',
        'select_language': 'Select language/Seleccione idioma:\n1. English\n2. Español',
        'select_distro': 'Select your distribution:',
        'ubuntu_based': 'Ubuntu-based distributions:',
        'arch_based': 'Arch-based distributions:',
        'list_apps': 'List Apps',
        'update_system': 'Update System',
        'install_apps': 'Install Apps',
        'install_all': 'Install All Apps',
        'exit': 'Exit',
        'choose_option': 'Insert a number to choose an option: ',
        'invalid_option': 'Invalid option!',
        'enter_valid_number': 'Please enter a valid number!',
        'thanks': 'Thank you for using the installer!',
        'installing': 'Installing {}...',
        'install_complete': '{} installation completed!',
        'file_not_found': 'Installation file for {} not found!',
        'updating_system': 'Updating system...'
    },
    'es': {
        'menu_title': '****** MENÚ ******',
        'select_language': 'Select language/Seleccione idioma:\n1. English\n2. Español',
        'select_distro': 'Seleccione su distribución:',
        'ubuntu_based': 'Distribuciones basadas en Ubuntu:',
        'arch_based': 'Distribuciones basadas en Arch:',
        'list_apps': 'Listar Aplicaciones',
        'update_system': 'Actualizar Sistema',
        'install_apps': 'Instalar Aplicaciones',
        'install_all': 'Instalar Todas las Aplicaciones',
        'exit': 'Salir',
        'choose_option': 'Inserte un número para elegir una opción: ',
        'invalid_option': '¡Opción inválida!',
        'enter_valid_number': '¡Por favor, introduzca un número válido!',
        'thanks': '¡Gracias por usar el instalador!',
        'installing': 'Instalando {}...',
        'install_complete': '¡Instalación de {} completada!',
        'file_not_found': '¡Archivo de instalación para {} no encontrado!',
        'updating_system': 'Actualizando sistema...'
    }
}

class SystemManager:
    def __init__(self):
        self.language = 'en'
        self.distro_type = None
        self.package_manager = None

    def select_language(self):
        while True:
            print(LANGUAGES['en']['select_language'])
            try:
                choice = int(input(LANGUAGES['en']['choose_option']))
                if choice == 1:
                    self.language = 'en'
                    break
                elif choice == 2:
                    self.language = 'es'
                    break
            except ValueError:
                continue

    def select_distribution(self):
        texts = LANGUAGES[self.language]
        while True:
            print(f"\n{texts['select_distro']}")
            print(f"\n{texts['ubuntu_based']}")
            print("1. Ubuntu")
            print("2. Linux Mint")
            print("3. Pop!_OS")
            print("4. Elementary OS")
            print(f"\n{texts['arch_based']}")
            print("5. Arch Linux")
            print("6. Manjaro")
            print("7. EndeavourOS")
            
            try:
                choice = int(input(texts['choose_option']))
                if 1 <= choice <= 4:
                    self.distro_type = 'ubuntu'
                    self.package_manager = 'apt'
                    break
                elif 5 <= choice <= 7:
                    self.distro_type = 'arch'
                    self.package_manager = 'pacman'
                    break
            except ValueError:
                continue

def execute_commands(commands, package_manager):
    # Modify commands based on package manager
    if package_manager == 'pacman':
        cmd_map = {
            'apt update': 'pacman -Sy',
            'apt install': 'pacman -S',
            'apt-get': 'pacman',
            'add-apt-repository': 'pacman -S'
        }
        modified_commands = []
        for cmd in commands:
            for apt_cmd, pac_cmd in cmd_map.items():
                cmd = cmd.replace(apt_cmd, pac_cmd)
            modified_commands.append(cmd)
        commands = modified_commands

def install_app(app_name):
    app_file = f"/Users/oriol/dev/Kit-Unix/src/{app_name}.txt"
    if os.path.exists(app_file):
        with open(app_file, 'r') as f:
            commands = [line.strip() for line in f if line.strip()]
            print(f"Installing {app_name}...")
            execute_commands(commands)
            print(f"{app_name} installation completed!")
    else:
        print(f"Installation file for {app_name} not found!")

def menu():
    print('******MENU******')
    print('1. List Apps')
    print('2. Update System')
    print('3. Install Apps')
    print('4. Install All Apps')
    print('5. Exit')
    print()

def list_available_apps():
    apps = [
        "Discord", "Visual Studio", "qBitorrent", "Thunderbird",
        "Snapd", "Flatpak", "GIMP", "OpenShot", "LibreOffice",
        "Kazam", "VLC", "Kodi", "Firefox", "Chrome", "Spotify",
        "Steam", "Timeshift", "Synaptic", "Neofetch", "htop",
        "gparted", "VirtualBox", "Telegram", "Audacity", "OBS Studio",
        "FileZilla", "Inkscape", "Blender", "Wine"
    ]
    print("\nAvailable Applications:")
    for i, app in enumerate(apps, 1):
        print(f"{i}. {app}")
    print()

def main():
    system = SystemManager()
    system.select_language()
    system.select_distribution()
    
    # Continue with your existing menu logic, but use system.package_manager
    # for package management commands and LANGUAGES[system.language] for texts

if __name__ == "__main__":
    main()

print("Thank you for using the installer!")


















