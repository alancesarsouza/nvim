-- aumenta o tamanho da janela em foco
local M = {}

M.install = { 'nvim-focus/focus.nvim' }

M.after = function()
  local status_ok, plugin = pcall(require, 'focus')
  if not status_ok then
    return
  end

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
