local M = {}

M.install = { 'lewis6991/impatient.nvim' }

M.after = function()
  local status_ok, plugin = pcall(require, 'impatient')
  if not status_ok then
    return
  end

  plugin.enable_profile()
end

return M
