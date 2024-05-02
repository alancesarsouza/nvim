local t = require 'main.theme'
local M = {}

local highlight = {
  'RainbowRed',
  'RainbowYellow',
  'RainbowBlue',
  'RainbowOrange',
  'RainbowGreen',
  'RainbowViolet',
  'RainbowCyan',
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

  hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, 'RainbowRed', { fg = t.colors.red })
    vim.api.nvim_set_hl(0, 'RainbowYellow', { fg = t.colors.yellow })
    vim.api.nvim_set_hl(0, 'RainbowBlue', { fg = t.colors.blue })
    vim.api.nvim_set_hl(0, 'RainbowOrange', { fg = t.colors.orange })
    vim.api.nvim_set_hl(0, 'RainbowGreen', { fg = t.colors.green })
    vim.api.nvim_set_hl(0, 'RainbowViolet', { fg = t.colors.violet })
    vim.api.nvim_set_hl(0, 'RainbowCyan', { fg = t.colors.cyan })
  end)

  vim.g.rainbow_delimiters = { highlight = highlight }
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
