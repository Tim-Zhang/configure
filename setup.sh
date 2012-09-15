#!/bin/bash
# Configure Setup

SCRIPT=$(readlink -f $0)
SCRIPTPATH=$(dirname $SCRIPT)
read -s -p "Enter User Password: " PASSWD
echo

# vim settings
echo $PASSWD|sudo -S apt-get install ctags
ln -sf $SCRIPTPATH/.vimrc ~/.vimrc
ln -sf $SCRIPTPATH/.vim ~/.vim
# bashrc
ln -sf $SCRIPTPATH/.bashrc ~/.bashrc
# hosts
echo $PASSWD|sudo -S ln -sf /home/tim/github/configure/hosts /etc/hosts
# zsh
echo $PASSWD|sudo -S apt-get install zsh
ln -sf $SCRIPTPATH/.zshrc ~/.zshrc
ln -sf $SCRIPTPATH/.oh-my-zsh ~/.oh-my-zsh
# ssh-config
if [ ! -d ~/.ssh ] ;then
   mkdir ~/.ssh
fi
ln -sf $SCRIPTPATH/.ssh/config ~/.ssh/config

