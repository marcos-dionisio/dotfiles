# Show fetch at start!
fastfetch --config arch

# Setup Zap Plugin Manager
source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

# Shell Theme
eval "$($HOME/.local/bin/oh-my-posh init zsh --config $HOME/.config/zsh/theme.json)"

eval "$(zoxide init zsh)"

# Other plugins
plug "zsh-users/zsh-syntax-highlighting"
plug "zsh-users/zsh-autosuggestions"
plug "hlissner/zsh-autopair"

plug "$HOME/.config/zsh/upgrade-reminder.zsh"
plug "$HOME/.config/zsh/history.zsh"
plug "$HOME/.config/zsh/aliases.zsh"
plug "$HOME/.config/zsh/fzf.zsh"

# Initialize plugins
autoload -Uz compinit

compinit
autopair-init
