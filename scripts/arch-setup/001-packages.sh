#!/bin/bash

# -----------------------------------------------
# Instal packages
# -----------------------------------------------

packages=(
    # Hyprland
    "hyprcursor"
    "hyprgraphics"
    "hypridle"
    "hyprland"
    "hyprland"
    "hyprlang"
    "hyprlock"
    "hyprpaper"
    "hyprsunset"
    "hyprtoolkit"
    "hyprutils"
    "waybar"
    "wofi"

    # General
    "ttf-cascadia-code-nerd"
    "stow"
    "neofetch"
    "wget"
    "curl"
    "tree"

    # Applications
    "neovim"
    "visual-studio-code-bin"
    "firefox"
    "docker"
    "dolphin"
    "kitty"
    "starship"
    "zsh"

    # Bluetooth
    "blueman" 
    "bluez"
    "bluez-libs" 
    "bluez-utils"
)

for item in "${packages[@]}"; do
    yay -Sy "$item"
done