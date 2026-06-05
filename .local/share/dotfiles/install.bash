#!/usr/bin/bash

install_paru() {
    sudo pacman -S --needed base-devel git
    git clone https://aur.archlinux.org/paru.git /tmp/paru
    cd /tmp/paru
    makepkg -si
}

install_dependencies() {
    paru -Sy \
        hyprland \
        hyprlauncher \
        hyprlock \
        hyprpaper \
        hyprshot \
        noto-fonts \
        noto-fonts-cjk \
        noto-fonts-emoji \
        noto-fonts-extra \
        kitty \
        dolphin \
        firefox \
        brightnessctl \
        zsh \
        zoxide \
        eza \
        bat \
        fzf \
        fastfetch \
        neovim \
        lua-language-server \

    zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1
    curl -s https://ohmyposh.dev/install.sh | bash -s
}

install_dotfiles() {
    git clone https://github.com/marcos-dionisio/dotfiles.git --bare $HONE/.dotfiles
    git --work-tree=$HOME --git-dir=$HOME/.dotfiles checkout -f
}

change_shell() {
    sudo usermod --shell /usr/bin/zsh $USERNAME
}

install_paru
install_dependencies
install_dotfiles
change_shell
