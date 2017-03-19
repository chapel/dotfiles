#
# ~/.bashrc
#

#PATH=$PATH:/home/chapel/bin
export TZ=America/Los_Angeles

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

alias ls='ls --group-directories-first --color=auto -hFX'
alias la='ls -lA --group-directories-first --color=auto -hFX'
alias sudo='sudo '

[ -f /etc/profile.d/fzf.bash ] && source /etc/profile.d/fzf.bash
