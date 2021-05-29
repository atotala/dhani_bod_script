#!/bin/bash
source ./COMN_FUNC/common_func.sh
monx_menu()
{
    print_banner "Monitring Menu"

    echo "1) Check CPU Utilization"
    echo "2) Check Disk Space."
    echo "3) Check N/W Connectivity"
    echo "4) Previous Menu"
    echo "5) Exit"
    read -p "Type the option you select:" choice

    if [ "$choice" -eq "$choice" 2>> `pwd`/errors ]; then
        if [ $choice -lt 1 -o $choice -gt 5 ]; then
            echo "Enter Option Between 1 and 5"
        elif [ $choice -eq 1 ]; then
            exec ./MNTR_MENU/mon.sh
        elif [ $choice -eq 2 ]; then
            stop_allx_agtr
        elif [ $choice -eq 3 ]; then
            rstr_allx_agtr
        elif [ $choice -eq 4 ]; then
            exec ./start.sh
        elif [ $choice -eq 5 ]; then
            clear
        fi
    else
        monx_menu
    fi
}