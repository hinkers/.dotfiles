#!/usr/bin/bash

# Define the packer installation path
PACKER_INSTALL_PATH="${HOME}/.local/share/nvim/site/pack/packer/start/packer.nvim"

# Check if packer is installed
if [ ! -d "$PACKER_INSTALL_PATH" ]; then
    echo "Packer not found. Installing packer.nvim..."
    git clone --depth 1 https://github.com/wbthomason/packer.nvim "$PACKER_INSTALL_PATH"
fi

cp -r config/* ~/.config
