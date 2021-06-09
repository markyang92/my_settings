#!/bin/bash

if [ ! -d ${HOME}/.config/Code ]; then
	echo "[Erorr] ${HOME}/.config/Code Directory isn't exist"
	exit 1
fi

if [ -f ${HOME}/.config/Code/User/settings.json ]; then
	cp ${HOME}/.config/Code/User/settings.json ./
	if [ $? -eq 0 ]; then
		echo "Copy from existing settings.json"
	fi
fi

if [ -f ${HOME}/.config/Code/User/keybindings.json ]; then
	cp ${HOME}/.config/Code/User/keybindings.json ./
	if [ $? -eq 0 ]; then
		echo "Copy from existing keybindings.json"
	fi
fi
