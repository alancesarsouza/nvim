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
  -- Alpha
  vim.api.nvim_set_hl(0, 'AlphaLogo', c.logo)

  -- Theme
  vim.api.nvim_set_hl(0, 'Cursor', c.cursor)
  vim.api.nvim_set_hl(0, 'CursorReset', { fg = 'white', bg = 'white' })

  -- diagflow
  vim.api.nvim_set_hl(0, 'DiagflowStatusError', { fg = c.status.error })
  vim.api.nvim_set_hl(0, 'DiagflowStatusHint', { fg = c.status.hint })
  vim.api.nvim_set_hl(0, 'DiagflowStatusInfo', { fg = c.status.info })
  vim.api.nvim_set_hl(0, 'DiagflowStatusMisc', { fg = c.status.misc })
  vim.api.nvim_set_hl(0, 'DiagflowStatusWarning', { fg = c.status.warn })
end

return M
