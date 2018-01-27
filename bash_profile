#!/bin/bash
# ~/.bash_profile: executed by bash(1) for login shells.

[[ -r /etc/bash_profile ]] && source /etc/bash_profile
[[ -r /etc/profile ]] && source /etc/profile
[[ -r $HOME/.bash_login ]] && source $HOME/.bash_login
[[ -r $HOME/.profile ]] && source $HOME/.profile
[[ -r $HOME/.bashrc ]] && source $HOME/.bashrc

[[ -n "$PS1" ]] && PS1='\u@\h:\w\$ '

[[ -e "${HOME}/.iterm2_shell_integration.bash" ]] && source "${HOME}/.iterm2_shell_integration.bash"

# Don't check mail when opening terminal.
unset MAILCHECK
