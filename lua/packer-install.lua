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

-- MINI.NVIM - https://github.com/echasnovski/mini.nvim?tab=readme-ov-file#modules

return packer.startup(function(use)
  -- LSP plugins
  use(require('lsp.cmp').install)
  use(require('lsp.conform').install)
  use(require('lsp.lint').install)
  use(require('lsp.lspconfig').install)
  use(require('lsp.mason').install)
  use(require('lsp.treesitter').install)

  -- UI plugins
  use(require('ui.alpha-nvim').install)
  use(require('ui.barbar').install)
  use(require('ui.bluloco').install)
  use(require('ui.focus').install)
  use(require('ui.git-diff').install)
  use(require('ui.gitsigns').install)
  use(require('ui.impatient').install)
  use(require('ui.indent-blankline').install)
  use(require('ui.lualine').install)
  use(require('ui.noice').install)
  use(require('ui.scrollbar').install)
  use(require('ui.telescope').install)
  use(require('ui.toggleterm').install)
  use(require('ui.tree').install)

  -- Other plugins
  use(require('plugins.actions-preview').install)
  use(require('plugins.autopair').install)
  use(require('plugins.codeium').install)
  use(require('plugins.colorizer').install)
  use(require('plugins.comment').install)
  use(require('plugins.cursorline').install)
  use(require('plugins.git-blame').install)
  use(require('plugins.illuminate').install)
  use(require('plugins.virtual-text').install)
  use(require('plugins.surround').install)
  use(require('plugins.wakatime').install)
  use(require('plugins.which-key').install)

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end
end)
