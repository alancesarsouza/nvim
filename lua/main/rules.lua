local M = {}

M.ignore_files = {
  focus = {
    'neo-tree',
    'NvimTree',
  },
  scrollbar = {
    'cmp_docs',
    'cmp_menu',
    'noice',
    'prompt',
    'TelescopePrompt',
    'NvimTree',
  },
  illuminate = {
    'dirbuf',
    'dirvish',
    'fugitive',
    'NvimTree',
  },
}
M.ignore_buffers = {
  focus = {
    'NvimTree',
    'NvimTree_1',
    'NvimTree_2',
    'NvimTree_3',
    'nofile',
    'popup',
    'prompt',
  },
  lualine = {
    'NvimTree',
    'NvimTree_1',
    'NvimTree_2',
    'NvimTree_3',
    'nofile',
    'popup',
    'prompt',
  },
}

return M
