#!/bin/bash

set -eE
trap 'echo -e "\033[0;31m✖ エラー発生: コマンド失敗（行番号: $LINENO）\033[0m"' ERR
trap 'echo -e "\033[0;32m🎉 正常終了しました\033[0m"' EXIT

GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

log() { echo -e "${BLUE}▶ $1${NC}"; }
ok() { echo -e "${GREEN}✔ $1${NC}"; }

log "install 開始"

### install ###

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install via brew
brew bundle --file=./homebrew/Brewfile
ok "brew install 完了"


log "setting copy"

### setting copy ###

# # Office365 template (synbolic linc from Onedrive)
# mkdir -p ~/Library/Group\ Containers/UBF8T346G9.Office
# ln -s ~/Library/CloudStorage/OneDrive-KyushuUniversity/_mySync/User\ Content.localized \
#       ~/Library/Group\ Containers/UBF8T346G9.Office/

# vscode
mkdir -p ~/Library/Application\ Support/Code/User
cp -f ./vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ok "vscode 設定コピー"

# cursorl
mkdir -p ~/Library/Application\ Support/Cursor/User
cp -f ./cursor/settings.json ~/Library/Application\ Support/Cursor/User/settings.json
cp -f ./cursor/keybindings.json ~/Library/Application\ Support/Cursor/User/keybindings.json
ok "cursor 設定コピー"

# karabiner-elements
mkdir -p ~/.config/karabiner  # if not exist, make dirctory.
cp -f ./karabiner-elements/karabiner.json ~/.config/karabiner/karabiner.json
ok "karabiner 設定コピー"

# ssh
mkdir -p ~/.ssh
cp -f ./ssh/config ~/.ssh/config
ok "ssh 設定コピー"

# defaults
# defalts write -f ??

log "localized 削除"
# remove localized directory name
rm ~/Applications/.localized \
  ~/Documents/.localized \
  ~/Downloads/.localized \
  ~/Desktop/.localized \
  ~/Public/.localized \
  ~/Pictures/.localized \
  ~/Music/.localized \
  ~/Movies/.localized \
  ~/Library/.localized
ok "localized 削除完了"


log "Rust install"
# Rust
rustup-init -y
ok "Rust install 完了"

log "Xcode install"
# xcode
mas install 497799835

sudo xcodebuild -license accept
open /Applications/Xcode.app
ok "Xcode setup 完了"

## ---
log "zsh setup"
# zsh (just before reboot)
# - chsh
# - install zinit
# - powerlevel10k
# - copy my zsh settings
chsh -s /opt/homebrew/bin/zsh

bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/git/powerlevel10k

# copy my zsh settings
cp -f ./zsh/.zshrc ~/.zshrc
ok "zsh 設定完了"

log "shell 再起動"
# reboot shell
exec $SHELL -l
## ---


# log "karabiner 起動"
# skip security popup
# sudo xattr -dr com.apple.quarantine /Applications/karabiner-elements.app
# open /Applications/karabiner-elements.app
# ok "karabiner 起動完了"
