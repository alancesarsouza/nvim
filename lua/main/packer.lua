-- https://github.com/LunarVim/Neovim-from-scratch/blob/master/lua/user/plugins.lua
local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path,
  }
  print 'Installing packer close and reopen Neovim...'
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require('packer.util').float { border = 'rounded' }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- Interface plugins
  use(require('interface.bluloco').install)
  use(require('interface.bufferline').install)
  use(require('interface.colorizer').install)
  use(require('interface.cursorline').install)
  use(require('interface.focus').install)
  use(require('interface.lualine').install)
  use(require('interface.noice').install)
  use(require('interface.nvim-tree').install)
  use(require('interface.which-key').install)

  -- LSP plugins
  use(require('lsp.cmp').install)
  use(require('lsp.conform').install)
  use(require('lsp.lint').install)
  use(require('lsp.lspconfig').install)
  use(require('lsp.mason').install)
  -- use(require("lsp.treesitter").install)

  -- -- Other plugins
  use(require('plugins.no-config').install)
  use(require('plugins.autoclose').install)
  -- use(require("plugins.autotag").install)
  use(require('plugins.codeium').install)
  use(require('plugins.comment').install)
  use(require('plugins.git-blame').install)
  -- use(require("plugins.gitsigns").install)
  use(require('plugins.impatient').install)
  use(require('plugins.surround').install)
  use(require('plugins.telescope').install)
  use(require('plugins.toggleterm').install)

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end
end)