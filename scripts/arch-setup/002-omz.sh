#!/bin/bash

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

omz_plugins=(
    "zsh-autosuggestions"
    "zsh-syntax-highlighting"
)

for plugin in "${omz_plugins[@]}"; do
    git clone "https://github.com/zsh-users/$plugin" "$HOME/.oh-my-zsh/custom/plugins/$plugin"
done