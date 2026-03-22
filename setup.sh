#!/bin/bash

set -e

DOTFILES_DIR="$HOME/.dotfiles"

echo "=========================================="
echo "  Dotfiles Setup"
echo "=========================================="
echo ""

# Helper function to create symlink with confirmation
link_file() {
    local source="$1"
    local target="$2"
    
    if [ -e "$target" ]; then
        if [ -L "$target" ]; then
            local current_target=$(readlink -f "$target")
            if [ "$current_target" = "$source" ]; then
                echo "  [SKIP] $target (already linked)"
                return 0
            fi
        fi
        
        echo "  [EXISTS] $target"
        read -p "  Overwrite? (y/N) " -n 1 -r
        echo
        if [[ ! $REPLY =~ ^[Yy]$ ]]; then
            echo "  [SKIP] $target"
            return 0
        fi
        rm -rf "$target"
    fi
    
    mkdir -p "$(dirname "$target")"
    ln -s "$source" "$target"
    echo "  [LINKED] $target"
}

# Install oh-my-zsh
echo "==> Installing oh-my-zsh..."
if [ -d "$HOME/.oh-my-zsh" ]; then
    echo "  [EXISTS] ~/.oh-my-zsh already exists"
else
    git clone https://github.com/oh-my-zsh/oh-my-zsh.git ~/.oh-my-zsh
    echo "  [DONE] oh-my-zsh installed"
fi
echo ""

# Clone nvim config
echo "==> Installing Neovim config..."
NVIM_SOURCE="$DOTFILES_DIR/config/nvim"
NVIM_TARGET="$HOME/.config/nvim"

if [ -d "$NVIM_TARGET" ]; then
    echo "  [EXISTS] ~/.config/nvim already exists"
    read -p "  Remove and re-clone? (y/N) " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        rm -rf "$NVIM_TARGET"
        git clone https://github.com/ovitor/config.nvim.git "$NVIM_TARGET"
        echo "  [DONE] nvim config re-cloned"
    else
        echo "  [SKIP] keeping existing nvim config"
    fi
else
    git clone https://github.com/ovitor/config.nvim.git "$NVIM_TARGET"
    echo "  [DONE] nvim config cloned"
fi
echo ""

# Create symlinks
echo "==> Creating symlinks..."
echo ""

echo "--- Shell ---"
link_file "$DOTFILES_DIR/zshrc/zshrc" "$HOME/.zshrc"
link_file "$DOTFILES_DIR/gitconfig" "$HOME/.gitconfig"

# alias-private.sh (not tracked in git, create from template if missing)
PRIVATE_ALIAS="$DOTFILES_DIR/alias/alias-private.sh"
if [ ! -f "$PRIVATE_ALIAS" ]; then
    echo "# Private aliases - add your sensitive aliases here" > "$PRIVATE_ALIAS"
    echo "  [CREATED] $PRIVATE_ALIAS (template)"
fi
echo ""

echo "--- Binaries ---"
link_file "$DOTFILES_DIR/bin/zl" "$HOME/.local/bin/zl"
echo ""

echo "--- Config ---"
link_file "$DOTFILES_DIR/config/alacritty" "$HOME/.config/alacritty"
link_file "$DOTFILES_DIR/config/starship.toml" "$HOME/.config/starship.toml"
link_file "$DOTFILES_DIR/config/zellij" "$HOME/.config/zellij"
echo ""

echo "=========================================="
echo "  Setup complete!"
echo "=========================================="
echo ""
echo "IMPORTANT: Review ~/.dotfiles/alias/alias-private.sh"
echo "          and add your private aliases there."
echo ""
