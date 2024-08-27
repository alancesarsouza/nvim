local M = {}

M.install = { 'stevearc/conform.nvim' }

M.after = function()
  local status_ok, plugin = pcall(require, 'conform')
  if not status_ok then
    return
  end

  vim.o.formatexpr = 'EslintFixAll'
  -- vim.lsp.formatexpr =  'EslintFixAll'

  plugin.setup {
    log_level = vim.log.levels.DEBUG,

    formatters_by_ft = {
      -- file = { "biome", "prettierd", stop_after_first = true }
      lua = { 
        'stylua' },

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

    -- format_after_save = nil,
    format_on_save = {
      async = false,
      lsp_fallback = false,
      timeout_ms = 500, -- fast format prettierd
      quiet = false,
    },

    format_after_save = {
      async = true,
      lsp_fallback = true,
      timeout_ms = 2000, -- slow format eslint_d (required)
      quiet = false,
    },
  }
end

return M
