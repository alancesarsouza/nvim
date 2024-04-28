local M = {}

M.packer = ({
  "kylechui/nvim-surround",
  tag = "*", 
})

M.after = function()
  print('surround')
  require("nvim-surround").setup()
end

return M