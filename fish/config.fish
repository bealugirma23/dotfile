if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Flutter ENV

# opencode
fish_add_path /Users/mac/.opencode/bin
fish_add_path ~/.shorebird/bin
fish_add_path /usr/local/share/dotnet/sdk
fish_add_path ~/.pub-cache/bin
fish_add_path ~/.local/bin
fish_add_path ~/.cargo/bin
fish_add_path /opt/homebrew/Cellar/raylib/5.5/include/

# pnpm
set -gx PNPM_HOME /Users/mac/Library/pnpm
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# Added by Antigravity
fish_add_path /Users/mac/.antigravity/antigravity/bin

# Added by Antigravity
fish_add_path /Users/mac/.antigravity/antigravity/bin

# Added by Antigravity
fish_add_path /Users/mac/.antigravity/antigravity/bin

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# Aliases
alias ll="eza -l -g --icons --git"
alias llt="eza -1 --icons --tree --git-ignore"

# Added by Antigravity CLI installer
set -gx PATH "/Users/mac/.local/bin" $PATH
