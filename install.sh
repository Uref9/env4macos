# !/bin/bash

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install via brew
brew bundle --file=./Brewfile

# skip security popup

sudo xattr -dr com.apple.quarantine /Applications/Alfred\ 5.app/
open /Applications/Alfred\ 5.app/
sudo xattr -dr com.apple.quarantine 
open 

open /Applications/Bitwarden.app/
open /Applications/GoodNotes.app/
open /Applications/Focus.app/
open /Applications/LINE.app/

# zsh
chmod 755 ./zsh/install.sh
./zsh/install.sh

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







# reboot shell
exec $SHELL -l