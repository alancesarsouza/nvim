#! /bin/bash
TITLE='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo " ${TITLE}-> Let's execute routines before run nvim${NC}"
# SYSTEM DEPENDENCIES

echo " \n${BLUE} >> checking curl...${NC}";
curl --version ||  sudo apt install curl

echo " \n${BLUE} >> checking cargo...${NC}";
cargo --version ||  curl https://sh.rustup.rs -sSf | sh

# Telescope 
echo " \n${BLUE} >> checking RipGrep...${NC}";
rg --version #|| sudo apt install ripgrep

# ---
echo " ${TITLE}\n-> DONE!!!${NC}"

# wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip \
# && cd ~/.local/share/fonts \
# && unzip JetBrainsMono.zip \
# && rm JetBrainsMono.zip \
# && fc-cache -fv

# Install kitty terminal
# curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
