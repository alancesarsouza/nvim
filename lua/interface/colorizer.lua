local M = {}

M.install = { 'norcalli/nvim-colorizer.lua' }

M.after = function()
  local status_ok, plugin = pcall(require, 'colorizer')
  if not status_ok then
    return
  end

  plugin.setup()
end

return M
