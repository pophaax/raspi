
    #      Aland Sailing Robot       #
    # RaspberryPi Management Scripts #
    #--------------------------------#
    # Make binaries
    
    source repos.sh
    
    cd $INSTALLATION_PATH/$SAILBOT_REPO_MAIN
    printf "$PI_SHELL_CLR_INFO\nBuilding main executable in $PI_SHELL_CLR_DIR$INSTALLATION_PATH/$SAILBOT_REPO_MAIN/$PI_SHELL_CLR_INFO\n"

    if "make"
    then
        printf "$PI_SHELL_CLR_OK"
        printf "OK\n"
    else
        printf "$PI_SHELL_CLR_ERR"
        printf "ERROR\n"
    fi

    # Return to menu
    cd $PI_SHELL_PATH
    ./menu.sh

