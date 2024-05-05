local hl = require 'main.register_hl'
local M = {}

local highlight = {
  'RainbowRed',
  'RainbowOrange',
  'RainbowYellow',
  'RainbowGreen',
  'RainbowBlue',
  'RainbowCyan',
  'RainbowViolet',
}

M.install = {
  'lukas-reineke/indent-blankline.nvim',
  requires = { 'echasnovski/mini.indentscope' },
}

M.after = function()
  local hook_ok, hooks = pcall(require, 'ibl.hooks')
  local indentscope_ok, indentscope = pcall(require, 'mini.indentscope')
  local status_ok, ibl = pcall(require, 'ibl')

  if not status_ok or not hook_ok or not indentscope_ok then
    return
  end

  hooks.register(hooks.type.HIGHLIGHT_SETUP, hl.register_rainbow)

  vim.g.Theme_delimiters = { highlight = highlight }
  ibl.setup {
    indent = { highlight = highlight, char = '' },
    whitespace = {
      highlight = highlight,
      remove_blankline_trail = false,
    },
    scope = { enabled = false },
  }

  hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)

  indentscope.setup {
    draw = {
      -- Delay (in ms) between event and start of drawing scope indicator
      delay = 100,
      -- Symbol priority. Increase to display on top of more symbols.
      priority = 2,
    },

    -- Which character to use for drawing scope indicator
    symbol = '│',
  }
end

return M
