local M = {}

M.install = { 'yamatsum/nvim-cursorline' }

M.after = function()
  local status_ok, plugin = pcall(require, 'nvim-cursorline')
  if not status_ok then
    return
  end

  plugin.setup {
    cursorline = {
      enable = true,
      timeout = 1000,
      number = false,
    },
    cursorword = {
      enable = true,
      min_length = 3,
      hl = { underline = false },
    },
  }
end

return M
