function yay --description 'Alias for paru'
    if type -q paru
        command paru $argv
    else if type -q yay
        command yay $argv
    else if type -q pacman
        command pacman $argv
    else
        echo "This is not an Arch Linux system"
    end
end
