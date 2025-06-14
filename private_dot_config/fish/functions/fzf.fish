function fzf
    if type -q bat
        command fzf --preview "bat --color=always --style=numbers --line-range=:500 {}" $argv
    else
        command fzf $argv
    end
end
