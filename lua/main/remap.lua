local d = require 'main.descriptions'

vim.g.mapleader = ' '

vim.keymap.set({ 'n', 'v', 'i' }, '<C-z>', '<Cmd> u <CR>', { desc = d.u })
vim.keymap.set({ 'n', 'v', 'i' }, '<C-s>', '<Cmd> w <CR>', { desc = d.w })

-- vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- This is going to get me cancelled
vim.keymap.set('i', '<C-c>', '<Esc>', { desc = d.esc })
vim.keymap.set('i', 'kj', '<Esc>', { desc = d.esc })
vim.keymap.set('i', 'jk', '<Esc>', { desc = d.esc })
vim.keymap.set('n', 'vie', 'ggVG', { desc = d.selectAll })
vim.keymap.set('n', 'die', 'ggdG', { desc = d.deleteAll })
vim.keymap.set('n', 'die', 'ggyG', { desc = d.copyAll })

vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = d.wh })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = d.wj })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = d.wk })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = d.wl })
vim.keymap.set('n', '<leader>]', '<Cmd> vsplit <CR>', { desc = d.vsplit })
vim.keymap.set('n', '<leader>}', '<Cmd> split <CR>', { desc = d.split })

vim.keymap.set('n', '<leader>ps', '<Cmd> PackerSync <CR>', { desc = d.ps })
vim.keymap.set('n', '<leader>pu', '<Cmd> PackerUpdate <CR>', { desc = d.pu })
vim.keymap.set('n', '<leader>pm', '<Cmd> Mason <CR>', { desc = d.pm })

-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

-- vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
