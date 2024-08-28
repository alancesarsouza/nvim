local M = {}

M.install = {
  'lukas-reineke/indent-blankline.nvim',

  requires = { { 'echasnovski/mini.nvim', version = '*' } },

  config = function()
    local hooks = require 'ibl.hooks'

    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
      vim.api.nvim_set_hl(0, 'MiniIndentscopeSymbol', { fg = '#ffffcc' })

      vim.api.nvim_set_hl(0, 'RainbowRed', { fg = '#660000' })
      vim.api.nvim_set_hl(0, 'RainbowYellow', { fg = '#666600' })
      vim.api.nvim_set_hl(0, 'RainbowBlue', { fg = '#003366' })
      vim.api.nvim_set_hl(0, 'RainbowOrange', { fg = '#663300' })
      vim.api.nvim_set_hl(0, 'RainbowGreen', { fg = '#006633' })
      vim.api.nvim_set_hl(0, 'RainbowViolet', { fg = '#660066' })
      vim.api.nvim_set_hl(0, 'RainbowCyan', { fg = '#006666' })
    end)

    require('mini.indentscope').setup { symbol = '🭰' }
    require('ibl').setup {
      indent = {
        highlight = {
          'RainbowRed',
          'RainbowYellow',
          'RainbowBlue',
          'RainbowOrange',
          'RainbowGreen',
          'RainbowViolet',
          'RainbowCyan',
        },
        char = '🭰',
      },
      whitespace = { remove_blankline_trail = false },
      scope = { enabled = false },
    }
  end,
}

M.after = function() end

return M
