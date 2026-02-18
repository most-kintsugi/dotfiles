#!/usr/bin/env bash

set -e

echo "[+++] Updating system"
sudo apt update

echo "[+++] Installing alacritty..."
sudo apt install -y alacritty

echo "[+++] Installing zsh"
sudo apt install -y zsh

echo "[+++] Installing git..."
sudo apt install -y git

echo "[+++] Installing curl..."
sudo apt install -y curl

echo "[+++] Installing fzf..."
sudo apt install -y fzf

echo "[+++] Installing Oh My Zsh..."
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  RUNZSH=no CHSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
  echo "[***] Oh My Zsh already installed."
fi

ZSH_CUSTOM=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}

echo "[+++] Installing fzf-tab..."
if [ ! -d "$ZSH_CUSTOM/plugins/fzf-tab" ]; then
  git clone https://github.com/Aloxaf/fzf-tab "$ZSH_CUSTOM/plugins/fzf-tab"
else
  echo "[***] fzf-tab already installed."
fi

# zsh-syntax-highlighting
echo "[+++] Installing zsh-syntax-highlighting..."
if [ ! -d "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting" ]; then
  git clone https://github.com/zsh-users/zsh-syntax-highlighting \
    "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"
else
  echo "[***] zsh-syntax-highlighting already installed."
fi

echo "[***] Setting Zsh as default shell..."
if [ "$SHELL" != "$(which zsh)" ]; then
  chsh -s "$(which zsh)"
fi


echo "[$] Done. Restart your terminal or run: exec zsh"
