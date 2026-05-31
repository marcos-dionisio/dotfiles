# Aliases

alias cp="cp -i"

alias cd="z"

alias ..="z ../"
alias ...="z ../../"

alias .1="z ../"
alias .2="z ../../"
alias .3="z ../../../"
alias .4="z ../../../../"
alias .5="z ../../../../../"
alias .6="z ../../../../../../"

alias ls="eza --group-directories-first --icons"
alias la="eza --group-directories-first --icons -a"
alias ll="eza --group-directories-first --icons -la"

alias cat="bat --theme \"Catppuccin Mocha\" --style plain"

alias tree="eza --group-directories-first --icons --tree -a"

alias gitdot="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias mirrors="sudo reflector -c Brazil -p https --sort rate --save /etc/pacman.d/mirrorlist --verbose && sudo pacman -Syy"

alias reset="clear && source $HOME/.zshrc"
alias fetch="fastfetch --config arch"
