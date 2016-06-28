#!/bin/bash
BASEDIR=$(dirname "$0")
echo "$BASEDIR"
ln -s $BASEDIR/.vimrc $BASEDIR/.zshrc $HOME
