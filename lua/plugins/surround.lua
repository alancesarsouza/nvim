local M = {}

M.install = {
  'kylechui/nvim-surround',
  tag = '*',
}

M.after = function()
  local status_ok, plugin = pcall(require, 'nvim-surround')
  if not status_ok then
    return
  end

  plugin.setup()
end

return M
