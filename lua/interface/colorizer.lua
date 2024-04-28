local M = {}

M.packer = { 'norcalli/nvim-colorizer.lua' }

M.after = function()
  print("colorizer")
  require'colorizer'.setup()
end

return M