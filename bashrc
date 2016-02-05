#!/bin/bash
# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# load individual init files
if [[ -d ~/.bashrc.d ]]; then
  for file in $(/bin/ls ~/.bashrc.d/S*); do
    source "$file"
  done
fi

# load other stuff that hasn't yet been ported to individual init files

[[ -r /etc/bashrc ]] && . /etc/bashrc

# load RVM

# function for switching between multiple RVM installs -- useful for developing RVM
[[ -r $HOME/.rvm/scripts/functions/developer ]] && . $HOME/.rvm/scripts/functions/developer

[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s $HOME/.rvm/scripts/rvm ]] && . $HOME/.rvm/scripts/rvm

rvm use `rvm current 2> /dev/null` 2> /dev/null
