local M = {}

M.packer = {
  'lewis6991/gitsigns.nvim', 
  requires = { 'nvim-lua/plenary.nvim' } 
}

M.after = function()
  print("gitsigns")
  require('gitsigns').setup()
end

return M