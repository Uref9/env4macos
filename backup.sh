# !/bin/bash

# homebrew
brew bundle -f dump --file '~/Brewfile'
cp -f ~/Brewfile .

# vscode
cp -f ~/Library/Application\ Support/Code/User/settings.json ./vscode/settings.json

# zsh
cp -f ~/.zshrc ./zsh/.zshrc

# karabiner-elements
cp -f ~/.config/karabiner/karabiner.json ./karabiner-elements/karabiner.json 

# ssh
cp -f ~/.ssh/config ./ssh/config

# defaults
defaults read > defaults/defaults_list
