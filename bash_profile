#!/bin/bash
# ~/.bash_profile: executed by bash(1) for login shells.

if [[ -f $HOME/.bashrc ]]; then
    . $HOME/.bashrc
fi

# load RVM

# function for switching between multiple RVM installs -- useful for developing RVM
if [[ -s $HOME/.rvm/scripts/functions/developer ]]; then
    . $HOME/.rvm/scripts/functions/developer
fi

# bash autocompletion for rvm
complete -C $rvm_scripts_path/rvm-completion.rb -o default rvm

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"