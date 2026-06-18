#!/usr/bin/env bash

set -e

echo "[+++] Updating system..."
sudo pacman -Syu --noconfirm

echo "[+++] Installing packages..."
sudo pacman -S --needed --noconfirm \
    alacritty \
    zsh \
    git \
    curl \
    fzf \
    ripgrep

echo "[+++] Installing Oh My Zsh..."
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    RUNZSH=no CHSH=no sh -c \
        "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
    echo "[***] Oh My Zsh already installed."
fi

ZSH_CUSTOM="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"

echo "[+++] Installing fzf-tab..."
if [ ! -d "$ZSH_CUSTOM/plugins/fzf-tab" ]; then
    git clone https://github.com/Aloxaf/fzf-tab.git \
        "$ZSH_CUSTOM/plugins/fzf-tab"
fi

echo "[+++] Installing zsh-syntax-highlighting..."
if [ ! -d "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting" ]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
        "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"
fi

echo "[***] Setting Zsh as default shell..."

ZSH_PATH="$(grep -E '^(/usr)?/bin/zsh$' /etc/shells | head -n1)"

if [ -z "$ZSH_PATH" ]; then
    echo "[!!!] Could not find a valid zsh entry in /etc/shells"
    exit 1
fi

if [ "$SHELL" != "$ZSH_PATH" ]; then
    chsh -s "$ZSH_PATH"
fi

echo
echo "[✓] Done!"
echo
echo "Restart your terminal or run:"
echo "    exec zsh"
