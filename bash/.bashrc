#
# ~/.bashrc
#

PATH=$PATH:~/.local/bin
export TZ=America/Los_Angeles

source /usr/share/nvm/init-nvm.sh

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


[ -f ~/.local/bin/sensible.bash ] && source ~/.local/bin/sensible.bash

alias ls='ls -hFX --group-directories-first --color=always '
alias la='ls -lAhFX --group-directories-first --color=always '
alias sudo='sudo '

[ -f /etc/profile.d/fzf.bash ] && source /etc/profile.d/fzf.bash

LP_COLOR_PATH="$BOLD_BLUE"

source /usr/bin/liquidprompt
