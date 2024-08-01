# ----------------------------------------------------
# Plugins
# ----------------------------------------------------

ZSH_DIR="$HOME/.config/zsh"

if [[ ! -e "$ZSH_DIR/zsh-syntax-highlighting" ]]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH_DIR/zsh-syntax-highlighting"
fi

if [[ ! -e "$ZSH_DIR/zsh-autosuggestions" ]]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions.git "$ZSH_DIR/zsh-autosuggestions"
fi

if [[ ! -e "$ZSH_DIR/zsh-syntax-highlighting-catppuccin" ]]; then
    git clone https://github.com/catppuccin/zsh-syntax-highlighting.git "$ZSH_DIR/zsh-syntax-highlighting-catppuccin"
fi

source "$ZSH_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$ZSH_DIR/zsh-syntax-highlighting-catppuccin/themes/catppuccin_mocha-zsh-syntax-highlighting.zsh"
source "$ZSH_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# ----------------------------------------------------
# NVM
# ----------------------------------------------------

export NVM_DIR="$HOME/.config/nvm"

if [ -s "$NVM_DIR/nvm.sh" ]; then
    . "$NVM_DIR/nvm.sh"
fi

if [ -s "$NVM_DIR/bash_completion" ]; then
    . "$NVM_DIR/bash_completion"
fi

# ----------------------------------------------------
# PNPM
# ----------------------------------------------------

export PNPM_HOME="/home/brein/.local/share/pnpm"

case ":$PATH:" in
*":$PNPM_HOME:"*) ;;
*) export PATH="$PNPM_HOME:$PATH" ;;
esac

# ----------------------------------------------------
# Startship
# ----------------------------------------------------

eval "$(starship init zsh)"
