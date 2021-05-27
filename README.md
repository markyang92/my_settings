# my_setting
It is just my setting for Ubuntu GNU/Linux

## install.sh
Just run `./install.sh`, but Do not execute using 'sudo'

## cscope
If you want to use cscope,
```console
sudo cp ./mkcscope.sh /usr/bin

mkcscope.sh
```

# Feature

## vim copy/paste using system clipboard
Vim will be installed in vim-gtk so that you can copy using `"+y` and paste using `"+p` in vim
but it isn't convenient.

so I set `set clipboard=unnamedplus` in vimrc
Therefrom, You can copy using just `y` and paste `p` in vim(Vim clipboard = System Clipboard)

## xclip
Tmux is very useful terminal program.
But It use own clipboard.
So, It isn't easy to make sense How to Copy and Paste with Tmux Buffer and System Buffer
### Tmux copy data to System Buffer
1. Copy In Tmux. It will pass to Tmux buffer
2. in Terminal `tmux show-buffer | xclip -sel clipboard` command will pass that from Tmux buffer to System Clipboard
3. You can paste using `Ctrl + v`


## font
I love using Menlo font

```bash
$ sudo cp Menlo-Regular.ttf /usr/share/fonts/truetype/Menlo
$ sudo fc-cache -fv
```

In vscode, Set font `Menlo, Monaco, 'Courier New', monospace`


