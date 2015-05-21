
    #      Aland Sailing Robot       #
    # RaspberryPi Management Scripts #
    #--------------------------------#
    # Make and run testsuite

    source repos.sh

    printf "$PI_SHELL_CLR_INFO\nCreating test suite in $PI_SHELL_CLR_DIR$INSTALLATION_PATH/$SAILBOT_REPO_MAIN/tests$PI_SHELL_CLR_INFO\n"
    cd $INSTALLATION_PATH/$SAILBOT_REPO_MAIN/tests
        if "make"
        then
            printf "$PI_SHELL_CLR_OK"
            printf "Test created ok executing...\n"
            ./mtestsuite
        else
            printf "$PI_SHELL_CLR_ERR"
            printf "Error creating tests!\n"
        fi

    # Return to menu
    cd $PI_SHELL_PATH
    ./menu.sh

