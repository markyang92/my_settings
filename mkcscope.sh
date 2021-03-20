#!/bin/bash
rm -rf cscope.files file_list
find ./ -name "*.[ch]" > file_list
find ./ -name "*.cc" > file_list
find ./ -name "*.cpp" > file_list
find ./ -name "*.cl" > file_list

cscope -i file_list

#sudo mv ./mkcscope.sh /usr/bin
