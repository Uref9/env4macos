# !/bin/bash

# homebrew
brew bundle -f dump
cp -f ~/Brewfile .

# office365 template
cp -rf /Users/yuu/Library/Group\ Containers/UBF8T346G9.Office/User\ Content.localized/ \
  ./office365/User\ Content.localized/

# vscode
cp -f ~/Library/Application\ Support/Code/User/settings.json ./vscode/settings.json

# zsh
cp -f ~/.zshrc ./zsh/.zshrc

# karabiner-elements
cp -f ~/.config/karabiner/karabiner.json ./karabiner-elements/karabiner.json 
