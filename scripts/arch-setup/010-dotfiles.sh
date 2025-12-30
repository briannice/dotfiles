#!/bin/bash

dotfiles_root="$HOME/dev/dotfiles"
dotfiles_target="$HOME"
dotfiles=(
    "bin"
    "hyprland"
    "kitty"
    "nvim"
    "starship"
    "wallpapers"
    "waybar"
    "wofi"
    "zsh"
)

cd "$dotfiles_root" || (echo "directory $dotfiles_root does not exist" && exit 1)

for df in "${dotfiles[@]}"; do
    stow "--target=$dotfiles_target" "$df"
done