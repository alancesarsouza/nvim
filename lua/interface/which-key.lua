local d = require 'main.descriptions'
local M = {}

M.install = {
  'folke/which-key.nvim',
}

M.after = function()
  local status_ok, wk = pcall(require, 'which-key')
  if not status_ok then
    return
  end
  wk.setup()

  wk.register {
    ['<leader>f'] = d.f,
    ['<leader>g'] = d.g,
    ['<leader>l'] = d.l,
    ['<leader>p'] = d.p,
  }
end

return M
