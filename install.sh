#! /bin/bash

## TESTAR REMOVER TODAS AS INSTALACOES
# Install eslint
eslint_d --version || npm install -g eslint_d

# Install typescript
typescript-language-server --version || npm install -g typescript typescript-language-server

# Manual install packer
# ls ~/.local/share/nvim/site/pack/packer || git clone --depth 1 https://github.com/wbthomason/packer.nvim\
#   ~/.local/share/nvim/site/pack/packer/start/packer.nvim && nvim ~/.config/nvim
