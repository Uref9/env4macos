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
rm ~/Applications/.localized \
  ~/Documents/.localized \
  ~/Downloads/.localized \
  ~/Desktop/.localized \
  ~/Public/.localized \
  ~/Pictures/.localized \
  ~/Music/.localized \
  ~/Movies/.localized \
  ~/Library/.localized

# Office365 template (synbolic linc from Onedrive)
mkdir -p ~/Library/Group\ Containers/UBF8T346G9.Office
ln -s ~/Library/CloudStorage/OneDrive-KyushuUniversity/_mySync/User Content.localized \
      ~/Library/Group\ Containers/UBF8T346G9.Office/

# karabiner-elements
mkdir -p ~/.config/karabiner  # if not exist, make dirctory.
cp -f ./karabiner-elements/karabiner.json ~/.config/karabiner/karabiner.json

# ssh
mkdir -p ~/.ssh
cp -f ./ssh/config ~/.ssh/config

# defaults
# defalts write -f ??

## ---
# zsh (just before reboot)
chmod 755 ./zsh/install.sh
./zsh/install.sh

# reboot shell
exec $SHELL -l
## ---


# skip security popup
# sudo xattr -dr com.apple.quarantine /Applications/karabiner-elements.app
# open /Applications/karabiner-elements.app
