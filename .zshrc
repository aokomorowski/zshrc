# Path to your oh-my-zsh installation.
export ZSH="/Users/akomorowski/.oh-my-zsh"

ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"


plugins=(
ansible
aws
buffalo
brew
colored-man-pages
colorize
cp
docker
docker-compose
docker-machine
emoji
git
golang
history
history-substring-search
npm
npx
nvm
osx
pip
python
thefuck
zsh-autosuggestions
zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

alias go="grc go"