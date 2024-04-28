local M = {}

M.packer = {
  'numToStr/Comment.nvim',
  requires = { 'JoosepAlviste/nvim-ts-context-commentstring' }
}

M.after = function()
  print('comment')
  require('ts_context_commentstring').setup {
    enable_autocmd = false,
  }

  require('Comment').setup {
    pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
  }
end

return M

