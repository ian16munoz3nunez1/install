#!/bin/bash

curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

git clone git@github.com:ian16munoz3nunez1/data

mv ./data/.vimrc $HOME

rd data

