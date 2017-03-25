#!/bin/bash
SCRIPT=$(dirname $(realpath $0))
ln -s $SCRIPT/tmux.conf $HOME/.tmux.conf
ln -s $SCRIPT/vimrc     $HOME/.vimrc
