print('OK - remap')	

vim.g.mapleader = " "
local set = vim.keymap.set

set({'n', 'v', 'i'}, '<C-z>', '<Nop>')


-- vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- This is going to get me cancelled
set("i", "<C-c>", "<Esc>")
set("i", "kj", "<Esc>")
set("i", "jk", "<Esc>")


-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

-- vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })