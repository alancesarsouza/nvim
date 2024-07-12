-- mostra a informacao do diagnostic na parte superior
local M = {}

M.install = { 'dgagn/diagflow.nvim' }

M.after = function()
  local status_ok, plugin = pcall(require, 'diagflow')
  if not status_ok then
    return
  end

  plugin.setup {
    -- max_width = 80, -- The maximum width of the diagnostic messages
    -- max_height = 20, -- the maximum height per diagnostics
    -- gap_size = 2,
    scope = 'cursor', -- 'cursor', 'line' this changes the scope, so instead of showing errors under the cursor, it shows errors on the entire line.
    text_align = 'right', -- 'left', 'right'
    placement = 'top', -- 'top', 'inline'
    inline_padding_left = 1, -- the padding left when the placement is inline
    -- update_event = { 'DiagnosticChanged', 'BufReadPost' }, -- the event that updates the diagnostics cache
    toggle_event = {}, -- if InsertEnter, can toggle the diagnostics on inserts
    show_sign = true, -- set to true if you want to render the diagnostic sign before the diagnostic message
    render_event = { 'DiagnosticChanged', 'CursorMoved' },
    show_borders = true,
  }
end

return M
