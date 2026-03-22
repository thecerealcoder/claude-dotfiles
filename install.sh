#!/bin/bash
# Claude Code dotfiles installer

set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Installing Claude Code dotfiles..."

# Create ~/.claude/plugins if it doesn't exist
mkdir -p ~/.claude/plugins

# Backup existing settings if present
if [ -f ~/.claude/settings.json ]; then
  echo "Backing up existing settings.json to ~/.claude/settings.json.bak"
  cp ~/.claude/settings.json ~/.claude/settings.json.bak
fi

# Symlink settings
ln -sf "$DOTFILES_DIR/.claude/settings.json" ~/.claude/settings.json

# Copy manually-managed plugins (not in plugin manager)
echo "Installing ralph-wiggum and security-guidance plugins..."
cp -r "$DOTFILES_DIR/.claude/plugins/ralph-wiggum" ~/.claude/plugins/
cp -r "$DOTFILES_DIR/.claude/plugins/security-guidance" ~/.claude/plugins/

echo "Done!"
echo "Restart Claude Code — the 4 managed plugins will download automatically on first run."
