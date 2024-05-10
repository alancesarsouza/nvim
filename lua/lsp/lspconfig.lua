local conform = require 'lsp.conform'

local M = {}

M.install = { 'neovim/nvim-lspconfig' }

M.after = function()
  local status_ok, lspconfig = pcall(require, 'lspconfig')
  if not status_ok then
    return
  end

  local cmp_ok, cmp = pcall(require, 'cmp_nvim_lsp')
  if not cmp_ok then
    return
  end
  local capabilities = cmp.default_capabilities()

  -- lua
  lspconfig.lua_ls.setup {
    settings = {
      Lua = {
        diagnostics = { globals = { 'vim' } },
      },
    },
  }

  -- prisma
  lspconfig.prismals.setup {}

  -- ESLINT https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#eslint
  lspconfig.eslint.setup {
    on_attach = conform.on_attach,
  }

  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  lspconfig['tsserver'].setup {
    capabilities = capabilities,
  }

  vim.keymap.set('n', '<leader>la', vim.lsp.buf.code_action, { desc = 'Code action TODO:move todo description' })
end

return M
