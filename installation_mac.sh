#! /bin/bash 

# VS Code
brew cask install visual-studio-code

cat << EOF >> ~/.bash_profile
# Add Visual Studio Code (code)
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF

extensions=(
formulahendry.auto-close-tag
formulahendry.auto-rename-tag
ms-azuretools.vscode-docker
ms-vscode.Go
redhat.vscode-yaml
timonwong.shellcheck
)
for ext in "${extensions[@]}"; do
    code  --install-extension "$ext"
done

#ohmyzsh
brew install zsh
brew install wget
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
pip3 install thefuck --user
git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir ~/.local/share/fonts
mv PowerlineSymbols.otf ~/.local/share/fonts/
fc-cache -vf ~/.local/share/fonts/
mkdir ~/.config/fontconfig ~/.config/fontconfig/conf.d
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"
wget https://raw.githubusercontent.com/aokomorowski/zshrc/master/.zshrc -O ~/.zshrc



# Node.js

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
nvm install 14
nvm use 14

# Golang

brew install go 

mkdir ~/.grc
wget https://raw.githubusercontent.com/aokomorowski/zshrc/master/grc.conf -O ~/.grc/
wget https://raw.githubusercontent.com/aokomorowski/zshrc/master/conf.gotest -O ~/.grc/

# essentials :P

brew cask install slack
brew cask install firefox
brew cask install spotify
brew install docker docker-machine
brew cask install virtualbox
