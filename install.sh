# !/bin/bash

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install via brew
brew bundle --file=./Brewfile



# Rust
chmod 755 ./rust/install.sh
./rust/install.sh

# vscode
chmod 755 ./vscode/install.sh
./vscode/install.sh

# iterm

# xcode
chmod 755 ./xcode/install.sh
./xcode/install.sh

# remove localized directory name
rm ~/Applications/.localized ~/Documents/.localized ~/Downloads/.localized ~/Desktop/.localized ~/Public/.localized ~/Pictures/.localized ~/Music/.localized ~/Movies/.localized ~/Library/.localized

# Office365 template
cp -rf ./office365/User\ Content.localized/
  /Users/yuu/Library/Group\ Containers/UBF8T346G9.Office/User\ Content.localized/

# karabiner-elements
cp -f ./karabiner-elements/karabiner.json ~/.config/karabiner/karabiner.json



# zsh (just before reboot)
chmod 755 ./zsh/install.sh
./zsh/install.sh

# reboot shell
exec $SHELL -l

# skip security popup

sudo xattr -dr com.apple.quarantine /Applications/Alfred\ 5.app/
open /Applications/Alfred\ 5.app/
sudo xattr -dr com.apple.quarantine /Applications/AltTab.app
open /Applications/AltTab.app
sudo xattr -dr com.apple.quarantine /Applications/BetterTouchTool.app
open /Applications/BetterTouchTool.app
sudo xattr -dr com.apple.quarantine /Applications/Bitwarden.app
open /Applications/Bitwarden.app
sudo xattr -dr com.apple.quarantine /Applications/Docker.app
open /Applications/Docker.app
sudo xattr -dr com.apple.quarantine /Applications/Dropbox.app
open /Applications/Dropbox.app
sudo xattr -dr com.apple.quarantine /Applications/Firefox.app
open /Applications/Firefox.app
sudo xattr -dr com.apple.quarantine /Applications/Google\ Chrome.app
open /Applications/Google\ Chrome.app
sudo xattr -dr com.apple.quarantine /Applications/IINA.app
open /Applications/IINA.app
sudo xattr -dr com.apple.quarantine /Applications/karabiner-elements.app
open /Applications/karabiner-elements.app
sudo xattr -dr com.apple.quarantine /Applications/Microsoft\ Excel.app
open /Applications/Microsoft\ Excel.app
sudo xattr -dr com.apple.quarantine /Applications/Microsoft\ Outlook.app
open /Applications/Microsoft\ Outlook.app
sudo xattr -dr com.apple.quarantine /Applications/Microsoft\ PowerPoint.app
open /Applications/Microsoft\ PowerPoint.app
sudo xattr -dr com.apple.quarantine /Applications/Microsoft\ Word.app
open /Applications/Microsoft\ Word.app
sudo xattr -dr com.apple.quarantine /Applications/Notion.app
open /Applications/Notion.app
sudo xattr -dr com.apple.quarantine /Applications/OneDrive.app
open /Applications/OneDrive.app
sudo xattr -dr com.apple.quarantine /Applications/PDF\ Expert.app
open /Applications/PDF\ Expert.app
sudo xattr -dr com.apple.quarantine /Applications/Reminders\ Menu\ Bar.app
open /Applications/Reminders\ Menu\ Bar.app
sudo xattr -dr com.apple.quarantine /Applications/Shifty.app
open /Applications/Shifty.app
sudo xattr -dr com.apple.quarantine /Applications/Slack.app
open /Applications/Slack.app
sudo xattr -dr com.apple.quarantine /Applications/The\ Unarchiver.app
open /Applications/The\ Unarchiver.app
sudo xattr -dr com.apple.quarantine /Applications/Visual\ Studio\ Code.app
open /Applications/Visual\ Studio\ Code.app
sudo xattr -dr com.apple.quarantine /Applications/iTerm.app
open /Applications/iTerm.app
sudo xattr -dr com.apple.quarantine /Applications/⌘英かな.app
open /Applications/⌘英かな.app

open /Applications/Bitwarden.app/
open /Applications/GoodNotes.app/
open /Applications/Focus.app/
open /Applications/LINE.app/
