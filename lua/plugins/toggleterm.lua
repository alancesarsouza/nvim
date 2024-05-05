local M = {}

M.install = {
  'akinsho/toggleterm.nvim',
  tag = '*', 
}

M.after = function()
  local status_ok, plugin = pcall(require, 'toggleterm')
  if not status_ok then
    return
  end

  plugin.setup {
    open_mapping = [[<a-i>]],
    direction = 'float',
    float_opts = {
      border = 'curved',
      width = 130,
      height = 30,
    },
  }
end

return M
