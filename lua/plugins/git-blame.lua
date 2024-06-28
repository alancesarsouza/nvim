-- mostra informacoes do commit na linha do codigo
local M = {}

M.install = { 'f-person/git-blame.nvim' }

M.after = function()
  local status_ok, plugin = pcall(require, 'gitblame')
  if not status_ok then
    return
  end

  plugin.setup {}
end

return M
