# !/bin/bash

### install ###

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install via brew
brew bundle --file=./homebrew/Brewfile


### setting copy ###

# # Office365 template (synbolic linc from Onedrive)
# mkdir -p ~/Library/Group\ Containers/UBF8T346G9.Office
# ln -s ~/Library/CloudStorage/OneDrive-KyushuUniversity/_mySync/User\ Content.localized \
#       ~/Library/Group\ Containers/UBF8T346G9.Office/

# vscode
mkdir -p ~/Library/Application\ Support/Code/User
cp -f ./vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json

# karabiner-elements
mkdir -p ~/.config/karabiner  # if not exist, make dirctory.
cp -f ./karabiner-elements/karabiner.json ~/.config/karabiner/karabiner.json

# ssh
mkdir -p ~/.ssh
cp -f ./ssh/config ~/.ssh/config

# defaults
# defalts write -f ??

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


# Rust
rustup-init

# xcode
mas install 497799835 // Xcode

sudo xcodebuild -license accept
open /Applications/Xcode.app

## ---
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

# reboot shell
exec $SHELL -l
## ---


skip security popup
sudo xattr -dr com.apple.quarantine /Applications/karabiner-elements.app
open /Applications/karabiner-elements.app
