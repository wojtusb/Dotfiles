#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

PS1='[\u@\h \W]\$ '

alias l='exa'
alias ls='exa -a'
alias ll='exa -la'
alias lldd='exa -la --sort=newest'
alias tree='exa --tree'
alias treels='exa --tree --long'


#------------------------------------------------------
alias lock='loginctl lock-session'
alias lsmod='lsmod | sort | bat'
alias cat='bat'



eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
