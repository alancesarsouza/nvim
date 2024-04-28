local M = {}

M.packer = {
  'nvim-treesitter/nvim-treesitter',

  requires = { 
    'windwp/nvim-ts-autotag', 
    'windwp/nvim-autopairs',
  },

  run = function()
    local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
    ts_update()
  end,
}

M.after = function()
  print("treesitter")
  require('nvim-ts-autotag').setup()

  require('nvim-treesitter.configs').setup {
    -- A list of parser names, or "all" (the five listed parsers should always be installed)
    ensure_installed = {
      'tsx',
      'lua',
      'vim',
      'typescript',
      'javascript',
      'html',
      'css',
      'json',
      'graphql',
      'regex',
      'rust',
      'prisma',
      'markdown',
      'markdown_inline',
    },
    
    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = true,
    
    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = true,
    
    -- List of parsers to ignore installing (or "all")
    ignore_install = {},
    
    ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
    -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },

    autotag = {
      enable = true,
      enable_rename = true,
      enable_close = true,
      enable_close_on_slash = true,
      filetypes = { "html" , "xml" },
    }
  }
end

return M