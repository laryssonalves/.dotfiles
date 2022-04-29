PURPLE='\033[0;35m'
NC='\033[0m' # No Color

function output() {
  echo -e "${PURPLE}$1${NC}"
}

output "Installing -> git"
sudo apt install git -y

output "Installing -> oh-my-bash"
curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh | bash
source $HOME/.profile

output "Installing -> nvm"
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

output "Installing -> node yarn"
nvm install --lts
sudo apt install yarn -y

output "Installing -> python and libs"
sudo apt install python3
sudo apt install python3-venv -y
sudo apt install python3-dev -y

output "Clonning dotfiles at ${HOME}"
git clone https://github.com/laryssonalves/dotfiles.git $HOME