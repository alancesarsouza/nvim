local M = {}

local all = {
  'alpha',
  'NvimTree',
  'NvimTree_1',
  'NvimTree_2',
  'NvimTree_3',
  'nofile',
  'popup',
  'prompt',
}

M.ignore_files = {
  focus = {
    'neo-tree',
    'NvimTree',
    'DiffviewFiles',
    'DiffviewFileHistory',
  },
  scrollbar = {
    'cmp_docs',
    'cmp_menu',
    'noice',
    'prompt',
    'TelescopePrompt',
    'NvimTree',
  },
  illuminate = all,
}

M.ignore_buffers = {
  focus = all,
  lualine = all,
}

return M
