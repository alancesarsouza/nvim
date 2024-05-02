local M = {}

M.install = {
  'lewis6991/gitsigns.nvim',
  requires = { 'nvim-lua/plenary.nvim' },
}

M.after = function()
  local status_ok, plugin = pcall(require, 'gitsigns')
  if not status_ok then
    return
  end

  plugin.setup()
end

return M
