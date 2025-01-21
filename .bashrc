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

echo  Wellcome to StarShip! Sir. ---
echo  github cli token- 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 ---


export LIBVA_DRIVER_NAME=i965
