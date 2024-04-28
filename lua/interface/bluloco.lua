local M = {}

M.packer = {
  'uloco/bluloco.nvim',
  requires = { 'rktjmp/lush.nvim' },
}

M.after = function()
  print("bluloco")

  require("bluloco").setup({
    style = "dark",               -- "auto" | "dark" | "light"
    transparent = true,
    italics = true,
    terminal = vim.fn.has("gui_running") == 1, -- bluoco colors are enabled in gui terminals per default.
    guicursor   = true,
  })

  vim.cmd('colorscheme bluloco')
end

return M