local r = require 'main.rules'

local autocommand = vim.api.nvim_create_autocmd

-- highlight on yank
autocommand('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- focus resize
local augroup = vim.api.nvim_create_augroup('FocusDisable', { clear = true })

autocommand('WinEnter', {
  group = augroup,
  callback = function(_)
    if vim.tbl_contains(r.ignore_buffers.focus, vim.bo.buftype) then
      vim.w.focus_disable = true
    else
      vim.w.focus_disable = false
    end
  end,
  desc = 'Disable focus autoresize for BufType',
})

autocommand('FileType', {
  group = augroup,
  callback = function(_)
    if vim.tbl_contains(r.ignore_files.focus, vim.bo.filetype) then
      vim.b.focus_disable = true
    else
      vim.b.focus_disable = false
    end
  end,
  desc = 'Disable focus autoresize for FileType',
})

-- test
vim.cmd [[
    :hi      NvimTreeExecFile    guifg=#ffa0a0
    :hi      NvimTreeSpecialFile guifg=#ff80ff gui=underline
    :hi      NvimTreeSymlink     guifg=Yellow  gui=italic
    :hi link NvimTreeImageFile   Title
]]
