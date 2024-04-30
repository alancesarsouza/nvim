local M = {}

M.install = {
  'lewis6991/gitsigns.nvim',
  requires = { 'nvim-lua/plenary.nvim' },
}

M.after = function()
  require('gitsigns').setup()
end

return M
