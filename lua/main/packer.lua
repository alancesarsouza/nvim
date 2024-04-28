print('\nOK - packer')	

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Interface plugins
  use (require('interface.bluloco').packer)
  use (require('interface.bufferline').packer)
  use (require('interface.colorizer').packer)
  use (require('interface.cursorline').packer)
  use (require('interface.git-blame').packer)
  use (require('interface.lualine').packer)
  use (require('interface.noice').packer) -- not wokrs
  use (require('interface.nvim-tree').packer)
  use (require('interface.surround').packer)
  use (require('interface.telescope').packer)
  use (require('interface.toggleterm').packer)
  use (require('interface.which-key').packer)


  -- LSP plugins
  use (require('lsp.treesitter').packer)

  -- -- Other plugins
  use (require('plugins.comment').packer)
  use (require('plugins.impatient').packer)
  use (require('plugins.gitsigns').packer)
end)

