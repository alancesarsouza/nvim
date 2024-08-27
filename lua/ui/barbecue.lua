-- mostra o path do arquivo
local theme = require 'ui.theme'
local M = {}

M.autocommand = function()
  local status_ok, action = pcall(require, 'barbecue.ui')
  if not status_ok then
    return
  end

  action.update()
end

M.install = {
  'utilyre/barbecue.nvim',
  tag = '*',
  requires = {
    'SmiteshP/nvim-navic',
    'nvim-tree/nvim-web-devicons', -- optional dependency
  },
}

M.barbecue_ac = function() end

M.after = function()
  local status_ok, plugin = pcall(require, 'barbecue')
  if not status_ok then
    return
  end

  vim.opt.updatetime = 200

  plugin.setup {
    create_autocmd = false, -- prevent barbecue from updating itself automatically
    theme = theme.selectedTheme,
  }
end

return M
