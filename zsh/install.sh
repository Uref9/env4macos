# !/bin/bash

# brew install zsh
chsh -s /opt/homebrew/bin/zsh

## install zinit
bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"

## powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/git/powerlevel10k
# echo 'source ~/git/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc


# copy my zsh settings
cp -f ./zsh/.zshrc ~/.zshrc