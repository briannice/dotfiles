#!/bin/bash

# -----------------------------
# Hyprcook
# -----------------------------

export HYPRCOOK_HOME="$HOME/dev/hyprcook"
export PATH="$HYPRCOOK_HOME/bin:$PATH"

# -----------------------------
# Go
# -----------------------------

export GOPATH="$HOME/dev/go"

# -----------------------------
# Nvm
# -----------------------------

export NVM_DIR="$HOME/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 

# -----------------------------
# Starship
# -----------------------------

eval "$(starship init zsh)"