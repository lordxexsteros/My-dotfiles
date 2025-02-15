#
############################################################
# Simple (TM) Bash Settings
# By Mayank
###########################################################
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

alias grep='grep --color=auto'

PS1='[\u@\h \W]\$ '

[ -z "$PS1" ] && return

eval "$(starship init bash)"

neofetch



export LIBVA_DRIVER_NAME=i965
