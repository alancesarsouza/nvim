-- This file is automatically loaded by plugins.core
local opt = vim.opt
-- Q => === !==
vim.o.guifont = 'Jet Brains:h11'

-- Global
vim.g.autoformat = true
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'
vim.g.markdown_recommended_style = 0 -- Fix markdown indentation settings
vim.g.root_spec = { 'lsp', { '.git', 'lua' }, 'cwd' }

-- Buffer Options
vim.bo.autoread = true
opt.autoread = true
opt.autowrite = true -- Enable auto write

-- Code options
opt.autoindent = true
opt.clipboard:append 'unnamedplus'
opt.confirm = true -- Confirm to save changes before exiting modified buffer
opt.smartindent = true -- Insert indents automatically
opt.softtabstop = 2
opt.spell = false -- spell
opt.spelllang = { 'en' } -- spell
opt.tabstop = 2 -- Number of spaces tabs count for
opt.termguicolors = true -- True color support
opt.undofile = true
opt.undolevels = 10000
opt.wrap = false -- Disable line wrap

-- UI options
opt.colorcolumn = ''
opt.cursorline = true -- Enable highlighting of the current line
opt.foldlevel = 99 -- Folding
opt.grepformat = '%f:%l:%c:%m'
opt.grepprg = 'rg --vimgrep'
opt.hlsearch = false
opt.ignorecase = true -- Ignore case
opt.inccommand = 'nosplit' -- preview incremental substitute
opt.incsearch = true
opt.mouse = 'a' -- Enable mouse mode
opt.mouse:append 'a'
opt.number = true -- Print line number
opt.relativenumber = true -- Relative line numbers
opt.showmode = false -- Dont show mode since we have a statusline
opt.smoothscroll = true

-- Requires definitions

-- Options
-- opt.backup = false
-- opt.completeopt = 'menu,menuone,noselect'
-- opt.conceallevel = 2
-- opt.expandtab = true -- Use spaces instead of tabs
-- opt.formatoptions = 'jcroqlnt' -- tcqj
-- opt.isfname:append '@-@'
-- opt.laststatus = 3 -- global statusline
-- opt.list = true -- When False show some invisible characters (tabs...
-- opt.nu = true
-- opt.pumheight = 10 -- Maximum number of entries in a popup
-- opt.scrolloff = 8 -- Lines of context
-- opt.sessionoptions = { 'buffers', 'curdir', 'tabpages', 'winsize', 'help', 'globals', 'skiprtp', 'folds' }
-- opt.shiftround = true -- Round indent
-- opt.shiftwidth = 2 -- Size of an indent
-- opt.shortmess:append { W = true, I = true, c = true, C = true }
-- opt.sidescrolloff = 8 -- Columns of context
-- opt.signcolumn = 'no' -- Always show the signcolumn, otherwise it would shift the text each time // testing no was yes
-- opt.smartcase = true -- Don't ignore case with capitals
-- opt.splitbelow = true -- Put new windows below current
-- opt.splitright = true -- Put new windows right of current
-- opt.swapfile = false -- test if swapfile stop ~/.local/state/nvim/swap (_swap)
-- opt.updatetime = 200 -- Save swap file and trigger CursorHold
-- opt.wildmode = 'longest:full,full' -- Command-line completion mode
-- opt.winminwidth = 5 -- Minimum window width

-- Testing
-- vim.opt.pumblend = 50 -- value range [0,100]
-- vim.diagnostic.config {
--   signs = {
--     text = {
--       [vim.diagnostic.severity.ERROR] = '🚫',
--       [vim.diagnostic.severity.WARN] = '☢️',
--       [vim.diagnostic.severity.INFO] = 'ℹ️',
--       [vim.diagnostic.severity.HINT] = '💡',
--     },
--     -- linehl = {
--     --   [vim.diagnostic.severity.ERROR] = 'a',
--     --   [vim.diagnostic.severity.WARN] = 'b',
--     --   [vim.diagnostic.severity.INFO] = 'c',
--     --   [vim.diagnostic.severity.HINT] = 'd',
--     -- },
--     -- numhl = {
--     --   [vim.diagnostic.severity.ERROR] = 'a',
--     --   [vim.diagnostic.severity.WARN] = 'b',
--     --   [vim.diagnostic.severity.INFO] = 'c',
--     --   [vim.diagnostic.severity.HINT] = 'd',
--     -- },
--   },
-- }

-- version condition
-- if vim.fn.has 'nvim-0.11' == 1 then
--    DO SOMETHING
-- end

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

-- if not vim.g.vscode then
--   opt.timeoutlen = 300 -- Lower than default (1000) to quickly trigger which-key
-- end
