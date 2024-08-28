local r = require 'main.rules'
local c = require 'main.colors'

local lint = require 'lsp.lint'
local barbecue = require 'ui.barbecue'

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- highlight on yank
autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- focus resize
local focusg = augroup('FocusDisable', { clear = true })

autocmd('WinEnter', {
  group = focusg,
  callback = function(_)
    if vim.tbl_contains(r.ignore_buffers.focus, vim.bo.buftype) then
      vim.w.focus_disable = true
    else
      vim.w.focus_disable = false
    end
  end,
  desc = 'Disable focus autoresize for BufType',
})

autocmd('FileType', {
  group = focusg,
  callback = function(_)
    if vim.tbl_contains(r.ignore_files.focus, vim.bo.filetype) then
      vim.b.focus_disable = true
    else
      vim.b.focus_disable = false
    end
  end,
  desc = 'Disable focus autoresize for FileType',
})

autocmd({ 'BufWritePost' }, {
  callback = lint.autocommand,
})

local bbq = augroup('barbecue.updater', {})

autocmd({
  'WinScrolled', -- or WinResized on NVIM-v0.9 and higher
  'BufWinEnter',
  'CursorHold',
  'InsertLeave',

  -- include this if you have set `show_modified` to `true`
  'BufModifiedSet',
}, {
  group = bbq,
  callback = barbecue.autocommand,
})

-- testing highlight
vim.api.nvim_set_hl(0, '@lsp.type.parameter', c.lsp_highlight)

autocmd('ColorScheme', {
  callback = function()
    vim.api.nvim_set_hl(0, '@lsp.type.parameter', c.lsp_highlight)
    vim.api.nvim_set_hl(0, '@lsp.mod.readonly', { italic = true })
  end,
})
local links = {
  ['@lsp.type.namespace'] = '@namespace',
  ['@lsp.type.type'] = '@type',
  ['@lsp.type.class'] = '@type',
  ['@lsp.type.enum'] = '@type',
  ['@lsp.type.interface'] = '@type',
  ['@lsp.type.struct'] = '@structure',
  ['@lsp.type.parameter'] = '@parameter',
  ['@lsp.type.variable'] = '@variable',
  ['@lsp.type.property'] = '@property',
  ['@lsp.type.enumMember'] = '@constant',
  ['@lsp.type.function'] = '@function',
  ['@lsp.type.method'] = '@method',
  ['@lsp.type.macro'] = '@macro',
  ['@lsp.type.decorator'] = '@function',
}

for newgroup, oldgroup in pairs(links) do
  vim.api.nvim_set_hl(0, newgroup, { link = oldgroup, default = true })
end

autocmd('LspTokenUpdate', {
  callback = function(args)
    local token = args.data.token
    if token.type == 'variable' and token.modifiers.globalScope and not token.modifiers.readonly then
      vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'MyMutableGlobalHL')
    end
  end,
})

vim.api.nvim_set_hl(0, 'MyMutableGlobalHL', { fg = 'red' })

local function show_unconst_caps(args)
  local token = args.data.token
  if token.type ~= 'variable' or token.modifiers.readonly then
    return
  end

  local text = vim.api.nvim_buf_get_text(args.buf, token.line, token.start_col, token.line, token.end_col, {})[1]
  if text ~= string.upper(text) then
    return
  end

  vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'Error')
end

autocmd('LspTokenUpdate', {
  callback = show_unconst_caps,
})

autocmd('LspAttach', {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client.name ~= 'clangd' then
      return
    end

    autocmd('LspTokenUpdate', {
      buffer = args.buf,
      callback = show_unconst_caps,
    })
  end,
})
