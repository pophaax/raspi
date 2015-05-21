
    #      Aland Sailing Robot       #
    # RaspberryPi Management Scripts #
    #--------------------------------#
    # Make and run testsuite

    cd $INSTALLATION_PATH$/tests
        if "make test"
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

