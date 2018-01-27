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

# load private init files
if [[ -d ~/.bashrc.d-private ]]; then
  for file in $(/bin/ls ~/.bashrc.d-private/S*); do
    source "$file"
  done
fi

# load other stuff that hasn't yet been ported to individual init files?

[[ -r /etc/bashrc ]] && . /etc/bashrc

## Kill Spring. Kill it with fire!
export DISABLE_SPRING=1
