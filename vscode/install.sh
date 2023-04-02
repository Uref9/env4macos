# !/bin/bash

# install vscode extensions
code --install-extension mosapride.zenkaku
code --install-extension vscode-icons-team.vscode-icons
code --install-extension MS-CEINTL.vscode-language-pack-ja
code --install-extension VisualStudioExptTeam.vscodeintellicode
code --install-extension VisualStudioExptTeam.intellicode-api-usage-examples
code --install-extension cschlosser.doxdocgen
code --install-extension vadimcn.vscode-lldb
code --install-extension wmaurer.change-case
code --install-extension ms-vscode.cpptools
code --install-extension ms-vscode.cpptools-extension-pack
code --install-extension ms-vscode.cpptools-themes
code --install-extension ms-vscode.cmake-tools

# copy vscode settings
cp ./vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json