# SERVICES
local name="Alan Souza"
local email="alancesarsouza@gmail.com"

alias -g cl="clear";
alias -g lk="exa -laGF";
alias -g typecheck="yarn tsc --project tsconfig.json --noEmit"
alias -g forcecode="./node_modules/.bin/prettier . --write && yarn lint --fix"

# TERMINAL UTILS
alias -g ezsh="exec zsh";
alias -g read-ssh="cat ~/.ssh/id_ed25519.pub";
alias -g new-ssh="ssh-keygen -t ed25519 -C '$email' && read-ssh; git config --global user.name '$name'; git config --global user.email $email";
alias -g @c="code .";
alias -g @install="sudo apt-get install";
alias -g @off="pactl unload-module module-loopback";
alias -g @on="pactl load-module module-loopback latency_msec=1";
alias -g @open="nautilus . || explorer.exe .";
alias -g hist="history -E";
alias -g hist="history -E";
alias -g vim="/home/alan/Downloads/nvim-linux64/bin/nvim";
alias -g abak="mv ~/.config/nvim.baks/current ~/.config/nvim.baks/current.bak;  cp -r ~/.config/nvim ~/.config/nvim.baks/current";
alias -g lsbak="lk ~/.config/nvim.baks";
alias -g ccache="rm -rf ~/.local/share/nvim; rm -rf ~/.local/state/nvim; rm -rf  ~/.cache/nvim";
alias -g @update="sudo apt update && apt list --upgradable && sudo apt upgrade";
alias -g @bt="bluetoothctl";

# VIM
alias -g @alias="vim ~/.oh-my-zsh/custom/ALIAS.zsh";
alias -g @func="vim ~/.oh-my-zsh/custom/FUNCTIONS.zsh";
alias -g @zsh="vim ~/.zshrc";

# YARN
alias -g ydep="yarn upgrade-interactive --latest"
alias -g yd="clear && yarn dev"
