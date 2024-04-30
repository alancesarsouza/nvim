local M = {}

M.on_attach = function(_client, bufnr)
  vim.api.nvim_create_autocmd('BufWritePre', {
    buffer = bufnr,
    command = 'EslintFixAll',
  })
end

M.install = {
  'stevearc/conform.nvim',
}

M.after = function()
  local status_ok, plugin = pcall(require, 'conform')
  if not status_ok then
    return
  end

  plugin.setup {
    formatters_by_ft = {
      -- file = { "MustRun", "MustRun" }
      -- file = { { "OptionalRun" }, "MustRun" }
      -- file = { { "OptionalRun", "OptionalRun" } }
      css = { 'prettierd' },
      graphql = { 'prettierd' },
      html = { 'prettierd' },
      javascript = { { 'prettierd' } },
      javascriptreact = { { 'prettierd' } },
      json = { 'prettierd' },
      lua = { 'stylua' },
      markdown = { 'prettierd' },
      typescript = { { 'prettierd' } },
      typescriptreact = { { 'prettierd' } },
      yaml = { 'prettierd' },
    },

    format_on_save = {
      timeout_ms = 500, -- force fast check, this must run before LSP
      async = false,
      lsp_fallback = false,
    },
  }
end

return M
