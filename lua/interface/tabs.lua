local c = require 'main.colors'
local d = require 'main.descriptions'

local M = {}

M.install = {
  'romgrk/barbar.nvim',
}

M.after = function()
  local status_ok, plugin = pcall(require, 'barbar')

  if not status_ok then
    return
  end

  plugin.setup {
    animation = true,
    tabpages = true,
    clickable = true,
    -- Excludes buffers from the tabline
    -- exclude_ft = { 'javascript' },
    -- exclude_name = { 'package.json' },

    -- Disable highlighting alternate buffers
    highlight_alternate = false,

    -- Enable highlighting visible buffers
    highlight_visible = true,

    icons = {
      buffer_index = true,

      diagnostics = {
        [vim.diagnostic.severity.ERROR] = { enabled = true },
        [vim.diagnostic.severity.WARN] = { enabled = true },
        [vim.diagnostic.severity.INFO] = { enabled = true },
        [vim.diagnostic.severity.HINT] = { enabled = true },
      },
      gitsigns = {
        added = { enabled = true, icon = '+' },
        changed = { enabled = true, icon = '~' },
        deleted = { enabled = true, icon = '-' },
      },

      filetype = { custom_colors = true, enabled = true },

      -- Use a preconfigured buffer appearance— can be 'default', 'powerline', or 'slanted'
      preset = 'default',
      separator = { left = '🭅', right = '🭐', custom_colors = true },
      separator_at_end = false,

      modified = { button = '●', custom_colors = true },
      pinned = { button = '', filename = false, custom_colors = true },
      alternate = { filetype = { enabled = true }, custom_colors = true },
    },
    -- Sets the maximum padding width with which to surround each tab
    maximum_padding = 3,

    -- Sets the minimum padding width with which to surround each tab
    minimum_padding = 1,

    -- Sets the maximum buffer name length.
    maximum_length = 30,

    -- Sets the minimum buffer name length.
    minimum_length = 0,
    semantic_letters = true,
  }

  vim.keymap.set('n', '<leader>1', '<Cmd> BufferGoto 1 <CR>', { desc = d.buff1 })
  vim.keymap.set('n', '<leader>2', '<Cmd> BufferGoto 2 <CR>', { desc = d.buff2 })
  vim.keymap.set('n', '<leader>3', '<Cmd> BufferGoto 3 <CR>', { desc = d.buff3 })
  vim.keymap.set('n', '<leader>4', '<Cmd> BufferGoto 4 <CR>', { desc = d.buff4 })
  vim.keymap.set('n', '<leader>5', '<Cmd> BufferGoto 5 <CR>', { desc = d.buff5 })
  vim.keymap.set('n', '<leader>6', '<Cmd> BufferGoto 6 <CR>', { desc = d.buff6 })
  vim.keymap.set('n', '<leader>7', '<Cmd> BufferGoto 7 <CR>', { desc = d.buff7 })
  vim.keymap.set('n', '<leader>8', '<Cmd> BufferGoto 8 <CR>', { desc = d.buff8 })
  vim.keymap.set('n', '<leader>9', '<Cmd> BufferGoto 9 <CR>', { desc = d.buff9 })

  vim.keymap.set('n', '<leader>q', '<Cmd> BufferClose <CR>', { desc = d.q })
  vim.keymap.set('n', '<C-S-t>', '<Cmd> BufferRestore <CR>', { desc = d.q }) -- ubuntu terminal fucks

  vim.keymap.set('n', '<Tab>', '<Cmd> BufferNext <CR>', { desc = d.buffNext })
  vim.keymap.set('n', '<S-Tab>', '<Cmd> BufferPrevious <CR>', { desc = d.buffPrev })
end

return M
