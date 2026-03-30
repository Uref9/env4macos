#!/bin/bash

log "karabiner 起動"
skip security popup
sudo xattr -dr com.apple.quarantine /Applications/karabiner-elements.app
open /Applications/karabiner-elements.app
ok "karabiner 起動完了"

cp -r ./.config/karabiner ~/.config/karabiner