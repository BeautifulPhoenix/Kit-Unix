#! /bin/bash




until [ "$selection" = "0" ]; do
  clear
  echo ""
  echo "Select your Linux Distro:"
  echo " 1 -> Ubuntu Based"
  echo " 2 -> Arch "
  echo " 0 ->  Exit"
  echo ""
  echo -n "  Enter selection: "
  read selection
  echo ""
  case $selection in
    1 )  

    $Ubuntu= 0;
    clear
    echo "You Selected Ubuntu Based!"
    echo "1. Update System"
    echo "2. list apps"
    echo -n "  Enter selection: "
    read Ubuntu
    press_enter ;;

        case $Ubuntu in

        1)  echo "Updating system...."
             sudo apt update && sudo apt upgrad
    
        2) 
            echo "List of apps: "
            echo "APPS..."
            echo "Discord"
            echo "Google Chrome"
            echo "Visual Studio "
            echo " snap"
            echo " flatpak"







    2 ) clear ; menu_option_two ; press_enter ;;
    0 ) clear ; exit ;;
    * ) clear ; incorrect_selection ; press_enter ;;
  esac
done


menu_option_one(){



    menu_option_one(){
        sudo apt update && sudo apt upgrade



    }

    menu_option_two(){


    }



}

menu_option_two(){
    echo "You Selected Arch Based!"
}