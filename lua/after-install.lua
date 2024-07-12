-- LSP plugins
require('lsp.cmp').after()
require('lsp.conform').after()
require('lsp.lint').after()
require('lsp.lspconfig').after()
require('lsp.mason').after()
require('lsp.treesitter').after()

-- UI plugins
require('ui.alpha-nvim').after()
require('ui.barbar').after()
require('ui.bluloco').after()
require('ui.focus').after()
require('ui.git-diff').after()
require('ui.gitsigns').after()
require('ui.impatient').after()
require('ui.indent-blankline').after()
require('ui.lualine').after()
require('ui.noice').after()
require('ui.scrollbar').after()
require('ui.telescope').after()
require('ui.toggleterm').after()
require('ui.tree').after()

-- Other plugins
require('plugins.actions-preview').after()
require('plugins.autopair').after()
require('plugins.codeium').after()
require('plugins.colorizer').after()
require('plugins.comment').after()
require('plugins.cursorline').after()
require('plugins.git-blame').after()
require('plugins.illuminate').after()
require('plugins.surround').after()
require('plugins.ts-autotag').after()
require('plugins.virtual-text').after()
require('plugins.wakatime').after()
require('plugins.which-key').after()

-- Instaces !! REQUIRE RUN AFTER ALL !!
require 'main.autocomand'
require('main.register_hl').highlight()
