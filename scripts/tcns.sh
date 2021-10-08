#!/bin/sh

if [ $TMUX ]
then
  tmux detach
fi

tmux new-session -c `pwd` -s ${PWD##*/}

