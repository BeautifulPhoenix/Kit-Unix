#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys
import os
import os.path
import subprocess


 
def menu():
    print('******MENU******')
    print('1. List Apps')
    print('2.- Update System')
    print('3.- ')
    print('4.- ')
    print('5.- ')
    print('6.- Salir')
    print()
 
def menu2():
    print('a.-')
    print('b.-')
    print('c.-')
 
def menu3():
    print(" ")
    print('1.-')
    print('2.- ')
 
opcionmenu = 0
menu()
x=0
while opcionmenu != 6:
    opcionmenu = int(input("Inserta un numero para elegir una opcion: "))
    if opcionmenu == 1:
        print('''
        - Disocrd
        - Visual Studio 
        - qBitorrent
        - Thunderbird
        - Snapd
        - Flatpak
        - GIMP
        - OpenShot
        - LibreOffice
        - Kazam
        - VLC
        - Kodi

         
        ''')
        
        menu()
 
 
    elif opcionmenu == 2:
        
        menu()
 
    elif opcionmenu == 3:
        
        menu2()
        
        
            
        menu()
    elif opcionmenu == 4:
        menu3()
        opcionmenu3 = input("Inserta un numero para elegir una opcion: ")
        if opcionmenu3=="1":
            

            menu()
        menu()
 
    elif opcionmenu == 5:
 
        
        menu()
 
 
    elif opcionmenu != 6:
        menu()


















