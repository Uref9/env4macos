# !/bin/bash

# homebrew
brew bundle -f dump --file '~/Brewfile'
mkdir -p ./homebrew
cp -f ~/Brewfile ./homebrew/Brewfile

# vscode
mkdir -p ./vscode
code --list-extensions > ./vscode/vscode-extensions.txt
cp -f ~/Library/Application\ Support/Code/User/settings.json ./vscode/settings.json

#cursor

# zsh
mkdir -p ./zsh
cp -f ~/.zshrc ./zsh/.zshrc

# karabiner-elements
mkdir -p ./karabiner-elements
cp -f ~/.config/karabiner/karabiner.json ./karabiner-elements/karabiner.json 

# ssh
mkdir -p ./ssh
cp -f ~/.ssh/config ./ssh/config

# defaults
mkdir -p ./deraults
defaults read > defaults/defaults_list
