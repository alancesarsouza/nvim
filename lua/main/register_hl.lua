local c = require 'main.colors'

local M = {}

M.register_rainbow = function()
  vim.api.nvim_set_hl(0, 'RainbowRed', { fg = c.colors.red })
  vim.api.nvim_set_hl(0, 'RainbowYellow', { fg = c.colors.yellow })
  vim.api.nvim_set_hl(0, 'RainbowBlue', { fg = c.colors.blue })
  vim.api.nvim_set_hl(0, 'RainbowOrange', { fg = c.colors.orange })
  vim.api.nvim_set_hl(0, 'RainbowGreen', { fg = c.colors.green })
  vim.api.nvim_set_hl(0, 'RainbowViolet', { fg = c.colors.violet })
  vim.api.nvim_set_hl(0, 'RainbowCyan', { fg = c.colors.cyan })
end

M.set_cursor_color = function()
  vim.opt.guicursor = 'n-v-c:block-Cursor,i-ci-ve:ver25-Cursor,r-cr-o:hor20-Cursor,a:blinkon100'
end

M.highlight = function()
  vim.api.nvim_set_hl(0, 'AlphaLogo', c.logo)
  vim.api.nvim_set_hl(0, 'Cursor', c.cursor)
  vim.api.nvim_set_hl(0, 'CursorReset', { fg = 'white', bg = 'white' })
end

return M
