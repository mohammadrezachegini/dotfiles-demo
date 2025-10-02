#!/usr/bin/bash
set -euo pipefail

# --- SSH hygiene (avoid "unprotected private key" + host prompts)
mkdir -p ~/.ssh
chmod 700 ~/.ssh
chmod 600 ~/.ssh/id_* 2>/dev/null || true
ssh-keyscan github.com >> ~/.ssh/known_hosts 2>/dev/null || true

# --- Example dotfile links (adjust to what your repo contains)
# ln -sf ~/dotfiles/.zshrc ~/.zshrc
# ln -sf ~/dotfiles/.gitconfig ~/.gitconfig

# --- Optional: basic git identity (if you want)
# git config --global user.name "Reza"
# git config --global user.email "you@example.com"

echo "Dotfiles install complete ✅."
