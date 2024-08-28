# NEOVIM FROM ALAN SOUZA

### INSTALL NEOVIM

```sh
sudo apt update && (nvim --verion || sudo apt install neovim)
```

### GIT CHECK

```sh
sudo apt update && (git --verion || sudo apt install git)

```

### CLONE REPOSITORY

- if exists **nvim** folder run this code

```sh
# save backup
[ -d "~/.config/nvim" ] && mv ~/.config/nvim ~/.config/nvim.bak;

# removes cache
rm -rf ~/.local/share/nvim;
rm -rf ~/.local/state/nvim;
rm -rf  ~/.cache/nvim;

```

---

- clone my config and execute rotines required

```sh
[ ! -d "$HOME/.config" ] && mkdir ~/.config
[ ! -d "$HOME/.config/nvim" ] && git clone https://github.com/alancesarsouza/nvim.git ~/.config/nvim
ls ~/.config/nvim && sh ~/.config/nvim/install.sh
```

### FINALY EXECUTE NVIM

```sh
nvim

```

### ADDING A NEW PLUGIN

1. add a file with plugin name on correct folder
2. add this structure
```.lua
-- descricao da lib
local M = {}

M.install = { 'github/libname.nvim' }

M.after = function()
  local status_ok, plugin = pcall(require, 'libname')
  if not status_ok then
    return
  end

  plugin.setup {}
end

return M
```
