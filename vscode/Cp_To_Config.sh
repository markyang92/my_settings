#!/bin/bash

if [ ! -d ${HOME}/.config/Code ]; then
	echo "[Erorr] ${HOME}/.config/Code Directory isn't exist"
	exit 1
else
	cp ${PWD}/settings.json ${HOME}/.config/Code/User/settings.json
	cp ${PWD}/keybindings.json ${HOME}/.config/Code/User/keybindings.json
fi
