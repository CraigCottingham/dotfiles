#!/bin/bash
# ~/.bash_profile: executed by bash(1) for login shells.

[[ -r /etc/bash_profile ]] && . /etc/bash_profile
[[ -r /etc/profile ]] && . /etc/profile
[[ -r $HOME/.bash_login ]] && . $HOME/.bash_login
[[ -r $HOME/.profile ]] && . $HOME/.profile
[[ -r $HOME/.bashrc ]] && . $HOME/.bashrc

[[ -n "$PS1" ]] && PS1='\u@\h:\w\$ '
