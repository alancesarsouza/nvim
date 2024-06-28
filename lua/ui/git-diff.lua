local d = require 'main.descriptions'
local M = {}

M.install = { 'sindrets/diffview.nvim' }

M.after = function()
  require('diffview').setup {
    view = {},
  }

  -- Diffview - https://github.com/sindrets/diffview.nvim?tab=readme-ov-file#usage
  vim.keymap.set('n', '<leader>gc', '<Cmd> DiffviewClose <CR>', { desc = d.gc })
  vim.keymap.set('n', '<leader>gg', '<Cmd> DiffviewOpen <CR>', { desc = d.gg })
  vim.keymap.set('n', '<leader>gh', '<Cmd> DiffviewFileHistory <CR>', { desc = d.gh })
  vim.keymap.set('n', '<leader>gr', '<Cmd> DiffviewRefresh <CR>', { desc = d.gr })
end

return M
