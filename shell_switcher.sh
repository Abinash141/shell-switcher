#!/bin/bash

read -p "Type the shell you want to use: " shell_type

if [[ $shell_type == fish ]]
then
    chsh -s /usr/bin/fish
elif [[ $shell_type == bash ]]
then
    chsh -s /usr/bin/bash
else
    echo "Unsupported shell"
fi

read -p "you want to reboot: " reb

if [[ $reb == yes ]]
then
    sudo reboot
    
elif [[ $reb == no ]]
then
    echo "No reboot"
else
    echo "ok"
fi
