local M = {}

M.packer = {
  'nvim-telescope/telescope.nvim', tag = '0.1.6', -- or branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}

M.after = function()
  print("telescope")
  local builtin = require 'telescope.builtin'
  local keymap = vim.keymap

  keymap.set('n', '<leader>f', builtin.find_files, {})
  keymap.set('n', '<leader>g', builtin.live_grep, {})

  vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
  vim.keymap.set('n', '<leader>fo', builtin.oldfiles, {})
  vim.keymap.set('n', '<leader>fm', builtin.marks, {})

  local actions = require 'telescope.actions'
  require('telescope').setup {
    defaults = {
      mappings = {
        i = {
          ['esc'] = actions.close,
          ['<c-c>'] = actions.close,
        },
      },
      file_ignore_patterns = {
        'codegen.ts',
        '.git',
        'lazy-lock.json',
        '*-lock.yaml',
        'node_modules',
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
end

return M