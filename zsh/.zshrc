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
# Golang
# ----------------------------------------------------

export PATH="$PATH:/usr/local/go/bin"
export GOPATH="$HOME/dev/go"

# ----------------------------------------------------
# Racket
# ----------------------------------------------------

export PLTCOLLECTS="/home/brein/dev/vub/:$PLTCOLLECTS"

alias rkt="racket"
alias r5rs="racket -I r5rs"
alias r7rs="racket -I r7rs"

# ----------------------------------------------------
# Startship
# ----------------------------------------------------

eval "$(starship init zsh)"
