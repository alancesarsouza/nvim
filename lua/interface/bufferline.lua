local d = require 'main.descriptions'

local M = {}

M.install = {
  'akinsho/bufferline.nvim',
  tag = '*',
  requires = { 'nvim-tree/nvim-web-devicons' },
}

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
      left_trunc_marker = '',
      right_trunc_marker = '',
      diagnostics = false,
      diagnostics_update_in_insert = false,
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
