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

    clear
    echo "You Selected Ubuntu Based!"
    echo "1. Update System"
    echo "2. list apps"
    echo -n "  Enter selection: "
    read Ubuntu
    echo ""
    if [$Ubuntu = 1]

      then 
             echo "Updating system...."
             sudo apt update && sudo apt upgrad

      read Ubuntu
    
  fi
  date




    press_enter ;;



      






    2 ) clear ; menu_option_two ; press_enter ;;
    0 ) clear ; exit ;;
    * ) clear ; incorrect_selection ; press_enter ;;
  esac
done


menu_option_one(){

          echo "Updating system...."
             sudo apt update && sudo apt upgrad
    
         


    menu_option_one(){
        sudo apt update && sudo apt upgrade



    }

    menu_option_two(){

            echo "List of apps: "
            echo "APPS..."
            echo "Discord"
            echo "Google Chrome"
            echo "Visual Studio "
            echo " snap"
            echo " flatpak"
    }



}

menu_option_two(){
    echo "You Selected Arch Based!"
}