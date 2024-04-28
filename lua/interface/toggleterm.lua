local M = {}

M.packer = {
  'akinsho/toggleterm.nvim',
  tag = '*',
}

M.after = function()
  print('toggleterm')
  require('toggleterm').setup {
    open_mapping = [[<a-i>]],
    direction = 'float',
    float_opts = {
      border = 'curved',
      width = 130,
      height = 30,
    }
  }
end

return M