local M = {}

M.install = {
  'Exafunction/codeium.nvim',
  requires = { 'nvim-lua/plenary.nvim', 'hrsh7th/nvim-cmp' },
}

M.after = function()
  local status_ok, plugin = pcall(require, 'codeium')
  if not status_ok then
    return
  end

  plugin.setup {}
end

return M
