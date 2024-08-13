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
# Plugins
# ----------------------------------------------------

# ZSH_DIR="$HOME/.config/zsh"

# git_repos=(
#     catppuccin/zsh-syntax-highlighting
#     zsh-users/zsh-syntax-highlighting
#     zsh-users/zsh-autosuggestions
# )

# for git_repo in "${git_repos[@]}"; do
#     if [[ ! -e "$ZSH_DIR/$git_repo" ]]; then
#         git clone "https://github.com/$git_repo.git" "$ZSH_DIR/$git_repo"
#     fi
# done

# source "$ZSH_DIR/catppuccin/zsh-syntax-highlighting/themes/catppuccin_mocha-zsh-syntax-highlighting.zsh"
# source "$ZSH_DIR/zsh-users/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
# source "$ZSH_DIR/zsh-users/zsh-autosuggestions/zsh-autosuggestions.zsh"

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
