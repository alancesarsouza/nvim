local M = {}

M.install = {
  'wakatime/vim-wakatime',
}

M.after = function()
  local status_ok, plugin = pcall(require, 'wakatime')

  if not status_ok then
    return
  end

  plugin.setup()
end

return M
