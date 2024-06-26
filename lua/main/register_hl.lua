local c = require 'main.colors'

local M = {}

local base = { bg = c.tabs.backgrond.normal, fg = c.tabs.text.normal }
local visible = { bg = c.tabs.backgrond.visible, fg = c.tabs.text.visible }
local selected = { bg = c.tabs.backgrond.focus, fg = c.tabs.text.focus }

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

  -- diagflow
  vim.api.nvim_set_hl(0, 'DiagflowStatusError', { fg = c.status.error })
  vim.api.nvim_set_hl(0, 'DiagflowStatusHint', { fg = c.status.hint })
  vim.api.nvim_set_hl(0, 'DiagflowStatusInfo', { fg = c.status.info })
  vim.api.nvim_set_hl(0, 'DiagflowStatusMisc', { fg = c.status.misc })
  vim.api.nvim_set_hl(0, 'DiagflowStatusWarning', { fg = c.status.warn })

  -- tabs
  vim.api.nvim_set_hl(0, 'BufferTabpageFill', { bg = c.tab_bg })

  vim.api.nvim_set_hl(0, 'BufferCurrentSign', { bg = c.tab_bg, fg = selected.bg })
  vim.api.nvim_set_hl(0, 'BufferVisibleSign', { bg = c.tab_bg, fg = visible.bg })
  vim.api.nvim_set_hl(0, 'BufferAlternativeSign', { bg = c.tab_bg, fg = visible.bg })
  vim.api.nvim_set_hl(0, 'BufferInactiveSign', { bg = base.bg, fg = c.tab_bg })

  -- current
  vim.api.nvim_set_hl(0, 'BufferCurrent', selected)

  vim.api.nvim_set_hl(0, 'BufferCurrentADDED', { bg = selected.bg, fg = c.status.misc })
  vim.api.nvim_set_hl(0, 'BufferCurrentHINT', { bg = selected.bg, fg = c.status.hint })
  vim.api.nvim_set_hl(0, 'BufferCurrentERROR', { bg = selected.bg, fg = c.status.error })
  vim.api.nvim_set_hl(0, 'BufferCurrentCHANGED', { bg = selected.bg, fg = c.status.hover })
  vim.api.nvim_set_hl(0, 'BufferCurrentINFO', { bg = selected.bg, fg = c.status.info })
  vim.api.nvim_set_hl(0, 'BufferCurrentWARN', { bg = selected.bg, fg = c.status.warn })

  -- alternate
  vim.api.nvim_set_hl(0, 'BufferAlternate', visible)

  vim.api.nvim_set_hl(0, 'BufferAlternateADDED', { bg = visible.bg, fg = c.status.misc })
  vim.api.nvim_set_hl(0, 'BufferAlternateHINT', { bg = visible.bg, fg = c.status.hint })
  vim.api.nvim_set_hl(0, 'BufferAlternateERROR', { bg = visible.bg, fg = c.status.error })
  vim.api.nvim_set_hl(0, 'BufferAlternateCHANGED', { bg = visible.bg, fg = c.status.hover })
  vim.api.nvim_set_hl(0, 'BufferAlternateINFO', { bg = visible.bg, fg = c.status.info })
  vim.api.nvim_set_hl(0, 'BufferAlternateWARN', { bg = visible.bg, fg = c.status.warn })

  -- visible
  vim.api.nvim_set_hl(0, 'BufferVisible', visible)

  vim.api.nvim_set_hl(0, 'BufferVisibleADDED', { bg = visible.bg, fg = c.status.misc })
  vim.api.nvim_set_hl(0, 'BufferVisibleHINT', { bg = visible.bg, fg = c.status.hint })
  vim.api.nvim_set_hl(0, 'BufferVisibleERROR', { bg = visible.bg, fg = c.status.error })
  vim.api.nvim_set_hl(0, 'BufferVisibleCHANGED', { bg = visible.bg, fg = c.status.hover })
  vim.api.nvim_set_hl(0, 'BufferVisibleINFO', { bg = visible.bg, fg = c.status.info })
  vim.api.nvim_set_hl(0, 'BufferVisibleWARN', { bg = visible.bg, fg = c.status.warn })

  -- base
  vim.api.nvim_set_hl(0, 'BufferInactive', base)

  vim.api.nvim_set_hl(0, 'BufferInactiveADDED', { bg = base.bg, fg = c.status.misc })
  vim.api.nvim_set_hl(0, 'BufferInactiveHINT', { bg = base.bg, fg = c.status.hint })
  vim.api.nvim_set_hl(0, 'BufferInactiveERROR', { bg = base.bg, fg = c.status.error })
  vim.api.nvim_set_hl(0, 'BufferInactiveCHANGED', { bg = base.bg, fg = c.status.hover })
  vim.api.nvim_set_hl(0, 'BufferInactiveINFO', { bg = base.bg, fg = c.status.info })
  vim.api.nvim_set_hl(0, 'BufferInactiveWARN', { bg = base.bg, fg = c.status.warn })
end

return M
