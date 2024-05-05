local c = require 'main.colors'
local d = require 'main.descriptions'

local M = {}

M.install = {
  'akinsho/bufferline.nvim',
  tag = '*',
  requires = { 'nvim-tree/nvim-web-devicons' },
}

local test = { bg = '#880000', fg = '#ff0000' }

local base = { bg = c.tabs.backgrond.normal, fg = c.tabs.text.normal }
local visible = { bg = c.tabs.backgrond.visible, fg = c.tabs.text.visible }
local seleted = { bg = c.tabs.backgrond.focus, fg = c.tabs.text.focus }

M.after = function()
  local status_ok, plugin = pcall(require, 'bufferline')
  if not status_ok then
    return
  end

  plugin.setup {
    options = {
      toggle_hidden_on_enter = false, -- when you re-enter a hidden group this options re-opens that group so the buffer is visible
      always_show_bufferline = true,
      mode = 'buffers',
      themable = true, -- allows highlight groups to be overriden i.e. sets highlights as default
      numbers = 'ordinal',
      separator_style = 'slant',
      enforce_regular_tabs = true,
      buffer_close_icon = '󰅖',
      modified_icon = '●',
      close_icon = '',
      left_trunc_marker = '◀◁◁',
      right_trunc_marker = '▷▷▶',
      diagnostics = false,
      diagnostics_update_in_insert = false,
    },
    highlights = {
      fill = { fg = base.fg, bg = c.tabs.bar_color },
      background = base,
      tab = base,
      tab_selected = seleted,
      tab_separator = base,
      tab_separator_selected = { fg = seleted.fg, bg = seleted.bg, sp = '#ff0000', underline = true },
      tab_close = base,
      close_button = base,
      close_button_visible = visible,
      close_button_selected = seleted,

      buffer_visible = visible,
      buffer_selected = {
        fg = seleted.fg,
        bg = seleted.bg,
        bold = true,
        italic = true,
      },
      numbers = base,
      numbers_visible = visible,
      numbers_selected = {
        fg = seleted.fg,
        bg = seleted.bg,
        bold = true,
        italic = false,
      },
      offset_separator = test,
      trunc_marker = { fg = c.colors.orange }, -- sinal de tem mais tabs

      separator = { fg = c.tabs.bar_color, bg = base.bg },
      separator_selected = { fg = c.tabs.bar_color, bg = seleted.bg },
      separator_visible = { fg = c.tabs.bar_color, bg = visible.bg },

      indicator_selected = { fg = c.tabs.indicator.focus, bg = seleted.bg },
      indicator_visible = { fg = c.tabs.indicator.visible, bg = visible.bg },

      modified = { fg = c.tabs.modified.normal, bg = base.bg },
      modified_selected = { fg = c.tabs.modified.focus, bg = seleted.bg },
      modified_visible = { fg = c.tabs.modified.visible, bg = visible.bg },

      diagnostic = { fg = c.tabs.diagnostic.normal, bg = base.bg },
      diagnostic_selected = { fg = c.tabs.diagnostic.focus, bg = seleted.bg },
      diagnostic_visible = { fg = c.tabs.diagnostic.visible, bg = visible.bg },

      hint = { fg = c.tabs.hint.normal, bg = base.bg },
      hint_selected = { fg = c.tabs.hint.focus, bg = seleted.bg },
      hint_visible = { fg = c.tabs.hint.visible, bg = visible.bg },

      hint_diagnostic = { fg = c.tabs.hint_diagnostic.normal, bg = base.bg },
      hint_diagnostic_selected = { fg = c.tabs.hint_diagnostic.focus, bg = seleted.bg },
      hint_diagnostic_visible = { fg = c.tabs.hint_diagnostic.visible, bg = visible.bg },

      info = { fg = c.tabs.info.normal, bg = base.bg },
      info_selected = { fg = c.tabs.info.focus, bg = seleted.bg },
      info_visible = { fg = c.tabs.info.visible, bg = visible.bg },

      info_diagnostic = { fg = c.tabs.info_diagnostic.normal, bg = base.bg },
      info_diagnostic_selected = { fg = c.tabs.info_diagnostic.focus, bg = seleted.bg },
      info_diagnostic_visible = { fg = c.tabs.info_diagnostic.visible, bg = visible.bg },

      warning = { fg = c.tabs.warning.normal, bg = base.bg },
      warning_selected = { fg = c.tabs.warning.focus, bg = seleted.bg },
      warning_visible = { fg = c.tabs.warning.visible, bg = visible.bg },

      warning_diagnostic = { fg = c.tabs.warning_diagnostic.normal, bg = base.bg },
      warning_diagnostic_selected = { fg = c.tabs.warning_diagnostic.focus, bg = seleted.bg },
      warning_diagnostic_visible = { fg = c.tabs.warning_diagnostic.visible, bg = visible.bg },

      error = { fg = c.tabs.error.normal, bg = base.bg },
      error_selected = { fg = c.tabs.error.focus, bg = seleted.bg },
      error_visible = { fg = c.tabs.error.visible, bg = visible.bg },

      error_diagnostic = { fg = c.tabs.error_diagnostic.normal, bg = base.bg },
      error_diagnostic_selected = { fg = c.tabs.error_diagnostic.focus, bg = seleted.bg },
      error_diagnostic_visible = { fg = c.tabs.error_diagnostic.visible, bg = visible.bg },

      duplicate = { fg = c.tabs.duplicate.normal, bg = base.bg },
      duplicate_selected = { fg = c.tabs.duplicate.focus, bg = seleted.bg },
      duplicate_visible = { fg = c.tabs.duplicate.visible, bg = visible.bg },

      pick = { fg = c.tabs.pick.normal, bg = base.bg },
      pick_selected = { fg = c.tabs.pick.focus, bg = seleted.bg },
      pick_visible = { fg = c.tabs.pick.visible, bg = visible.bg },
    },
  }

  vim.keymap.set('n', '<A-1>', '<Cmd> BufferLineGoToBuffer 1 <CR>', { desc = d.buff1 })
  vim.keymap.set('n', '<A-2>', '<Cmd> BufferLineGoToBuffer 2 <CR>', { desc = d.buff2 })
  vim.keymap.set('n', '<A-3>', '<Cmd> BufferLineGoToBuffer 3 <CR>', { desc = d.buff3 })
  vim.keymap.set('n', '<A-4>', '<Cmd> BufferLineGoToBuffer 4 <CR>', { desc = d.buff4 })
  vim.keymap.set('n', '<A-5>', '<Cmd> BufferLineGoToBuffer 5 <CR>', { desc = d.buff5 })
  vim.keymap.set('n', '<A-6>', '<Cmd> BufferLineGoToBuffer 6 <CR>', { desc = d.buff6 })
  vim.keymap.set('n', '<A-7>', '<Cmd> BufferLineGoToBuffer 7 <CR>', { desc = d.buff7 })
  vim.keymap.set('n', '<A-8>', '<Cmd> BufferLineGoToBuffer 8 <CR>', { desc = d.buff8 })
  vim.keymap.set('n', '<A-9>', '<Cmd> BufferLineGoToBuffer 9 <CR>', { desc = d.buff9 })

  vim.keymap.set('n', '<leader>bf', '<Cmd>  <CR>', { desc = d.buffNext })
  vim.keymap.set('n', '<Tab>', '<Cmd> bnext <CR>', { desc = d.buffNext })
  vim.keymap.set('n', '<S-Tab>', '<Cmd> bprev <CR>', { desc = d.buffPrev })
end

return M
