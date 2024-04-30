local M = {}

M.install = {
  'numToStr/Comment.nvim',
  requires = { 'JoosepAlviste/nvim-ts-context-commentstring' },
  config = function()
    require('Comment').setup {
      pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
    }

    require('ts_context_commentstring').setup {
      enable_autocmd = false,
    }
  end,
}

M.after = function() end

return M
