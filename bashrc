#!/bin/bash
# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# load individual init files
if [[ -d ~/.bashrc.d ]]; then
  for file in $(/bin/ls ~/.bashrc.d/S*); do
    # echo "loading $file"
    source "$file"
  done
fi

# load other stuff that hasn't yet been ported to individual init files

if [[ -f /etc/bashrc ]]; then
  source /etc/bashrc
fi

# can't be in a sub-init, because that's in a subshell?
if [[ "$PS1" ]]; then
  PS1='\u@\h:\w\$ '
fi

# load RVM

# function for switching between multiple RVM installs -- useful for developing RVM
if [[ -s $HOME/.rvm/scripts/functions/developer ]]; then
  source $HOME/.rvm/scripts/functions/developer
fi

# bash autocompletion for rvm
# complete -C $rvm_scripts_path/rvm-completion.rb -o default rvm
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

rvm use `rvm current 2> /dev/null` 2> /dev/null

## load direnv
#eval "$(direnv hook $0)"
