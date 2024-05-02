local t = require 'main.theme'
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

  gitsigns.setup()
  search.setup()

  hlslens.setup()

  scrollbar.setup {
    show = true,
    show_in_active_only = false,
    folds = 1000, -- handle folds, set to number to disable folds if no. of lines in buffer exceeds this
    throttle_ms = 100,
    handle = {
      text = ' ',
      blend = 80, -- Integer between 0 and 100. 0 for fully opaque and 100 to full transparent. Defaults to 30.
      color = t.secondary,
      highlight = 'CursorColumn',
    },
    marks = {
      Cursor = { text = '◁', priority = 0, color = t.cursor.fg },
      Error = {
        text = { '─', '━' },
        priority = 2,
        -- color = t.status.error,
        highlight = 'DiagnosticVirtualTextError',
      },
      GitAdd = { text = '┥', priority = 7, color = t.git.add, highlight = 'GitSignsAdd' },
      GitChange = { text = '┤', priority = 7, color = t.git.change, highlight = 'GitSignsChange' },
      GitDelete = { text = '│', priority = 7, color = t.git.delete, highlight = 'GitSignsDelete' },
      Hint = { text = { '─', '━' }, priority = 5, color = t.status.hint, highlight = 'DiagnosticVirtualTextHint' },
      Info = { text = { '─', '━' }, color = t.status.info },
      Misc = { text = { '─', '━' }, priority = 6, color = t.status.misc, highlight = 'Normal' },
      Search = { text = { '─', '━' }, priority = 1, color = t.status.search, highlight = 'Search' },
      Warn = { text = { '─', '━' }, priority = 3, color = t.status.warn, highlight = 'DiagnosticVirtualTextWarn' },
    },
    excluded_buftypes = { 'terminal' },
    excluded_filetypes = {
      'cmp_docs',
      'cmp_menu',
      'noice',
      'prompt',
      'TelescopePrompt',
      'NvimTree',
    },
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
