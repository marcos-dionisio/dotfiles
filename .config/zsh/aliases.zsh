# Aliases

alias cp="cp -i"

alias ~="cd ~"

alias ls="ls --color"
alias la="ls --color -a"
alias ll="ls --color -la"

alias ..="cd ../"
alias ...="cd ../../"

alias .1="cd ../"
alias .2="cd ../../"
alias .3="cd ../../../"
alias .4="cd ../../../../"
alias .5="cd ../../../../../"
alias .6="cd ../../../../../../"

alias gitdot="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

alias mirrors="sudo reflector -c Brazil -p https --sort rate --save /etc/pacman.d/mirrorlist --verbose && sudo pacman -Syy"

alias fetch="fastfetch --config arch"
alias reset="clear && source $HOME/.zshrc"
