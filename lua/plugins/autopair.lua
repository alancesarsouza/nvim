local M = {}

M.install = {
  'windwp/nvim-autopairs',
  event = 'InsertEnter',

  config = function()
    local status_ok, plugin = pcall(require, 'nvim-autopairs')
    if not status_ok then
      return
    end

    plugin.setup {}
  end,
}

M.after = function() end

return M
