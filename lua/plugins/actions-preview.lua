local M = {}

M.install = {
  'aznhe21/actions-preview.nvim',
}

M.after = function()
  local status_ok, plugin = pcall(require, 'actions-preview')
  if not status_ok then
    return
  end

  plugin.setup {
    -- diff = { algorithm = 'patience', ignore_whitespace = true },
    -- telescope = require('telescope.themes').get_dropdown { winblend = 10 },
  }

  vim.keymap.set({ 'v', 'n' }, '<leader>la', plugin.code_actions)
end

return M
