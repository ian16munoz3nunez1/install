#!/bin/bash

curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mv ./.vimrc $HOME

vim +PlugInstall +qall

sudo cp search /usr/bin/

