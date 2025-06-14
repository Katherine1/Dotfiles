function yeet --description 'Removes packages using Paru -Rcs'
    if type -q paru
        command paru -Rcs $argv
    else if type -q yay
        command yay -Rcs $argv
    else if type -q pacman
        command pacman -Rcs $argv
    else
        echo "This is not an Arch Linux system."
    end
end
