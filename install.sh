#!/bin/bash
SCRIPT=$(dirname $(realpath $0))
ln -s $SCRIPT/tmux.conf $HOME/.tmux.conf
ln -s $SCRIPT/vimrc     $HOME/.vimrc

if [ ! -f $HOME/.bashrc ]; then
    echo "No bashrc file found!";
    exit 1;
fi

echo "source $SCRIPT/bashrc"  >> $HOME/.bashrc
echo "source $SCRIPT/inputrc" >> $HOME/.bashrc
