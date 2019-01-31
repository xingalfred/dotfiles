#!/usr/bin/env bash

# install extensions
readarray -t extensions < $DOTFILES/code/extensions
for ext in "${extensions[@]}"
do
    code --install-extension $ext
done

# make symlink for settings file
ln -sf $DOTFILES/code/settings.json $HOME/.config/Code/User/settings.json