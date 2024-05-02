local M = {}

M.install = {
  'uloco/bluloco.nvim',
  requires = 'rktjmp/lush.nvim',
}

M.after = function()
  local status_ok, plugin = pcall(require, 'bluloco')
  if not status_ok then
    return
  end

  plugin.setup {
    style = 'dark', -- "auto" | "dark" | "light"
    transparent = true,
    italics = true,
    terminal = vim.fn.has 'gui_running' == 1, -- bluoco colors are enabled in gui terminals per default.
    guicursor = true,
  }

  vim.cmd 'colorscheme bluloco'

  -- cursor style
  -- vim.opt.guicursor = 'n-v-c:block-Cursor,i-ci-ve:ver25-Cursor,r-cr-o:hor20-Cursor,a:blinkon100'

  -- function hiCursor()
  --   vim.api.nvim_set_hl(0, "Cursor", {fg='#cc9900', bg='#339966'})
  --   vim.api.nvim_set_hl(0, "CursorReset", {fg='white', bg='white'})
  -- end

  -- vim.api.nvim_create_autocmd("ColorScheme", {
  --     pattern = "*",
  --     callback = hiCursor,
  --   })

  -- function resetHi()
  -- vim.opt.guicursor = 'a:ver25-CursorReset,a:blinkon100'
  -- end

  -- vim.api.nvim_create_autocmd("VimLeave", {
  --     pattern = "*",
  --     callback = resetHi,
  --   })
end

return M
