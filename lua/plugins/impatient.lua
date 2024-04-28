local M = {}

M.packer = { 'lewis6991/impatient.nvim' }

M.after = function()
  print('impatient')
  require('impatient')
end

return M