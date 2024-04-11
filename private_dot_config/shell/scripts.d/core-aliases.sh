#!/usr/bin/zsh

if (( $+commands[eza] )); then
    alias ls="eza --icons --group-directories-first"
elif (( $+commands[exa] )); then
    alias ls="exa --icons --group-directories-first"
fi

if (( $+commands[bat] )); then
    alias cat="bat"
    if (( $+commands[fzf] )); then
        alias fzf='fzf --preview "bat --color=always --style=numbers --line-range=:500 {}"'
    fi
fi

#if (( $+commands[zoxide] )); then
#    alias cd="z"
#fi

alias grep='grep --color=always'
alias ip="ip -color"

#alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
