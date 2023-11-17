#!/bin/sh
# BASEDIR=$(cd `dirname $0`; pwd)
# echo $BASEDIR
# ln -s $BASEDIR/.vimrc $BASEDIR/.zshrc $BASEDIR/.ideavimrc $BASEDIR/.tmux.conf $HOME

sh config_tmux.sh
sh config_zsh.sh
sh config_vim.sh   # you need to enter vim, and 
