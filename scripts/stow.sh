#!/usr/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
DOTFILES_DIR="$(dirname "$SCRIPT_DIR")"

cd $DOTFILES_DIR

stow -vR -d . -t ~

sudo ln -s $DOTFILES_DIR/sddm/sddm.conf /etc/sddm.conf
sudo ln -s $DOTFILES_DIR/sddm/theme.conf /usr/share/sddm/themes/sugar-candy/theme.conf
sudo ln -s $DOTFILES_DIR/images/background.jpg /usr/share/sddm/themes/sugar-candy/Backgrounds/background.jpg

# Fix ownership (broken by sudo)
sudo chown -R root:root /usr/share/sddm/themes/sugar-candy
