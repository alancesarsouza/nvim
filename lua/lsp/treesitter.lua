local M = {}

M.install = {
  'nvim-treesitter/nvim-treesitter',
  opt = true,
}

M.after = function()
  local status_ok, plugin = pcall(require, 'nvim-treesitter.configs')
  if not status_ok then
    return
  end

  local ts_update = require('nvim-treesitter.install').update { with_sync = true }
  ts_update()

  plugin.setup {
    -- A list of parser names, or "all" (the five listed parsers should always be installed)
    ensure_installed = {
      'angular',
      'astro',
      'c',
      'comment',
      'css',
      'csv',
      'diff',
      'dockerfile',
      'git_config',
      'graphql',
      'html',
      'http',
      'java',
      'javascript',
      'jq',
      'jsdoc',
      'json',
      'json5',
      'kotlin',
      'lua',
      'luadoc',
      'luau',
      'markdown',
      'markdown_inline',
      'passwd',
      'prisma',
      'python',
      'regex',
      'ruby',
      'rust',
      'scss',
      'smali',
      'sql',
      'styled',
      'tsx',
      'tsx',
      'typescript',
      'typoscript',
      'vim',
      'vimdoc',
      'vue',
      'xml',
      'yaml',
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
      use_languagetree = true,
      additional_vim_regex_highlighting = false,
    },

    autotag = { enable = true },
  }
end

return M
