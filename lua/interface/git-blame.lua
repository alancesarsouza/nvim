local M = {}

M.packer = { 'f-person/git-blame.nvim' }

M.after = function()
  print('git-blame')
  require('gitblame').setup {}
end

return M