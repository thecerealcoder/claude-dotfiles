# claude-dotfiles

Claude Code settings, plugins, and permissions — portable across machines.

## What's included

- `.claude/settings.json` — plugins, permissions, hooks
- `.claude/plugins/ralph-wiggum` — loop/stop hook
- `.claude/plugins/security-guidance` — pre-tool-use security reminder hook

### Managed plugins (auto-download on first run)
- [superpowers](https://github.com/anthropics/claude-plugins-official) — skills system
- [claude-mem](https://github.com/thedotmack/claude-mem) — persistent memory
- [compound-engineering](https://github.com/EveryInc/compound-engineering-plugin) — engineering workflows
- [discord](https://github.com/anthropics/claude-plugins-official) — Discord channel integration

## Setup

```bash
git clone git@github.com:thecerealcoder/claude-dotfiles.git ~/claude-dotfiles
cd ~/claude-dotfiles && chmod +x install.sh && ./install.sh
```

Then restart Claude Code — managed plugins download automatically on first run.
