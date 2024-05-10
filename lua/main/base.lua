-- This file is automatically loaded by plugins.core
local opt = vim.opt

-- Global
vim.g.autoformat = true
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'
vim.g.markdown_recommended_style = 0 -- Fix markdown indentation settings
vim.g.root_spec = { 'lsp', { '.git', 'lua' }, 'cwd' }

-- Buffer Options
vim.bo.autoread = true

-- Requires definitions

-- Options
opt.autoindent = true
opt.autoread = true
opt.autowrite = true -- Enable auto write
opt.backup = false
opt.clipboard:append 'unnamedplus'
opt.colorcolumn = ''
opt.completeopt = 'menu,menuone,noselect'
opt.confirm = true -- Confirm to save changes before exiting modified buffer
opt.cursorline = true -- Enable highlighting of the current line
opt.expandtab = true -- Use spaces instead of tabs
opt.foldlevel = 99 -- Folding
opt.formatoptions = 'jcroqlnt' -- tcqj
opt.grepformat = '%f:%l:%c:%m'
opt.grepprg = 'rg --vimgrep'
opt.hlsearch = true
opt.ignorecase = true -- Ignore case
opt.inccommand = 'nosplit' -- preview incremental substitute
opt.incsearch = true
opt.isfname:append '@-@'
opt.laststatus = 3 -- global statusline
opt.list = false -- Show some invisible characters (tabs...
opt.mouse = 'a' -- Enable mouse mode
opt.mouse:append 'a'
opt.nu = true
opt.number = true -- Print line number
opt.pumheight = 10 -- Maximum number of entries in a popup
opt.relativenumber = true -- Relative line numbers
opt.scrolloff = 8 -- Lines of context
opt.sessionoptions = { 'buffers', 'curdir', 'tabpages', 'winsize', 'help', 'globals', 'skiprtp', 'folds' }
opt.shiftround = true -- Round indent
opt.shiftwidth = 2 -- Size of an indent
opt.shortmess:append { W = true, I = true, c = true, C = true }
opt.showmode = false -- Dont show mode since we have a statusline
opt.sidescrolloff = 8 -- Columns of context
opt.signcolumn = 'no' -- Always show the signcolumn, otherwise it would shift the text each time // testing no was yes
opt.smartcase = true -- Don't ignore case with capitals
opt.smartindent = true -- Insert indents automatically
opt.softtabstop = 2
opt.spelllang = { 'en', 'pt-BR' }
opt.splitbelow = true -- Put new windows below current
opt.splitright = true -- Put new windows right of current
opt.swapfile = false
opt.tabstop = 2 -- Number of spaces tabs count for
opt.termguicolors = true -- True color support
opt.undofile = true
opt.undolevels = 10000
opt.updatetime = 200 -- Save swap file and trigger CursorHold
opt.wildmode = 'longest:full,full' -- Command-line completion mode
opt.winminwidth = 5 -- Minimum window width
opt.wrap = false -- Disable line wrap

-- Testing
vim.diagnostic.config {
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = '🚫',
      [vim.diagnostic.severity.WARN] = '☢️',
      [vim.diagnostic.severity.INFO] = 'ℹ️',
      [vim.diagnostic.severity.HINT] = '💡',
    },
    -- linehl = {
    --   [vim.diagnostic.severity.ERROR] = 'a',
    --   [vim.diagnostic.severity.WARN] = 'b',
    --   [vim.diagnostic.severity.INFO] = 'c',
    --   [vim.diagnostic.severity.HINT] = 'd',
    -- },
    -- numhl = {
    --   [vim.diagnostic.severity.ERROR] = 'a',
    --   [vim.diagnostic.severity.WARN] = 'b',
    --   [vim.diagnostic.severity.INFO] = 'c',
    --   [vim.diagnostic.severity.HINT] = 'd',
    -- },
  },
}

if vim.fn.has 'nvim-0.10' == 1 then
  opt.smoothscroll = true
end

-- opt.fillchars = "eob: " -- remove tilde
opt.fillchars = {
  foldopen = '',
  foldclose = '',
  fold = ' ',
  foldsep = ' ',
  diff = '╱',
  eob = ' ',
}

if not vim.env.SSH_TTY then
  -- only set clipboard if not in ssh, to make sure the OSC 52
  -- integration works automatically. Requires Neovim >= 0.10.0
  opt.clipboard = 'unnamedplus' -- Sync with system clipboard
end

if not vim.g.vscode then
  opt.timeoutlen = 300 -- Lower than default (1000) to quickly trigger which-key
end
