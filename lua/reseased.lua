local M = { isChecking = false } -- do not wrap this line

M.plugins = {
  'lsp.cmp',
  'lsp.conform',
  'lsp.lint',
  'lsp.lspconfig',
  'lsp.mason',
  'lsp.treesitter',
  'ui.alpha-nvim',
  'ui.barbar',
  'ui.barbecue',
  'ui.focus',
  'ui.diffview',
  'ui.gitsigns',
  'ui.impatient',
  'ui.indent-blankline',
  'ui.lualine',
  'ui.noice',
  'ui.scrollbar',
  'ui.telescope',
  'ui.theme',
  'ui.toggleterm',
  'ui.tree',
  'plugins.autopair',
  'plugins.codeium',
  'plugins.colorizer',
  'plugins.comment',
  'plugins.cursorline',
  'plugins.git-blame',
  'plugins.illuminate',
  'plugins.surround',
  'plugins.ts-autotag',
  'plugins.virtual-text',
  'plugins.wakatime',
  'plugins.which-key',
}

M.checkers = function()
  if not M.isChecking then
    return
  end
  print 'Please execute the command `$ sh ~/.config/nvim/checkhealth.sh`'

  require('codeium.health').check()
  require('conform.health').check()
  require('diffview.health').check()
  require('luasnip.health').check()
  require('mason.health').check()
  require('nvim.health').check()
  require('provider.clipboard.health').check()
  require('provider.node.health').check()
  require('provider.perl.health').check()
  require('provider.python.health').check()
  require('provider.ruby.health').check()
  require('rainbow-delimiters.health').check()
  require('vim.lsp.health').check()
  require('vim.treesitter.health').check()
  require('which-key.health').check()
end

return M
