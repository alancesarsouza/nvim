local d = require 'main.descriptions'
local M = {}

M.install = {
  'folke/which-key.nvim',

  requires = { 'echasnovski/mini.icons' },
}

M.after = function()
  local status_ok, wk = pcall(require, 'which-key')
  if not status_ok then
    return
  end
  wk.setup()
  wk.add {
    { '<leader>f', desc = d.f, prefix = '' },
    { '<leader>g', desc = d.g, prefix = '' },
    { '<leader>l', desc = d.l, prefix = '' },
    { '<leader>p', desc = d.p, prefix = '' },
  }

  wk.register {}
end

return M
