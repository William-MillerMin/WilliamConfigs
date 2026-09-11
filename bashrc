#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR=nvim
set -o vi

alias ls='ls -w 1 --color=auto'
alias grep='grep --color=auto'
alias clearclip='wl-copy "" && wl-copy -p "" && cat /dev/null > ~/.bash_history && history -c'
alias nvimc='(cd ~/.config/nvim && nvim init.lua)'
alias sudonvim='EDITOR=nvim sudoedit'
alias icat='kitten icat'

HEART=$'\[\e[31m\]\ue000\[\e[0m\]'
echo -e "\e[2;99;99;99myou feel determination...\e[0m"
PS1='\W '$HEART'  '
# PS1="\[\e[46;1;100m\]< \u @ \h >\[\e[0m\] \W \$ "
# PS1='[\u@\h \W]\$ '

export PATH="$HOME/.cargo/bin:$PATH"

eval "$(zoxide init bash)"
