#!/bin/bash
# ~/.bash_profile: executed by bash(1) for login shells.

if [[ -f $HOME/.bashrc ]]; then
    . $HOME/.bashrc
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
