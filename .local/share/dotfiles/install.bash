#!/usr/bin/bash

sudo pacman -Sy \
    brightnessctl \
    bat \
    dolphin \
    eza \
    fastfetch \
    firefox \
    fzf \
    git \
    hyprland \
    hyprlauncher \
    hyprpaper \
    hyprshot \
    kitty \
    lua-language-server \
    neovim \
    noto-fonts \
    noto-fonts-cjk \
    noto-fonts-emoji \
    noto-fonts-extra \
    tree-sitter-cli \
    ttf-firacode-nerd \
    zsh \
    zoxide \

zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1
curl -s https://ohmyposh.dev/install.sh | bash -s

git clone https://github.com/marcos-dionisio/dotfiles.git --bare $HONE/.dotfiles
git --work-tree=$HOME --git-dir=$HOME/.dotfiles checkout -f
