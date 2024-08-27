local M = {}

M.install = {
  'williamboman/mason.nvim',

  requires = {
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    'williamboman/mason-lspconfig.nvim',
  },
}

M.after = function()
  local status_ok, plugin = pcall(require, 'mason')
  if not status_ok then
    return
  end

  plugin.setup {
    ui = {
      icons = {
        package_installed = '✓',
        package_pending = '➜',
        package_uninstalled = '✗',
      },
    },
  }

  require('mason-tool-installer').setup {
    ensure_installed = {
      -- LSP
      'typescript-language-server',
      'lua-language-server',
      'eslint-lsp',
      'lua_ls',

      --DAP

      -- LINTER
      'eslint_d',

      -- FORMATTER
      'prettier',
      'prettierd',
      'stylua',
    },
  }
end

return M
