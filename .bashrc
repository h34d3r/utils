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
alias 'teensy_3.2_load'='sudo ~/keebs/teensy_loader_cli/teensy_loader_cli -mmcu=mk20dx256 -wv'
alias 'wifistart'='~/utils/internet/wifi.sh'
alias 'wifiadd'='~/utils/internet/wifi_add.sh'
