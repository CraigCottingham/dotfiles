#!/bin/bash
# ~/.bash_profile: executed by bash(1) for login shells.

if [[ -f /etc/bash_profile ]]; then
  source /etc/bash_profile
fi

if [[ -f $HOME/.profile ]]; then
  source $HOME/.profile
fi

# case $- in *i*) . ~/.bashrc;; esac

if [[ -f $HOME/.bashrc ]]; then
  source $HOME/.bashrc
fi
