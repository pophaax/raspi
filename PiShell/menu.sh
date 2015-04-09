
    # Aland Sailing Robot #
    # PiShell menu
    
    printf "\n$PI_SHELL_CLR_ASK\nWhat do you want to do?\n$PI_SHELL_CLR_OPT"
    select option in "Install" "Update" "Test" "Build" "Quit"
    do
        case $option in
            "Install" ) ./install.sh; break;;
            "Update" ) ./update.sh; break;;
            "Test" ) ./test.sh; break;;
            "Build" ) ./build.sh; break;;
            "Quit" ) break;;
        esac
    done

    printf "$PI_SHELL_CLR_END\n"
