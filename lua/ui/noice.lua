local M = {}

M.install = {
  'folke/noice.nvim',
  event = 'VimEnter', -- works only with `event = "VimEnter"snapcraft`
  requires = {
    'MunifTanjim/nui.nvim',
    'rcarriga/nvim-notify',
    'hrsh7th/nvim-cmp',
  },
  config = function()
    require('noice').setup {
      messages = { enabled = true, view = false },
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
