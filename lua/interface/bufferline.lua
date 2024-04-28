local M = {}

M.packer = {
  'akinsho/bufferline.nvim', 
  tag = "*", 
  requires = 'nvim-tree/nvim-web-devicons'
}

M.after = function()
  print("bufferline")
  require("bufferline").setup{}
end

return M