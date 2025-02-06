#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys
import os
import os.path
import subprocess

def execute_commands(commands):
    for cmd in commands:
        try:
            subprocess.run(cmd, shell=True, check=True)
        except subprocess.CalledProcessError as e:
            print(f"Error executing command: {cmd}")
            print(f"Error: {str(e)}")

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

opcionmenu = 0
menu()

while opcionmenu != 5:
    try:
        opcionmenu = int(input("Insert a number to choose an option: "))
        
        if opcionmenu == 1:
            list_available_apps()
            menu()
        
        elif opcionmenu == 2:
            print("Updating system...")
            execute_commands([
                "sudo apt update",
                "sudo apt upgrade -y"
            ])
            menu()
        
        elif opcionmenu == 3:
            list_available_apps()
            app_choice = input("Enter the name of the app to install (exactly as shown): ")
            install_app(app_choice)
            menu()
        
        elif opcionmenu == 4:
            print("Installing all available apps...")
            apps = ["LibreOffice", "Thunderbird", "GIMP", "OpenShot", 
                    "Kazam", "VLC", "Kodi", "Firefox", "Chrome", "Spotify",
                    "Steam", "Timeshift", "Synaptic", "Neofetch", "htop",
                    "gparted", "VirtualBox", "Telegram", "Audacity", "OBS Studio",
                    "FileZilla", "Inkscape", "Blender", "Wine"]
            for app in apps:
                install_app(app)
            menu()
        
        elif opcionmenu != 5:
            print("Invalid option!")
            menu()

    except ValueError:
        print("Please enter a valid number!")
        menu()

print("Thank you for using the installer!")


















