#!/usr/bin/bash

cd "$(dirname "$0")"
export base="$(pwd)"

# Check if yay is installed
if ! command -v yay &> /dev/null; then
    echo "yay could not be found, run installer"
    sudo pacman -Syu
    sudo pacman -Sy --needed --noconfirm base-devel git
    git clone https://aur.archlinux.org/yay-bin.git /tmp/buildyay
    cd /tmp/buildyay
    makepkg -o
    makepkg -se
    makepkg -i --noconfirm
    cd $base
    rm -rf /tmp/buildyay
fi

# List of packages to ensure they are installed
packages=(
    # Desktop
    "hyprland-git"

    # Terminal
    "foot"
    "fish"
    "tmux"

    # Login screen
    "sddm"
    "qt5-graphicaleffects"
    "qt5-quickcontrols2"
    "qt5-svg"

    # Dotfiles
    "stow"

    # Neovim
    "neovim"
)

# Loop through the packages and install them if they are not already installed
for package in "${packages[@]}"; do
    yay -S --noconfirm --needed "$package"
done

# Install sugar-candy sddm theme
git clone https://github.com/Kangie/sddm-sugar-candy.git /usr/share/sddm/themes/sugar-candy

# Fix ownership (broken by sudo)
sudo chown -R root:root /usr/share/sddm/themes/sugar-candy

# Check if packer is installed
# PACKER_INSTALL_PATH="${HOME}/.local/share/nvim/site/pack/packer/start/packer.nvim"
# if [ ! -d "$PACKER_INSTALL_PATH" ]; then
#     echo "Packer not found. Installing packer.nvim..."
#     git clone --depth 1 https://github.com/wbthomason/packer.nvim "$PACKER_INSTALL_PATH"
# fi

