#!/bin/bash

echo "🚀 Setting up Cracked Dev Vault..."

# Symlink dotfiles
ln -sf "$PWD/dotfiles/.zshrc" "$HOME/.zshrc"
ln -sf "$PWD/dotfiles/.gitconfig" "$HOME/.gitconfig"

# Create brain files if not exist
mkdir -p brain
touch brain/{now.md,log.md,bugs.md,lessons.md,how-i-think.md}

# Link CLI
chmod +x scripts/dev
ln -sf "$PWD/scripts/dev" /usr/local/bin/dev

echo "✅ Cracked Dev Vault installed!"
