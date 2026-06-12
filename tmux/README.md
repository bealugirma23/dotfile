## Install

1. Install [TPM](https://github.com/tmux-plugins/tpm):
   `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`
2. Reload tmux with ``prefix + r``.
3. Install plugins with ``prefix + I``.

## What This Setup Optimizes For

- Ghostty friendly terminal behavior: truecolor, clipboard, extended keys
- Neovim workflow: vim keybindings, `vim-tmux-navigator`, popup `lazygit`
- Session persistence: `resurrect` + `continuum`
- Better copy flow: OSC52 plus macOS clipboard support
- Current-path splits and new windows so project context stays intact

## Main Keys

Prefix key: `` ` `` (backtick)

- `prefix + c`: new window in current pane path
- `prefix + |`: horizontal split in current pane path
- `prefix + -`: vertical split in current pane path
- `prefix + h/j/k/l`: move between panes
- `prefix + H/J/K/L`: resize panes
- `prefix + Tab`: last window
- `prefix + n`: next window
- `prefix + p`: previous window
- `prefix + Space`: even-horizontal layout
- `prefix + Enter`: main-vertical layout
- `prefix + f`: zoom/unzoom pane
- `prefix + z`: session/window/pane tree
- `prefix + s`: choose session
- `prefix + S`: create or attach named session
- `prefix + o`: open a shell popup in the current pane path
- `prefix + y`: copy current tmux buffer to macOS clipboard
- `prefix + r`: reload config

## Plugins Included

- `tmux-sensible`
- `catppuccin/tmux`
- `christoomey/vim-tmux-navigator`
- `tmux-yank`
- `tmux-resurrect`
- `tmux-continuum`

## Suggested Neovim Side

If you want pane movement to feel seamless inside Neovim, install `christoomey/vim-tmux-navigator` on the Neovim side too.

## Suggested Ghostty Side

Use `xterm-ghostty` as the terminal identity and keep clipboard integration enabled in Ghostty. This tmux config already advertises the matching features tmux needs.
