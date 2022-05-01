echo "Running nerdfonts.sh"

read -e -p "Install NerdFonts? [y/n] " INSTALLNF

if [ "$INSTALLNF" = "y" ]; then
  NERDFONTS_URL=https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip

  echo "Installing -> unzip fontconfig"
  sudo apt install unzip -y
  sudo apt install fontconfig -y

  echo "Installing -> nerdfonts -> $NERDFONTS_URL"
  wget $NERDFONTS_URL
  mkdir ~/.fonts
  unzip FiraCode.zip -d ~/.fonts
  fc-cache -fv
  sudo rm FiraCode.zip
fi
