#!/bin/bash
# ~/.bash_profile: executed by bash(1) for login shells.

[[ -r /etc/bash_profile ]] && . /etc/bash_profile
[[ -r /etc/profile ]] && . /etc/profile
[[ -r $HOME/.bash_login ]] && . $HOME/.bash_login
[[ -r $HOME/.profile ]] && . $HOME/.profile
[[ -r $HOME/.bashrc ]] && . $HOME/.bashrc

[[ -n "$PS1" ]] && PS1='\u@\h:\w\$ '

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# Path to the bash it configuration
# export BASH_IT="/Users/craigc/.dotfiles/bash-it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
# export BASH_IT_THEME='bobby'
# export THEME_SHOW_CLOCK=false
# export THEME_SHOW_CLOCK_CHAR=false

# (Advanced): Change this to the name of your remote repo if you
# cloned bash-it with a remote other than origin such as `bash-it`.
# export BASH_IT_REMOTE='bash-it'

# Your place for hosting Git repos. I use this for private repos.
# export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
# unset MAILCHECK

# Change this to your console based IRC client of choice.
# export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
# export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
# export SCM_CHECK=true

# Set Xterm/screen/Tmux title with only a short hostname.
# Uncomment this (or set SHORT_HOSTNAME to something else),
# Will otherwise fall back on $HOSTNAME.
#export SHORT_HOSTNAME=$(hostname -s)

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/djl/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# (Advanced): Uncomment this to make Bash-it reload itself automatically
# after enabling or disabling aliases, plugins, and completions.
# export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1

# Load Bash It
# source $BASH_IT/bash_it.sh
[[ -f /Users/craigc/.sentinel/current/bin/sentinel ]] && eval "$(/Users/craigc/.sentinel/current/bin/sentinel init -)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/craigc/Projects/google-cloud-sdk/path.bash.inc' ]; then source '/Users/craigc/Projects/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/craigc/Projects/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/craigc/Projects/google-cloud-sdk/completion.bash.inc'; fi
