# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

# Shell Theme
eval "$(/home/marcos/.local/bin/oh-my-posh init zsh --config $HOME/.config/zsh/theme.json)"

# Other plugins
plug "zsh-users/zsh-syntax-highlighting"
plug "zsh-users/zsh-autosuggestions"
plug "hlissner/zsh-autopair"

plug "$HOME/.config/zsh/aliases.zsh"

# Load and initialize plugins
autoload -Uz compinit

compinit
autopair-init
