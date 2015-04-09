
    # Aland Sailing Robot #
    # Sailbot repository update script #

    #-------------------------------------------------------------
    
    source repos.sh

    print_result()
    {
        if $1
        then
            printf "$PI_SHELL_CLR_OK"
            printf "Success\n"
        else
            printf "$PI_SHELL_CLR_ERR"
            printf "Failed\n"
        fi
    }

    cd $INSTALLATION_PATH$SAILBOT_REPO_MAIN
    printf "$PI_SHELL_CLR_INFO\nUpdating project $SAILBOT_REPO_MAIN in $PI_SHELL_CLR_DIR$INSTALLATION_PATH$SAILBOT_REPO_MAIN/$PI_SHELL_CLR_INFO\n"
    print_result "git pull"

    for MODULE in ${SAILBOT_REPO_MODULES[@]}
    do
        cd $MODULE
        printf "$PI_SHELL_CLR_INFO\nUpdating module $MODULE in $PI_SHELL_CLR_DIR$INSTALLATION_PATH$SAILBOT_REPO_MAIN/$MODULE/$PI_SHELL_CLR_INFO\n"
        print_result "git pull"
        cd ..
    done

    printf "$PI_SHELL_CLR_HEAD\n"
        
    # Return to menu
    cd $PI_SHELL_PATH
    ./menu.sh
