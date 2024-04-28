print('OK - packer')	

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Interface plugins
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.6', -- or branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    'uloco/bluloco.nvim',
    requires = { 'rktjmp/lush.nvim' }
  }

  -- LSP plugins
  use ('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})
end)