#!/bin/bash

while true
do
    echo "----- Command Piping Demo -----"
    echo "1. Count files in directory"
    echo "2. Search running process"
    echo "3. Show largest files"
    echo "4. Exit"

    read -p "Enter choice: " ch

    case $ch in
        1)
            ls | wc -l
            ;;
        2)
            read -p "Enter process name: " pname
            ps -ef | grep $pname
            ;;
        3)
            du -ah . | sort -rh | head -5
            ;;
        4)
            exit
            ;;
        *)
            echo "Invalid choice"
            ;;
    esac
done

