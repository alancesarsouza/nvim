local r = require 'main.rules'
local M = {}

M.install = { 'nvim-focus/focus.nvim' }

M.after = function()
  local status_ok, plugin = pcall(require, 'focus')
  if not status_ok then
    return
  end

  local augroup = vim.api.nvim_create_augroup('FocusDisable', { clear = true })

  vim.api.nvim_create_autocmd('WinEnter', {
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

  vim.api.nvim_create_autocmd('FileType', {
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

  plugin.setup {
    autoresize = {
      enable = true, -- Enable or disable auto-resizing of splits
      width = 220, -- Force width for the focused window
      height = 80, -- Force height for the focused window
      minwidth = 40, -- Force minimum width for the unfocused window
      minheight = 20, -- Force minimum height for the unfocused window
      height_quickfix = 10, -- Set the height of quickfix panel
    },
    ui = {
      number = false, -- Display line numbers in the focussed window only
      relativenumber = true, -- Display relative line numbers in the focussed window only
      hybridnumber = true, -- Display hybrid line numbers in the focussed window only
      absolutenumber_unfocussed = false, -- Preserve absolute numbers in the unfocussed windows

      cursorline = true, -- Display a cursorline in the focussed window only
      cursorcolumn = false, -- Display cursorcolumn in the focussed window only
    },
  }
end

return M
