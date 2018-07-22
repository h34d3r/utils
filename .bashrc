#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -al'
alias DIE='rm -rf /'
PS1='[\u@\h \W]\$ '
alias 'wifistart'='~/utils/internet/wifi_start.sh'
