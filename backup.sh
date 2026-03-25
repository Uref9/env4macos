#!/bin/bash

set -e
set -eE
trap 'echo -e "\033[0;31m✖ エラー発生: コマンド失敗（行番号: $LINENO）\033[0m"' ERR
exec > >(tee backup.log) 2>&1

# 色
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

log() { echo -e "${BLUE}▶ $1${NC}"; }
ok() { echo -e "${GREEN}✔ $1${NC}"; }

log "homebrew"
# homebrew
brew bundle dump --force --file "$HOME/Brewfile"
mkdir -p ./homebrew
cp -f "$HOME/Brewfile" ./homebrew/Brewfile
ok "homebrew 完了"

log "vscode"
# vscode
mkdir -p ./vscode
code --list-extensions > ./vscode/vscode-extensions.txt
cp -f "$HOME/Library/Application Support/Code/User/settings.json" ./vscode/settings.json || true
ok "vscode 完了"

log "cursor"
# vscode
mkdir -p ./cursor
cp -f "$HOME/Library/Application Support/Cursor/User/settings.json" ./cursor/settings.json || true
cp -f "$HOME/Library/Application Support/Cursor/User/keybindings.json" ./cursor/keybindings.json || true
ok "cursor 完了"

log "zsh"
# zsh
mkdir -p ./zsh
cp -f "$HOME/.zshrc" ./zsh/.zshrc || true
ok "zsh 完了"

log "karabiner"
# karabiner-elements
mkdir -p ./karabiner-elements
cp -f "$HOME/.config/karabiner/karabiner.json" ./karabiner-elements/karabiner.json || true
ok "karabiner 完了"

log "ssh"
# ssh
mkdir -p ./ssh
cp -f "$HOME/.ssh/config" ./ssh/config || true
ok "ssh 完了"

log "defaults"
# defaults
mkdir -p ./defaults
defaults read > ./defaults/defaults_list
ok "defaults 完了"