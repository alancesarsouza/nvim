local r = require 'main.rules'
local c = require 'main.colors'
local M = {}

M.install = {
  'petertriho/nvim-scrollbar',
  requires = {
    'kevinhwang91/nvim-hlslens',
  },
}

M.after = function()
  local status_ok, scrollbar = pcall(require, 'scrollbar')

  local git_ok, gitsigns = pcall(require, 'scrollbar.handlers.gitsigns')
  local search_ok, search = pcall(require, 'scrollbar.handlers.search')

  local hlslens_ok, hlslens = pcall(require, 'hlslens')

  if not status_ok or not git_ok or not search_ok or not hlslens_ok then
    return
  end

  gitsigns.setup {}
  search.setup()
  hlslens.setup()

  scrollbar.setup {
    show = true,
    show_in_active_only = false,
    folds = 1000, -- handle folds, set to number to disable folds if no. of lines in buffer exceeds this
    throttle_ms = 100,
    handle = {
      text = ' ',
      blend = 80, -- Integer between 0 and 100. 0 for fully opaque and 100 to full transparenc. Defaults to 30.
      color = c.secondary,
      -- highlight = 'CursorColumn',
      highlight = 'AlphaLogo',
    },
    marks = {
      Cursor = { text = '◁', priority = 1, color = c.cursor.bg },
      Search = { text = { '─', '━' }, priority = 1, color = c.status.search, highlight = 'Search' },
      Error = {
        text = { '─', '━' },
        priority = 2,
        color = c.status.error,
        highlight = 'DiagnosticVirtualTextError',
      },
      Warn = { text = { '─', '━' }, priority = 3, color = c.status.warn, highlight = 'DiagnosticVirtualTextWarn' },

      GitAdd = { text = '┥', priority = 4, color = c.git.add, highlight = 'GitSignsAdd' },
      GitChange = { text = '┤', priority = 4, color = c.git.change, highlight = 'GitSignsChange' },
      GitDelete = { text = '│', priority = 4, color = c.git.delete, highlight = 'GitSignsDelete' },

      Hint = { text = { '─', '━' }, priority = 5, color = c.status.hint, highlight = 'DiagnosticVirtualTextHint' },
      Info = { text = { '─', '━' }, priority = 6, color = c.status.info },
      Misc = { text = { '─', '━' }, priority = 7, color = c.status.misc, highlight = 'Normal' },
    },
    excluded_buftypes = { 'terminal' },
    excluded_filetypes = r.ignore_files.scrollbar,
    handlers = {
      cursor = true,
      diagnostic = true,
      gitsigns = true, -- Requires gitsigns
      handle = true,
      search = true, -- Requires hlslens
      ale = false, -- Requires ALE
    },
  }
end

return M
