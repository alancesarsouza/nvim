-- Interface plugins
require('interface.cover').after()
require('interface.theme').after()
require('interface.git-diff').after()
require('interface.tabs').after()
require('interface.cursor').after()
require('interface.indent').after()
require('interface.bottom-bar').after()
require('interface.notifications').after()
require('interface.side-menu').after()
require('interface.scroll-bar').after()
require('interface.code-actions').after()

-- -- LSP plugins
require('lsp.cmp').after()
require('lsp.conform').after()
require('lsp.lint').after()
require('lsp.lspconfig').after()
require('lsp.mason').after()
require('lsp.treesitter').after()

-- -- Other plugins
require('plugins.autopair').after()
require('plugins.which-key').after()
require('plugins.codeium').after()
require('plugins.colorizer').after()
require('plugins.comment').after()
require('plugins.git-blame').after()
require('plugins.gitsigns').after()
require('plugins.illuminate').after()
require('plugins.impatient').after()
require('plugins.surround').after()
require('plugins.telescope').after()
require('plugins.focus').after()
require('plugins.toggleterm').after()
require('plugins.wakatime').after()

require('plugins.virtual-text').after()

-- Instaces !! REQUIRE RUN AFTER ALL !!
require 'main.autocomand'
require('main.register_hl').highlight()
