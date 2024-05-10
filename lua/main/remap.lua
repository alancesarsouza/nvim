local d = require 'main.descriptions'
vim.g.mapleader = ' '

vim.keymap.set({ 'n', 'v', 'i' }, '<C-z>', '<Cmd> u <CR>', { desc = d.u })
vim.keymap.set({ 'n', 'v', 'i' }, '<S->', '<Cmd> undo <CR>', { desc = d.u })
vim.keymap.set({ 'n', 'v', 'i' }, '<C-s>', '<Cmd> w <CR>', { desc = d.w })

-- vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- This is going to get me cancelled
vim.keymap.set('i', '<C-c>', '<Esc>', { desc = d.esc })
vim.keymap.set('i', 'kj', '<Esc>', { desc = d.esc })
vim.keymap.set('i', 'jk', '<Esc>', { desc = d.esc })
vim.keymap.set('n', 'vie', 'ggVG', { desc = d.selectAll })
vim.keymap.set('n', 'die', 'ggdG', { desc = d.deleteAll })
vim.keymap.set('n', 'yie', 'ggyG', { desc = d.copyAll })

-- WINDOW
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = d.wh })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = d.wj })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = d.wk })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = d.wl })
vim.keymap.set('n', '<leader>q', '<Cmd> bdelete <CR>', { desc = d.q })
vim.keymap.set('n', '<leader><Char-92>', '<Cmd> vsplit <CR>', { desc = d.vsplit })
vim.keymap.set('n', '<leader><Char-124>', '<Cmd> split <CR>', { desc = d.split })

-- PACKER
vim.keymap.set('n', '<leader>ps', '<Cmd> PackerSync <CR>', { desc = d.ps })
vim.keymap.set('n', '<leader>pu', '<Cmd> PackerUpdate <CR>', { desc = d.pu })
vim.keymap.set('n', '<leader>pm', '<Cmd> Mason <CR>', { desc = d.pm })

-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

-- vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- CHAR CODE LIST
-- !	33	exclamation mark
-- "	34	quotation mark
-- #	35	number sign
-- $	36	dollar sign
-- %	37	percent sign
-- &	38	ampersand
-- '	39	apostrophe
-- (	40	left parenthesis
-- )	41	right parenthesis
-- *	42	asterisk
-- +	43	plus sign
-- ,	44	comma
-- -	45	hyphen
-- .	46	period
-- /	47	slash
-- 0	48	digit 0
-- 1	49	digit 1
-- 2	50	digit 2
-- 3	51	digit 3
-- 4	52	digit 4
-- 5	53	digit 5
-- 6	54	digit 6
-- 7	55	digit 7
-- 8	56	digit 8
-- 9	57	digit 9
-- :	58	colon
-- ;	59	semicolon
-- <	60	less-than
-- =	61	equals-to
-- >	62	greater-than
-- ?	63	question mark
-- @	64	at sign
-- A	65	uppercase A
-- B	66	uppercase B
-- C	67	uppercase C
-- D	68	uppercase D
-- E	69	uppercase E
-- F	70	uppercase F
-- G	71	uppercase G
-- H	72	uppercase H
-- I	73	uppercase I
-- J	74	uppercase J
-- K	75	uppercase K
-- L	76	uppercase L
-- M	77	uppercase M
-- N	78	uppercase N
-- O	79	uppercase O
-- P	80	uppercase P
-- Q	81	uppercase Q
-- R	82	uppercase R
-- S	83	uppercase S
-- T	84	uppercase T
-- U	85	uppercase U
-- V	86	uppercase V
-- W	87	uppercase W
-- X	88	uppercase X
-- Y	89	uppercase Y
-- Z	90	uppercase Z
-- [	91	left square bracket
-- \	92	backslash
-- ]	93	right square bracket
-- ^	94	caret
-- _	95	underscore
-- `	96	grave accent
-- a	97	lowercase a
-- b	98	lowercase b
-- c	99	lowercase c
-- d	100	lowercase d
-- e	101	lowercase e
-- f	102	lowercase f
-- g	103	lowercase g
-- h	104	lowercase h
-- i	105	lowercase i
-- j	106	lowercase j
-- k	107	lowercase k
-- l	108	lowercase l
-- m	109	lowercase m
-- n	110	lowercase n
-- o	111	lowercase o
-- p	112	lowercase p
-- q	113	lowercase q
-- r	114	lowercase r
-- s	115	lowercase s
-- t	116	lowercase t
-- u	117	lowercase u
-- v	118	lowercase v
-- w	119	lowercase w
-- x	120	lowercase x
-- y	121	lowercase y
-- z	122	lowercase z
-- {	123	left curly brace
-- |	124	vertical bar
-- }	125	right curly brace
-- ~	126	tilde
