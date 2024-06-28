local hl = require 'main.register_hl'
local M = {}

M.install = {
  'uloco/bluloco.nvim',
  requires = 'rktjmp/lush.nvim',
}

M.after = function()
  local status_ok, plugin = pcall(require, 'bluloco')
  if not status_ok then
    return
  end

  plugin.setup {
    style = 'dark', -- "auto" | "dark" | "light"
    transparent = true,
    italics = true,
    terminal = vim.fn.has 'gui_running' == 1, -- bluoco colors are enabled in gui terminals per default.
    guicursor = true,
  }

  vim.cmd 'colorscheme bluloco'

  hl.set_cursor_color()
end

return M
