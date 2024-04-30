local M = {}

M.install = {
  'windwp/nvim-ts-autotag',
  config = function()
    require('nvim-ts-autotag').setup()
  end,
}

M.after = function()
  -- local status_ok, plugin = pcall(require, "nvim-ts-autotag")
  -- if not status_ok then
  -- 	return
  -- end

  -- plugin.setup()
end

return M
