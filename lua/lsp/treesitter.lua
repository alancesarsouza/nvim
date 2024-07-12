local M = {}

M.install = {
  'nvim-treesitter/nvim-treesitter',
  event = 'VimEnter',
  branch = 'master',
  requires = { 'HiPhish/rainbow-delimiters.nvim' },

  setup = function()
    local status_ok, plugin = pcall(require, 'nvim-treesitter.configs')
    if not status_ok then
      return
    end

    plugin.setup {
      -- Enable Rainbow Parentheses
      rainbow = { enable = true },

      -- Enable Autotag
      autotag = { enable = false }, -- not workds

      -- A list of parser names, or "all" (the five listed parsers should always be installed)
      ensure_installed = {
        -- primary
        'comment',
        'css',
        'csv',
        'html',
        'javascript',
        -- 'jsdoc', -- has tarball error
        'json',
        'lua',
        'lua',
        'markdown',
        'regex',
        'scss',
        'styled',
        'tsx',
        'typescript',
        'typoscript',
        'vim',
        'vimdoc',
        'xml',

        -- -- secondary
        -- 'angular',
        -- 'astro',
        -- 'c',
        -- 'diff',
        -- 'http',
        -- 'json5',
        --     -- 'kotlin',
        --     -- 'markdown_inline',
        -- 'rust',
        -- 'sql',
        -- 'vue',

        -- -- third
        -- 'dockerfile',
        -- 'git_config',
        -- 'graphql',
        -- 'java',
        -- 'jq',
        -- 'luadoc',
        -- 'luau',
        -- 'passwd',
        -- 'prisma',
        -- 'python',
        -- 'ruby',
        -- 'smali',
        -- 'yaml',
      },

      -- Install parsers synchronously (only applied to `ensure_installed`)
      sync_install = false, -- important must to be false
      auto_install = false, -- important must to be false

      -- List of parsers to ignore installing (or "all")
      ignore_install = {},

      ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
      -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!
      highlight = {
        enable = true,
        use_languagetree = true,
        additional_vim_regex_highlighting = true, -- testing true
      },
    }
  end,
}

M.after = function() end

return M
