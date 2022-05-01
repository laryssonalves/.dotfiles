echo "Running dev.sh"

DOTFILES_PATH=~/.dotfiles
BASHRC_PATH=~/.bashrc
ALIASES_PATH=$DOTFILES_PATH/aliases.sh
OMB_URL=https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh
NVM_URL=https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh

echo "Updating -> distro"
sudo apt update -y
sudo apt upgrade -y

echo "Installing -> git curl"
sudo apt install git -y
sudo apt install curl -y

echo "Installing -> oh-my-bash"
curl -fsSL $OMB_URL | bash

echo "Installing -> nvm"
curl -o- $NVM_URL | bash

echo "Clonning dotfiles at $DOTFILES_PATH"
if [ -d "$DOTFILES_PATH" ]; then
    sudo rm -rf $DOTFILES_PATH
fi

git clone https://github.com/laryssonalves/.dotfiles.git $DOTFILES_PATH

echo "Installing -> aliases"
echo -e "\n# Adding my custom aliases" | tee -a $BASHRC_PATH
echo -e "source $ALIASES_PATH" | tee -a $BASHRC_PATH

echo "Installing -> node yarn"
nvm install --lts
sudo apt install yarn -y

echo "Installing -> python and libs"
sudo apt install python3 -y
sudo apt install python3-venv -y
sudo apt install python3-dev -y

# Install postgresql
bash $DOTFILES_PATH/postgresql.sh

# Install nerdfonts
bash $DOTFILES_PATH/nerdfonts.sh

# Remove script 
if [ -f dev.sh ]; then
    rm dev.sh
fi

echo "Please, source your .bashrc using -> source ~/.bashrc"
