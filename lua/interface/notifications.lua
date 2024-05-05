local M = {}

M.install = {
  'folke/noice.nvim',
  event = 'VimEnter', -- works only with `event = "VimEnter"`
  requires = {
    'MunifTanjim/nui.nvim',
    'rcarriga/nvim-notify',
    'hrsh7th/nvim-cmp',
  },

  config = function()
    require('noice').setup {
      inc_rename = { cmdline = { format = { IncRename = { icon = '⟳' } } } },
      format = { level = { icons = { error = '✖', warn = '▼', info = '●' } } },
      popupmenu = { kind_icons = false },
      cmdline = {
        format = {
          cmdline = { icon = '⮞' },
          search_down = { icon = '🔍▽' },
          search_up = { icon = '🔍△' },
          filter = { icon = '＄⮚' },
          lua = { icon = ' ⮚' },
          help = { icon = '？⮚' },
        },
      },
      views = {
        split = { enter = true },
        cmdline_popup = {
          border = { style = 'none', padding = { 2, 3 } },
          filter_options = {},
          win_options = { winhighlight = 'NormalFloat:NormalFloat,FloatBorder:FloatBorder' },
        },
      },
      routes = {
        {
          filter = { event = 'cmdline', find = '^%s*[/?]', min_height = 20 },
          view = 'cmdline',
        },
      },
    }
  end,
}

M.after = function() end

return M
