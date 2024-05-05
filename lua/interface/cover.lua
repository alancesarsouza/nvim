local M = {}

local logo = {
  [[                                                 ▒▒▒]],
  [[                                               ▒▒░░▒▒▒]],
  [[    ┌──────────────────────────────────────┐▒▒▒░░░░░░▒▒▒▒       ┌──────────────────────────────────────┐]],
  [[   ┌┘┌────────────────────────────────────┐└┐░░░░░░░░░░░▒▒▒    ┌┘┌────────────────────────────────────┐└┐]],
  [[   │┌┘▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓└┐│░░░░░░░░░░░░░▒▒▒▒ │┌┘▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓└┐│]],
  [[   │└┐▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓┌┘│░░░░░░░░░░░░░░░░▒▒│└┐▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓┌┘│]],
  [[   └┐└───────┐▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓┌────┘┌┘░░░░░░░░░░░░░░░░░░└┐└────┐▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓┌─┘┌┘]],
  [[    └──────┐░│▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓│░┌───┘░░░░░░░░░░░░░░░░░░░░└───┐░│▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓┌──┘┌─┘]],
  [[           │░│▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓│░│░░░░░░░░░░░░░░░░░░░░░░░░░┌──┘┌┘▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓┌─┘┌──┘]],
  [[           │░│▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓│░│░░░░░░░░░░░░░░░░░░░░░░░┌─┘┌──┘▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓┌─┘┌─┘]],
  [[           │░│▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓│░│░░░░░░░░░░░░░░░░░░░░░┌─┘┌─┘▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓┌──┘┌─┘]],
  [[           │░│▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓│░│░░░░░░░░░░░░░░░░░░┌──┘┌─┘▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓┌─┘┌──┘]],
  [[           │░│▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓│░│░░░░░░░░░░░░░░░░┌─┘┌──┘▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓┌─┘┌─┘]],
  [[           │░│▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓│░│░░░░░░░░░░░░░░┌─┘┌─┘▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓┌──┘┌─┘]],
  [[           │░│▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓│░│░░░░░░░░░░░┌──┘┌─┘▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓┌─┘┌──┘]],
  [[           │░│▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓│░│░░░░░░░░░┌─┘┌─┘▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓┌──┘┌─┘░▒▒▒]],
  [[           │░│▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓│░│░░░░░░┌──┘┌─┘▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓┌─┘┌──┘░░░░░▒▒▒▒]],
  [[           │░│▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓│░│░░░░┌─┘┌──┘▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓┌─┘┌─┘░░░░░░░░░░░▒▒▒]],
  [[          ▒│░│▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓│░│░░┌─┘┌─┘▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓┌──┘┌─┘░░░░░░░░░░░░░░░▒▒▒▒]],
  [[        ▒▒░│░│▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓│░└──┘┌─┘▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓┌─┘┌──┘░░░░░░░░░░░░░░░░░░░░▒▒▒]],
  [[     ▒▒▒░░░│░│▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓│░░┌──┘▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓┌─┘┌─┘░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▒▒]],
  [[   ▒▒░░░░░░│░│▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓│┌─┘▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓┌──┘┌─┘░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▒]],
  [[▒▒▒▓░░░░░░░│░│▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓└┘▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓┌─┘┌──┘░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▒▒]],
  [[   ▒▒▓░░░░░│░│▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓┌─┘┌─┘░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▓▒▒]],
  [[     ▒▒▒▓░░│░│▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓┌──┘┌─┘░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▓▒▒▒]],
  [[        ▒▒▓│░│▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓┌─┘┌──┘░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▓▒▒]],
  [[          ▒│░│▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓┌─┘┌─┘░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▓▒▒▒]],
  [[           │░│▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒┌──────┐┘┌─┘░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▓▒▒]],
  [[           │░│▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒┌┘▐▒▒▒▓┌┘─┘░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▓▒▒▒]],
  [[           │░│▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒┌┘▐▒▒▒▓┌┘░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▓▒▒]],
  [[           │░│▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓┌└──────┘░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▓▒▒▒]],
  [[           │░│▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓┌─┘░┌──┘░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▓▒▒]],
  [[           │░│▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓┌─┘░┌───────┐░░░░░░░░┌─────────┐░░░░┌──────┐     ┌──────┐]],
  [[           │░│▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓┌──┘░┌─└─┐▐▒▒▓┌┘░░░░░░░░└─┐▐▒▒▒▒▒▓└────┘▐▒▒▒▒▓└─────┘▐▒▒▒▒▓│]],
  [[           │░│▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓┌─┘░┌──┘░░┌┘▐▒▓┌┘░░░░░░░░░░┌┘▐▒▓┌───────┐▐▒▒▒▓┌───────┐▐▒▒▒▓┌┘]],
  [[           │░│▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓┌─┘░┌─┘░░░░░│▐▒▒▓│░░░░░░░░░░░│▐▒▒▓│░░░░░▓▒└┐▐▒▒▓│       └┐▐▒▒▓│]],
  [[           │░│▐▒▒▒▒▒▒▒▒▒▒▒▒▓┌──┘░┌─┘░░░░░░┌┘▐▒▓┌┘░░░░░░░░░░┌┘▐▒▓┌┘░░░░▓▒▒┌┘▐▒▓┌┘       ┌┘▐▒▓┌┘]],
  [[           │░│▐▒▒▒▒▒▒▒▒▒▒▓┌─┘░┌──┘▒▓░░░░░░│▐▒▒▓│░░░░░░░░░░░│▐▒▒▓│░░▓▒▒   │▐▒▒▓│        │▐▒▒▓│]],
  [[           │░│▐▒▒▒▒▒▒▒▒▓┌─┘░┌─┘    ▒▒▒▓░░┌┘▐▒▓┌┘░░░░░░░░░░┌┘▐▒▓┌┘▒▒     ┌┘▐▒▓┌┘       ┌┘▐▒▒┌┘]],
  [[           │░└──────────┘░┌─┘         ▒┌─┘▐▒▒▓│░░░░░░░░░┌─┘▐▒▒▓│      ┌─┘▐▒▒▓│      ┌─┘▐▒▒▓│]],
  [[           └──────────────┘            └──────┘░░░░░░░░░└──────┘      └──────┘      └──────┘]],
  [[                                          ▒▒▓░░░░░░░░░░░▓▒▒]],
  [[                                            ▒▒▒▓░░░░░▓▒▒▒           ,|  /\                 ,-.]],
  [[                                               ▒▒▓░▓▒▒             / | ( /  ,_   ,  ,_    (__ `  ,__  ,  , ___  ,_ ]],
  [[                                                 ▒▒▒            ,./__|  /  /  | / |/  /      \  /  / /  /  ,/  /  | ]],
  [[                                                               (_/   | /_ (__/\,  /  (_,  ^._,'(__/ (__/  /__ (__/\,]],
}

M.install = {
  'goolord/alpha-nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
}

M.after = function()
  local status_ok, plugin = pcall(require, 'alpha')
  if not status_ok then
    return
  end

  local startify = require 'alpha.themes.startify'
  -- HEADER
  startify.section.header.val = logo
  startify.section.header.opts.position = 'center'
  startify.section.header.opts.hl = 'AlphaLogo'

  -- disable footer
  startify.section.footer.val = { { type = 'text', val = '' } }

  -- disable new file button
  startify.section.top_buttons.val = {}
  -- disable MRU 10-20
  startify.section.mru.val = { { type = 'padding', val = 0 } }

  -- disable MRU cwd
  -- startify.section.mru_cwd.val = { { type = 'padding', val = 0 } }

  -- disable nvim_web_devicons
  startify.nvim_web_devicons.enabled = true
  startify.nvim_web_devicons.highlight = false
  -- startify.nvim_web_devicons.highlight = 'Keyword'
  --
  startify.section.bottom_buttons.val = {
    startify.button('q', '󰅚  Quit NVIM', ':qa<CR>'),
  }
  -- startify.mru_opts.ignore = function(path, ext)
  --   return (string.find(path, 'COMMIT_EDITMSG')) or (vim.tbl_contains(default_mru_ignore, ext))
  -- end

  plugin.setup(startify.config)
end

return M
