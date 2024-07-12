local M = {}

M.install = {
  'JoosepAlviste/nvim-ts-context-commentstring',
  requires = { 'numToStr/Comment.nvim' },
}

M.after = function()
  local status_ok, plugin = pcall(require, 'Comment')
  if not status_ok then
    return
  end

  plugin.setup {
    pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
  }
end

return M
