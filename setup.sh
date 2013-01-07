#!/bin/bash
# Configure Setup

SCRIPT=$(readlink -f $0)
SCRIPTPATH=$(dirname $SCRIPT)
read -s -p "Enter User Password: " PASSWD
echo

# vim settings
echo $PASSWD|sudo -S apt-get install ctags
if [ -e ~/.vim ] ;then
   rm ~/.vim -r
fi
ln -sf $SCRIPTPATH/.vimrc ~/.vimrc
ln -s $SCRIPTPATH/.vim ~/.vim
# bashrc
ln -sf $SCRIPTPATH/.bashrc ~/.bashrc
# hosts
echo $PASSWD|sudo -S ln -sf $SCRIPTPATH/hosts /etc/hosts
# jshint
ln -sf $SCRIPTPATH/.jshintrc ~/.jshintrc
# git config
ln -sf $SCRIPTPATH/.gitconfig ~/.gitconfig

# zsh
echo $PASSWD|sudo -S apt-get install zsh
if [ -e ~/.oh-my-zsh ] ;then
   rm ~/.oh-my-zsh -r
fi
ln -sf $SCRIPTPATH/.zshrc ~/.zshrc
ln -s $SCRIPTPATH/.oh-my-zsh ~/.oh-my-zsh
# ssh-config
if [ ! -d ~/.ssh ] ;then
   mkdir ~/.ssh
fi
ln -sf $SCRIPTPATH/.ssh/config ~/.ssh/config
# i3
if [ -e ~/.i3 ] ;then
   rm ~/.i3 -r
fi
ln -s $SCRIPTPATH/.i3 ~/.i3

