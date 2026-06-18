```bash
#!/usr/bin/env bash

set -e

echo "[+++] Updating package lists..."
sudo apt update
sudo apt upgrade -y

echo "[+++] Installing packages..."
sudo apt install -y \
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
else
    echo "[***] fzf-tab already installed."
fi

echo "[+++] Installing zsh-syntax-highlighting..."
if [ ! -d "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting" ]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
        "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"
else
    echo "[***] zsh-syntax-highlighting already installed."
fi

echo "[***] Setting Zsh as default shell..."
if [ "$SHELL" != "$(command -v zsh)" ]; then
    chsh -s "$(command -v zsh)"
fi

echo
echo "[✓] Done!"
echo "Restart your terminal or run:"
echo
echo "    exec zsh"
```

