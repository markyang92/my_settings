# my_setting
It is just my setting and tools

## install.sh
Just run `./install.sh`

## cscope
If you want to use cscope,
```console
sudo cp ./mkcscope.sh /usr/bin

mkcscope.sh
```

## Under the description is useful to copy & paste using Tmux on MacOS.
1. `brew install reattach-to-user-namespace`        <-- Enter it in your MacOS terminal
2. Activate under command in ~/.tmux.conf
```bash
set -g default-command "reattach-to-user-namespace -l $SHELL"
```
3. Insert under the command in settings.json on VSCode.
```js
"terminal.integrated.macOptionClickForcesSelection": true
```

5. Copy the line you want to copy with the opt buttton pressed. and cmd+c (copy) / cmd+v (paste)
