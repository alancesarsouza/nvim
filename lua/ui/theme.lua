local hl = require 'main.register_hl'

local M = {}

local bluloco = {
  packer = {
    'uloco/bluloco.nvim',
    requires = { 'rktjmp/lush.nvim' },
  },
  config = function()
    local status_ok, plugin = pcall(require, 'bluloco')
    if not status_ok then
      return
    end

    plugin.setup {
      style = 'dark',
      transparent = true,
      italics = true,
      terminal = vim.fn.has 'gui_running' == 1,
      guicursor = true,
    }

    vim.cmd 'colorscheme bluloco'
    hl.set_cursor_color()
  end,
}

M.install = bluloco.packer
M.after = bluloco.config

M.external = { selectedTheme = 'bluloco' }

return M
