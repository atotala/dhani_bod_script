#!/bin/bash
source ./COMN_FUNC/common_func.sh
bodx_menu()
{
    print_banner "Start Menu"
    echo "1) Start All Aggregator."
    echo "2) Stop All Aggregator."
    echo "3) Restart All Aggregator"
    echo "4) Start MFEED Binary"
    echo "5) Monitoring Menu"
    echo "6) Exit"
    read -p "Type the option you select:" choice

    if [ "$choice" -eq "$choice" 2>> `pwd`/errors ]; then
        if [ $choice -lt 1 -o $choice -gt 6 ]; then
            echo "Enter Option Between 1 and 6"
        elif [ $choice -eq 1 ]; then
            exec ./mon.sh
        elif [ $choice -eq 2 ]; then
            stop_allx_agtr
        elif [ $choice -eq 3 ]; then
            rstr_allx_agtr
        elif [ $choice -eq 4 ]; then
            strt_mfed_bnry
        elif [ $choice -eq 5 ]; then
            exec ./MNTR_MENU/mon.sh
        elif [ $choice -eq 6 ]; then
            clear
        fi
    else
        echo "Enter correct value"
        bodx_menu
    fi
}