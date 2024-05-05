local colors = {
  black = '#000000',
  white = '#ffffff',
  red = '#ff0000',
  orange = '#ff8800',
  yellow = '#ffff00',
  lime = '#88ff00',
  green = '#00ff00',
  lightgreen = '#00ff88',
  cyan = '#00ffff',
  ligthBlue = '#0088ff',
  blue = '#0000ff',
  purple = '#8800ff',
  violet = '#ff00ff',
  pink = '#ff0088',
}

local git = { add = '#88ff88', change = '#ffff88', delete = '#ff8888' }

local rainbow = {
  rainbowRed = '#ff8888',
  rainbowOrange = '#ffcc88',
  rainbowYellow = '#ffff88',
  rainbowGreen = '#88ffaa',
  rainbowBlue = '#88ddff',
  rainbowCyan = '#aa88ff',
  rainbowViolet = '#ff88cc',
}

local status = {
  error = '#ff2200',
  focus = '#aaaaaa',
  highlight = '#dddddd',
  hint = '#ff2200',
  hover = '#444444',
  info = '#00ffff',
  misc = '#ff2200',
  search = '#ffffff',
  selected = '#ffffff',
  warn = '#ffdd00',
}

return {
  colors = colors,
  git = git,
  rainbow = rainbow,
  status = status,

  bg = '#000000',
  fg = '#ffffff',
  logo = { fg = '#004422' },
  cursor = { bg = colors.orange, fg = '#220022' },
  tabs = {
    bar_color = '#111111',

    text = {
      normal = '#888888',
      visible = '#aaaaaa',
      focus = '#ffffff',
    },

    backgrond = {
      normal = '#222222',
      visible = '#330044',
      focus = '#440066',
    },

    indicator = { visible = '#ff0000', focus = '#ff0000' },

    -- status
    modified = { normal = '#887700', visible = '#aa8822', focus = '#ffdd00' },
    diagnostic = { normal = '#ff0000', visible = '#ff0000', focus = '#ff0000' },
    hint = { normal = '#ff0000', visible = '#ff0000', focus = '#ff0000' },
    hint_diagnostic = { normal = '#ff0000', visible = '#ff0000', focus = '#ff0000' },
    info = { normal = '#ff0000', visible = '#ff0000', focus = '#ff0000' },
    info_diagnostic = { normal = '#ff0000', visible = '#ff0000', focus = '#ff0000' },
    warning = { normal = '#ff0000', visible = '#ff0000', focus = '#ff0000' },
    warning_diagnostic = { normal = '#ff0000', visible = '#ff0000', focus = '#ff0000' },
    error = { normal = '#ff0000', visible = '#ff0000', focus = '#ff0000' },
    error_diagnostic = { normal = '#ff0000', visible = '#ff0000', focus = '#ff0000' },
    duplicate = { normal = '#ff0000', visible = '#ff0000', focus = '#ff0000' },
    pick = { normal = '#ff0000', visible = '#ff0000', focus = '#ff0000' },
  },
}
