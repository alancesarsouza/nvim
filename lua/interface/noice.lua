local M = {}

M.packer = { 
  "folke/noice.nvim",
  opts = {},
  dependencies = {
    "rcarriga/nvim-notify",
  }
}

M.after = function()
end

return M
