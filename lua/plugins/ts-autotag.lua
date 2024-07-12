local M = {}

M.install = {
  'windwp/nvim-ts-autotag',
}

M.after = function()
  local status_ok, plugin = pcall(require, 'nvim-ts-autotag')
  if not status_ok then
    return
  end

  plugin.setup {
    opts = {
      -- Defaults
      enable_close = true, -- Auto close tags
      enable_rename = true, -- Auto rename pairs of tags
      enable_close_on_slash = true, -- Auto close on trailing </
    },
    -- Also override individual filetype configs, these take priority.
    -- Empty by default, useful if one of the "opts" global settings
    -- doesn't work well in a specific filetype
    -- per_filetype = {
    --   ['html'] = {
    --     enable_close = true,
    --   },
    -- },
  }
end

return M
