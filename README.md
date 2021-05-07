# my_setting
It is just my setting and tools

## install.sh
Just run `./install.sh`, but Do not execute using 'sudo'

## cscope
If you want to use cscope,
```console
sudo cp ./mkcscope.sh /usr/bin

mkcscope.sh
```

## vim copy/paste
Vim will be installed in vim-gtk so that you can copy using `"+y` and paste using `"+p` in vim
but it isn't convenient.

so I set `set clipboard=unnamedplus` in vimrc
Therefrom, You can copy using just `y` and paste `p` in vim


## font
Install font file on Ubuntu

```bash
$ sudo cp fonts.ttf /usr/share/fonts/
$ sudo fc-cache -fv
```

In vscode, Set font `Menlo, Monaco, 'Courier New', monospace`


