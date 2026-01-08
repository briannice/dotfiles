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
    "hyprpicker"
    "hyprpolkitagent"
    "hyprsunset"
    "hyprtoolkit"
    "hyprutils"
    "waybar"
    "dunst"
    "wofi"
    "qt5-wayland"
    "qt6-wayland"
    "xdg-desktop-portal-hyprland"

    # General
    "ttf-cascadia-code-nerd"
    "stow"
    "neofetch"
    "wget"
    "curl"
    "tree"
    "cliphist"
    "wl-clipboard"
    "slurp"
    "grim"

    # Applications
    "neovim"
    "visual-studio-code-bin"
    "firefox"
    "docker"
    "discord"
    "dolphin"
    "kitty"
    "spotify"
    "starship"
    "zsh"

    # Bluetooth
    "blueman" 
    "bluez"
    "bluez-libs" 
    "bluez-utils"

    # Audio
    "pipewire"
    "pipewire-alsa"
    "pipewire-pulse"
    "pipewire-jack"
    "wireplumber"
    "pavucontrol"
)

for item in "${packages[@]}"; do
    yay -Sy "$item"
done