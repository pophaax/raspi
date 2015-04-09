
    # Aland Sailing Robot #
    # Sailbot test script

    #-----------------------------------------------------------
    
    source repos.sh
    
    run_test_if_ok()
    {
        if $1
        then
            printf "$PI_SHELL_CLR_OK"
            printf "Test created ok\n"
            ./test
        else
            printf "$PI_SHELL_CLR_ERR"
            printf "Test not found\n"
        fi
    }

    cd $INSTALLATION_PATH$SAILBOT_REPO_MAIN
    for MODULE in ${SAILBOT_REPO_MODULES[@]}
        do
            cd $MODULE
            printf "$PI_SHELL_CLR_INFO\nMaking tests for module $PI_SHELL_CLR_DIR$MODULE in $PI_SHELL_CLR_DIR$INSTALLATION_PATH$SAILBOT_REPO_MAIN/$MODULE/$PI_SHELL_CLR_INFO\n"
            run_test_if_ok "make test"
            cd ..
        done

    # Return to menu
    cd $PI_SHELL_PATH
    ./menu.sh

