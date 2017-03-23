#
# ~/.bashrc
#

[ -f ~/.local/bin/sensible.bash ] && source ~/.local/bin/sensible.bash

PATH=$PATH:~/.local/bin
export TZ=America/Los_Angeles

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ $- = *i* ]] && source /usr/bin/liquidprompt

alias ls='ls -hFX --group-directories-first --color=always '
alias la='ls -lAhFX --group-directories-first --color=always '
alias sudo='sudo '

[ -f /etc/profile.d/fzf.bash ] && source /etc/profile.d/fzf.bash

source /usr/share/nvm/init-nvm.sh
