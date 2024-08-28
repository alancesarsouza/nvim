# Instalando o Neovim:

- note: versao minima 0.10

### Link para usar a versao mais atualizada [Link para usar a versão mais atualizada](https://github.com/neovim/neovim/blob/master/INSTALL.md)

```sh
sudo apt update && (nvim --verion || sudo apt install neovim)
```

## instalando o Git

```sh
sudo apt update && (git --verion || sudo apt install git)

```

## clonando o repositorio

```sh
# save backup
[ -d "~/.config/nvim" ] && mv ~/.config/nvim ~/.config/nvim.bak;

# remove cache
rm -rf ~/.local/share/nvim;
rm -rf ~/.local/state/nvim;
rm -rf  ~/.cache/nvim;

```

- Caso exista alguma configuracao anterior, ela estara em `~/.config/nvim.bak`

---

## Rotinas

### executando as rotinas de instalacao de pacotes basicos

```sh
[ ! -d "$HOME/.config" ] && mkdir ~/.config
[ ! -d "$HOME/.config/nvim" ] && git clone https://github.com/alancesarsouza/nvim.git ~/.config/nvim
ls ~/.config/nvim && sh ~/.config/nvim/install.sh
```

### Finalmente execute `nvim`

```sh
nvim

```

- Serao instalados os pacotes plugins, basta concordar e reiniciar caso necessario

---

## remover cache ou reinstalar pacotes

```sh

# remove cache
rm -rf ~/.local/share/nvim;
rm -rf ~/.local/state/nvim;
rm -rf  ~/.cache/nvim;
rm -rf  ~/.config/nvim/plugin;
```

- isso forcara o nvim a reinstalar todos os pacotes

---

### Como adicionar um novo plugin

1. adicione um arquivo com o nome do plugin na pasta correspondente ao tipo do plugin (plugins seria a pasta generica)
2. copie o codigo

```.lua
-- descricao do plugin (opcional)
local M = {}

M.install = { 'link_do_plugin_do_github.nvim' }

M.after = function()
  local status_ok, plugin = pcall(require, 'nome_plugin')
  if not status_ok then
    return
  end

  plugin.setup {}
end

return M
```

3. adicione o path do plugin no arquivo de liberacao (~/.config/nvim/lua/release.lua)

- lembre-se de adicionar -- stable caso o comando `checkhealth nome_plugin` nao retorne erro

## CHECK HEALTH

### execute o comando abaixo

```sh
sh ~/.config/nvim/checkhealth.sh

```

- leia os repositorios dentro de `lua/checkhealth/`
- caso tenha algum possua algum WARNNING ou ERROR resolva o quanto antes
- fique de olho no change-log e veja o historico do arquivo, para saber se o problema e recente
