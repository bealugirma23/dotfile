# dotfile

## my dotfiles

Draft of README.md

# 💻 Tmux Configuration

A modern, highly-customized Tmux configuration optimized for **macOS**, **Ghostty**, and the **Fish** shell. Featuring a beautiful Catppuccin (Mocha) UI, persistent sessions, and seamless background popups.

## ✨ Key Features

- **Custom Prefix:** Rebound from `C-b` to `` ` `` (backtick) for faster access.
- **Terminal Native:** Built-in True Color (RGB), clipboard, and extkeys support specifically configured for Ghostty.
- **Fish by Default:** Spawns all new panes and windows directly into `/opt/homebrew/bin/fish`.
- **Persistent Sessions:** Automatically saves (every 15 minutes) and restores your Tmux environment using `tmux-resurrect` and `tmux-continuum`.
- **Floating Popups:** Prefix-less floating scratchpads and background tasks using `tmux-toggle-popup`.
- **Vim Navigation:** Seamlessly move around panes and copy text using native Vim bindings.

## 🔌 Plugins

Managed via [Tmux Plugin Manager (TPM)](https://github.com/tmux-plugins/tpm).

- `tmux-sensible` - Sensible defaults
- `catppuccin/tmux` (v2.3.0) - Mocha theme with rounded window styles
- `tmux-yank` - System clipboard integration
- `tmux-resurrect` & `tmux-continuum` - Session persistence
- `tmux-toggle-popup` - Floating popup manager

## ⌨️ Keybindings

### Global (No Prefix required)

| Shortcut            | Action                                   |
| :------------------ | :--------------------------------------- |
| `Alt` + `1-5`       | Jump directly to window 1 through 5      |
| `Cmd` + `G` (`M-g`) | Toggle the **Opencode** floating popup   |
| `Alt` + `O` (`M-o`) | Toggle a generic terminal floating popup |

### Window & Pane Management (Requires Prefix `` ` ``)

| Shortcut   | Action                                          |
| :--------- | :---------------------------------------------- |
| `c` / `C`  | Create a new window (at current path / at root) |
| `\|` / `%` | Split pane horizontally                         |
| `-`        | Split pane vertically                           |
| `x`        | Kill current pane                               |
| `q`        | Kill current window                             |
| `f`        | Zoom/Unzoom current pane (fullscreen)           |
| `!` / `@`  | Break pane to a new window / Join pane          |
| `z`        | Choose from tree (sessions/windows)             |
| `s` / `S`  | Choose session / Create new session by name     |

### Navigation & Resizing (Requires Prefix `` ` ``)

| Shortcut        | Action                                         |
| :-------------- | :--------------------------------------------- |
| `h` `j` `k` `l` | Move focus Left, Down, Up, Right               |
| `H` `J` `K` `L` | Resize pane Left, Down, Up, Right (by 5 lines) |
| `Tab`           | Switch to last active window                   |
| `n` / `p`       | Next / Previous window                         |

### Copy Mode (Vim Style)

| Shortcut  | Action                                       |
| :-------- | :------------------------------------------- |
| `v`       | Begin selection                              |
| `y`       | Copy selection to macOS clipboard and cancel |
| `/` / `?` | Search down / up                             |

### Quality of Life Toggles (Requires Prefix `` ` ``)

| Shortcut  | Action                                                         |
| :-------- | :------------------------------------------------------------- |
| `m` / `M` | Turn Mouse support ON / OFF                                    |
| `*` / `/` | Turn Pane Synchronization ON / OFF (type in all panes at once) |
| `P`       | Toggle Pane Logging (saves output to `~/#W.log`)               |
| `r`       | Hot-reload Tmux configuration                                  |

---

_Configured in `~/.config/tmux/tmux.conf`_
