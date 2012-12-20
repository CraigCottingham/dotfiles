#!/bin/bash
# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# load individual init files
if [[ -d ~/.bashrc.d ]]; then
  for file in $(/bin/ls ~/.bashrc.d/S*); do
    # echo "loading $file"
    . "$file"
  done
fi

# load other stuff that hasn't yet been ported to individual init files

if [[ -f /etc/bashrc ]]; then
  . /etc/bashrc
fi

# can't be in a sub-init, because that's in a subshell?
if [[ "$PS1" ]]; then
  PS1='\u@\h:\w\$ '
fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting