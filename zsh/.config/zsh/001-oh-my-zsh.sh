#!/bin/bash

# shellcheck disable=SC2034
# shellcheck disable=SC1091

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=""

plugins=(
    git
    docker
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source "$ZSH/oh-my-zsh.sh"