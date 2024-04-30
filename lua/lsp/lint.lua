local M = {}

M.install = { 'mfussenegger/nvim-lint' }

M.after = function()
  local status_ok, plugin = pcall(require, 'lint')
  if not status_ok then
    return
  end

  plugin.linters_by_ft = {
    javascript = { 'eslint_d' },
    typescript = { 'eslint_d' },
    javascriptreact = { 'eslint_d' },
    typescriptreact = { 'eslint_d' },
  }
end

return M
