local M = {}

M.on_attach = function(_client, bufnr)
  -- da erro ao salvar outros arquivos
  -- vim.api.nvim_create_autocmd('BufWritePre', {
  --   buffer = bufnr,
  --   command = 'EslintFixAll',
  -- })
end

M.install = { 'stevearc/conform.nvim' }

M.after = function()
  local status_ok, plugin = pcall(require, 'conform')
  if not status_ok then
    return
  end
  vim.o.formatexpr = 'EslintFixAll'

  plugin.setup {
    formatters_by_ft = {
      -- file = { "MustRun", "MustRun" }
      -- file = { { "OptionalRun" }, "MustRun" }
      -- file = { { "OptionalRun", "OptionalRun" } }

      lua = { 'stylua' },

      javascript = { { 'prettierd' }, 'eslint_d' },
      javascriptreact = { { 'prettierd' }, 'eslint_d' },
      typescript = { { 'prettierd' }, 'eslint_d' },
      typescriptreact = { { 'prettierd' }, 'eslint_d' },

      css = { 'prettierd' },
      graphql = { 'prettierd' },
      html = { 'prettierd' },
      json = { 'prettierd' },
      markdown = { 'prettierd' },
      yaml = { 'prettierd' },
    },

    format_on_save = {
      async = false,
      lsp_fallback = false,
      timeout_ms = 1000, -- fast format prettierd
    },

    format_after_save = {
      async = true,
      lsp_fallback = true,
      timeout_ms = 2000, -- slow format eslint_d (required)
    },
  }
end

return M
