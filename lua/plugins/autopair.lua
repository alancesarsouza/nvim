local M = {}

M.install = {
  -- 'm4xshen/autoclose.nvim',
  'windwp/nvim-autopairs',
  -- event = 'InsertEnter',
  -- config = function() end,
}

M.after = function()
  -- local status_ok, plugin = pcall(require, 'nvim-autopairs')
  -- if not status_ok then
  --   return
  -- end
  --
  -- plugin.setup {}
end

return M
