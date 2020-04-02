#! /bin/bash 

# snap
sudo pacman -Sy --noconfirm 
sudo pacman -S --noconfirm snapd
sudo systemctl enable --now snapd.socket

# VS Code

sudo snap install code --classic
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
sudo pacman  -S --noconfirm zsh 
chsh -s "$(command -v zsh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --unattended
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

# essentials :P

sudo snap install spotify
sudo snap install docker
sudo snap install slack --classic

