local M = {}

M.packer = { 'folke/which-key.nvim' }

M.after = function()
  print('which-key')
  require('which-key').setup()
end

return M