#!/bin/bash
# Claude Code dotfiles installer

set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Installing Claude Code dotfiles..."

# Create ~/.claude if it doesn't exist
mkdir -p ~/.claude

# Backup existing settings if present
if [ -f ~/.claude/settings.json ]; then
  echo "Backing up existing settings.json to ~/.claude/settings.json.bak"
  cp ~/.claude/settings.json ~/.claude/settings.json.bak
fi

# Symlink settings
ln -sf "$DOTFILES_DIR/.claude/settings.json" ~/.claude/settings.json

echo "Done! ~/.claude/settings.json is now symlinked."
echo "Restart Claude Code to apply plugins and settings."
