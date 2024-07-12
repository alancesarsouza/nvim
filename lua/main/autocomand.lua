local r = require 'main.rules'

local lint = require 'lsp.lint'

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- highlight on yank
autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- focus resize
local focusg = augroup('FocusDisable', { clear = true })

autocmd('WinEnter', {
  group = focusg,
  callback = function(_)
    if vim.tbl_contains(r.ignore_buffers.focus, vim.bo.buftype) then
      vim.w.focus_disable = true
    else
      vim.w.focus_disable = false
    end
  end,
  desc = 'Disable focus autoresize for BufType',
})

autocmd('FileType', {
  group = focusg,
  callback = function(_)
    if vim.tbl_contains(r.ignore_files.focus, vim.bo.filetype) then
      vim.b.focus_disable = true
    else
      vim.b.focus_disable = false
    end
  end,
  desc = 'Disable focus autoresize for FileType',
})

autocmd({ 'BufWritePost' }, {
  callback = lint.autocommand,
})
