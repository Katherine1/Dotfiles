function ls
    if type -q eza
        command eza --icons --group-directories-first $argv
    else if type -q exa
        command exa --icons --group-directories-first $argv
    else
        command ls --group-directories-first $argv
    end
end
