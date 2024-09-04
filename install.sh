#! /bin/bash
TITLE='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

SYSTEM=$(uname -s)

install_curl () {
  if [ "$SYSTEM" != "Linux" ]; then
    # brew install curl
  else
    sudo apt install curl
  fi
}

install_wget () {
  if [ "$SYSTEM" != "Linux" ]; then
    brew install wget
  else
    sudo apt install wget
  fi
}

install_nvim () {
  if [ "$SYSTEM" != "Linux" ]; then
    brew install neovim
  else
    sudo apt install nvim 
  fi
}

install_cargo () {
  curl https://sh.rustup.rs -sSf | sh
}


install_ripgrep () {
  if [ "$SYSTEM" != "Linux" ]; then
    brew install ripgrep
  else
    sudo apt install ripgrep
  fi
}


echo " ${TITLE}-> Let's execute routines before run nvim${NC}"
# SYSTEM DEPENDENCIES

echo " \n${BLUE} >> checking curl...${NC}";
curl --version || install_curl

echo " \n${BLUE} >> checking web get...${NC}";
wget --version || install_wget

echo " \n${BLUE} >> checking cargo...${NC}";
cargo --version || install_cargo

echo " \n${BLUE} >> checking neo vim...${NC}";
nvim --version || install_nvim

# Telescope 
echo " \n${BLUE} >> checking RipGrep...${NC}";
rg --version || install_ripgrep 

echo " ${TITLE}\n-> DONE!!!${NC}"

# wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip \
# && cd ~/.local/share/fonts \
# && unzip JetBrainsMono.zip \
# && rm JetBrainsMono.zip \
# && fc-cache -fv

# Install kitty terminal
# curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
