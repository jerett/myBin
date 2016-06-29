#!/bin/sh
BASEDIR=$(cd `dirname $0`; pwd)
echo $BASEDIR
ln -s $BASEDIR/.vimrc $BASEDIR/.zshrc $HOME
