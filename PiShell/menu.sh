 
    #      Aland Sailing Robot       #
    # RaspberryPi Management Scripts #
    #--------------------------------#
    # Main menu
    
    printf "\n$PI_SHELL_CLR_ASK\nWhat do you want to do?\n$PI_SHELL_CLR_OPT"
    select option in "Install" "Update" "Test" "Build" "Deamon" "Quit"
    do
        case $option in
            "Install" ) ./install.sh; break;;
            "Update" ) ./update.sh; break;;
            "Test" ) ./test.sh; break;;
            "Build" ) ./build.sh; break;;
            "Deamon" ) ./deamon.sh; break;;
            "Quit" ) break;;
        esac
    done

    printf "$PI_SHELL_CLR_END\n"
