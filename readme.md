<div align="center">

## My Arch Linux -- Dotfiles

That's just my simple Arch Linux setup! \
Here's how do I set my things, feel free to use or modify!

![](./.config/markdown/screenshot.png)

</div>

## Installation

```bash
git clone git@github.com:marcos-dionisio/dotfiles.git --bare ~/.dotfiles
git --work-tree=$HOME --git-dir=$HOME/.dotfiles checkout -f
bash ~/.local/share/dotfiles/install.zsh
```
