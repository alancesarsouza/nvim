local d = require 'main.descriptions'

-- save
local save = function()
  vim.cmd.w()
end

vim.keymap.set({ 'n', 'v', 'i' }, '<C-s>', save, { noremap = true, silent = true, desc = d.w })

-- undo
local undo = function()
  vim.cmd.u()
end

vim.keymap.set({ 'n', 'v', 'i', 'x' }, '<C-z>', undo, { desc = d.u })

-- escape
vim.keymap.set({ 'n', 'v', 'i', 'x' }, '<C-c>', '<Esc>', { noremap = true, silent = true, desc = d.esc })
vim.keymap.set('i', 'kj', '<Esc>', { desc = d.esc })
vim.keymap.set('i', 'jk', '<Esc>', { desc = d.esc })

-- fast selection
vim.keymap.set('n', 'vie', 'ggVG', { desc = d.selectAll })
vim.keymap.set('n', 'die', 'ggdG', { desc = d.deleteAll })
vim.keymap.set('n', 'yie', 'ggyG', { desc = d.copyAll })

-- window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = d.wh })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = d.wj })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = d.wk })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = d.wl })

vim.keymap.set('n', '<leader><Char-92>', '<Cmd> vsplit <CR>', { desc = d.vsplit })
vim.keymap.set('n', '<leader><Char-124>', '<Cmd> split <CR>', { desc = d.split })

-- PACKER
vim.keymap.set('n', '<leader>ps', '<Cmd> PackerSync <CR>', { desc = d.ps })
vim.keymap.set('n', '<leader>pu', '<Cmd> PackerUpdate <CR>', { desc = d.pu })
vim.keymap.set('n', '<leader>pm', '<Cmd> Mason <CR>', { desc = d.pm })

vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'Code Informations' })
vim.keymap.set('n', 'L', vim.lsp.buf.code_action, { desc = 'Code Actions' })
