# ----------------------------------------------------
# Oh my zsh
# ----------------------------------------------------

source "$HOME/.zsh/catppuccin_macchiato-zsh-syntax-highlighting.zsh"

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=""

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# ----------------------------------------------------
# Bin
# ----------------------------------------------------

export PATH="$PATH:$HOME/bin"

# ----------------------------------------------------
# Startship
# ----------------------------------------------------

eval "$(starship init zsh)"
