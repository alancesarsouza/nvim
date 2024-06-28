-- pesquisas por palavras
local d = require 'main.descriptions'
local M = {}

M.install = {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.6', -- or branch = '0.1.x',
  requires = { { 'nvim-lua/plenary.nvim' } },
}

M.after = function()
  local status_ok, builtin = pcall(require, 'telescope.builtin')
  if not status_ok then
    return
  end

  local actions = require 'telescope.actions'

  require('telescope').setup {
    defaults = {
      mappings = {
        i = {
          ['esc'] = actions.close,
          ['<C-c>'] = actions.close,
        },
      },
      file_ignore_patterns = {
        'node_modules/*',
        'codegen.ts',
        '.git',
        'lazy-lock.json',
        '*-lock.yaml',
        '%.lock',
      },
      dynamic_preview_title = true,
      path_display = { 'smart' },
    },
    pickers = {
      find_files = { hidden = true },
    },
    layout_config = {
      horizontal = {
        preview_cutoff = 100,
        preview_width = 0.5,
      },
    },
  }

  vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = d.ff })
  vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = d.fg })
  vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = d.fb })
  vim.keymap.set('n', '<leader>fo', builtin.oldfiles, { desc = d.fo })
  vim.keymap.set('n', '<leader>fm', builtin.marks, { desc = d.fm })
end

return M
