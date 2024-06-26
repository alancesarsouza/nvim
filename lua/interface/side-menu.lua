local d = require 'main.descriptions'
local M = {}

M.install = {
  'nvim-tree/nvim-tree.lua',
  requires = { 'nvim-tree/nvim-web-devicons' },
}

M.after = function()
  local status_ok, plugin = pcall(require, 'nvim-tree')

  if not status_ok then
    return
  end

  -- disable netrw at the very start of your init.lua
  vim.g.loaded_netrw = 1
  vim.g.loaded_netrwPlugin = 1

  -- NvimTreeCollapse
  vim.keymap.set('n', '<leader>e', '<Cmd> NvimTreeFindFileToggle <CR>', { desc = d.menu })

  plugin.setup {
    -- tree = { toggle_hidden_filter = false },
    renderer = {
      icons = {
        glyphs = {
          git = {
            unstaged = '🞴',
            staged = '✓',
            unmerged = '',
            renamed = '➜',
            untracked = '★',
            deleted = '',
            ignored = '◌',
          },
        },
      },
    },
    view = {
      width = 35,
    },
  }
end

return M
