local M = {}

M.packer = {'yamatsum/nvim-cursorline'}

M.after = function()
  print('cursorline')
  require('nvim-cursorline').setup {
    cursorline = {
      enable = true,
      timeout = 1000,
      number = false,
    },
    cursorword = {
      enable = true,
      min_length = 3,
      hl = { underline = false },
    },
  }
end

return M