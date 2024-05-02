-- Interface plugins
require('interface.bluloco').after()
require('interface.bufferline').after()
require('interface.colorizer').after()
require('interface.cursorline').after()
require('interface.focus').after()
require('interface.indent').after()
require('interface.lualine').after()
require('interface.noice').after()
require('interface.nvim-tree').after()
require('interface.scrollbar').after()
require('interface.which-key').after()

-- -- LSP plugins
require('lsp.cmp').after()
require('lsp.conform').after()
require('lsp.lint').after()
require('lsp.lspconfig').after()
require('lsp.mason').after()
require('lsp.treesitter').after()

-- -- Other plugins
require('plugins.test-install').after()

require('plugins.autoclose').after()
require('plugins.codeium').after()
require('plugins.comment').after()
require('plugins.diffview').after()
require('plugins.git-blame').after()
require('plugins.gitsigns').after()
require('plugins.impatient').after()
require('plugins.surround').after()
require('plugins.telescope').after()
require('plugins.toggleterm').after()
