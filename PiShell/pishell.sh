  
    #      Aland Sailing Robot       #
    # RaspberryPi Management Scripts #
    #--------------------------------#
    # Main script

    # Config script
    source $PI_SHELL_PATH/config.sh
    
    # Show welcome message
    printf "\n$PI_SHELL_CLR_HEAD"
    printf "\n     *****************************************************"
    printf "\n     *                                                   *"
    printf "\n     *           .:          .:: ::    .:::::::          *"
    printf "\n     *          .: ::      .::    .::   ::    .::        *"
    printf "\n     *         .:  .::      .::         ::    .::        *"
    printf "\n     *        .::   .::       .::       : .::            *"
    printf "\n     *       .:::::: .::         .::    ::  .::          *"
    printf "\n     *      .::       .::  .::    .::   ::    .::        *"
    printf "\n     *     .::         .::   .:: ::    .::      .::      *"
    printf "\n     *                                                   *"
    printf "\n     *                 Aland Sailing Robot               *"
    printf "\n     *                  RaspberryPi Shell                *"
    printf "\n     *****************************************************"
    printf "$PI_SHELL_CLR_INFO"
    
    # Launch menu
    cd $PI_SHELL_PATH
    ./menu.sh
