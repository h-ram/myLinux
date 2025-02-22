#!/bin/bash

# Downloads _______________________________________________
echo -e "Downloading Packages !" && sleep 0.3 
# Detect package manager
if command -v apt >/dev/null; then
    PKG_MANAGER="sudo apt install -y"
    UPDATE_CMD="sudo apt update"
elif command -v pacman >/dev/null; then
    PKG_MANAGER="sudo pacman -S --noconfirm"
    UPDATE_CMD="sudo pacman -Sy"
elif command -v dnf >/dev/null; then
    PKG_MANAGER="sudo dnf install -y"
    UPDATE_CMD="sudo dnf check-update"
elif command -v zypper >/dev/null; then
    PKG_MANAGER="sudo zypper install -y"
    UPDATE_CMD="sudo zypper refresh"
elif command -v yay >/dev/null; then
    PKG_MANAGER="yay -S --noconfirm"
    UPDATE_CMD="yay -Sy"
elif command -v paru >/dev/null; then
    PKG_MANAGER="paru -S --noconfirm"
    UPDATE_CMD="paru -Sy"
else
    echo "Unsupported package manager!"
    exit 1
fi

MISSING_PACKAGES=()
install_if_missing() {
    for PACKAGE in "$@"; do
        if ! command -v "$PACKAGE" >/dev/null && ! "$PKG_MANAGER" -Q "$PACKAGE" &>/dev/null; then
            echo "$PACKAGE is missing. Adding to install list..."
            MISSING_PACKAGES+=("$PACKAGE")
        fi
    done

    # Install all missing packages at once
    if [ ${#MISSING_PACKAGES[@]} -gt 0 ]; then
        echo "Updating package lists..."
        $UPDATE_CMD

        echo "Installing missing packages: ${MISSING_PACKAGES[*]}"
        $PKG_MANAGER "${MISSING_PACKAGES[@]}"
    else
        echo "All packages are already installed!"
    fi
}

# Example usage: Pass package names as arguments
#install_if_missing vim neovim git htop wget curl tmux tree evince lsd neofetch


#git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
#git clone --depth 1 https://github.com/wbthomason/packer.nvim\ ~/.local/share/nvim/site/pack/packer/start/packer.nvim



