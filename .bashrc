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

# teensy loader/qmk
alias 'teensy_3.2_load'='sudo ~/keebs/teensy_loader_cli/teensy_loader_cli -mmcu=mk20dx256 -wv'

# WiFi
alias 'wifistart'='~/utils/internet/wifi_start.sh'
alias 'wifiadd'='~/utils/internet/wifi_add.sh'
alias 'wifistop'='~/utils/internet/wifi_stop.sh'

# GUI
alias 'wmstart'='~/utils/ui/start-ui.sh'
alias 'wmstop'='killall Xorg'
