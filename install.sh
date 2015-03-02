#!/bin/bash
Path=$(pwd)
mkdir ~/.entorickBak/
mv ~/.vimrc ~/.entorickBak/
mv ~/.vim ~/.entorickBak/
mv ~/.ctags ~/.entorickBak/

ln -s ${Path}/vimrc ~/.vimrc
ln -s ${Path}/vim ~/.vim
ln -s ${Path}/ctags ~/.ctags
