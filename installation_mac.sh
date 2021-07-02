#! /bin/bash


echo "Installing Homebrew"
echo | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

if ! command -v brew &> /dev/null
then
    echo "Brew could not be found"
    exit
fi

# VS Code
echo "Installing VS Code"
brew cask install visual-studio-code

cat << EOF >> ~/.bash_profile
# Add Visual Studio Code (code)
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF

extensions=(
formulahendry.auto-close-tag
formulahendry.auto-rename-tag
ms-azuretools.vscode-docker
golang.go
redhat.vscode-yaml
timonwong.shellcheck
eamodio.gitlens
amazonwebservices.aws-toolkit-vscode
dahong.theme-bear
james-yu.latex-workshop
scalameta.metals
hashicorp.terraform
)
for ext in "${extensions[@]}"; do
    echo "Installing $ext"
    code  --install-extension "$ext"
done

#ohmyzsh
echo "Installing ZSH"
brew install zsh
brew install wget
echo | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
brew install thefuck
git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mv PowerlineSymbols.otf /Library/Fonts
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"
wget https://raw.githubusercontent.com/aokomorowski/zshrc/master/.zshrc_mac -O ~/.zshrc



# Node.js
echo "Installing NVM"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
nvm install 14
nvm use 14

# Golang
echo "Installing Go!"
brew install go

mkdir ~/.grc
wget https://raw.githubusercontent.com/aokomorowski/zshrc/master/grc.conf -O ~/.grc/
wget https://raw.githubusercontent.com/aokomorowski/zshrc/master/conf.gotest -O ~/.grc/

# Java 10

brew cask install java8

# essentials :P

brew cask install postman
brew install texlive
brew cask install slack
brew cask install firefox
brew cask install spotify
brew install shellcheck
brew install docker docker-machine
brew cask install virtualbox
brew services start docker-machine
brew install ossp-uuid
