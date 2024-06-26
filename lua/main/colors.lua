local colors = {
  black = '#000000',
  white = '#ffffff',
  red = '#ff2233',
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
  rainbowRed = '#ff4444',
  rainbowOrange = '#ffcc44',
  rainbowYellow = '#ffff44',
  rainbowGreen = '#44ffaa',
  rainbowBlue = '#44ddff',
  rainbowCyan = '#aa44ff',
  rainbowViolet = '#ff44cc',
}

local status = {
  focus = '#aaaaaa',
  highlight = '#dddddd',
  hover = '#444444',
  search = '#ffffff',
  selected = '#ffffff',

  error = '#ff8888',
  hint = '#88ffff',
  info = '#88ff88',
  misc = '#ff2200',
  warn = '#ffff44',
}

return {
  colors = colors,
  git = git,
  rainbow = rainbow,
  status = status,

  tab_bg = '#110011',
  bg = '#000000',
  fg = '#ffffff',

  logo = { fg = '#004422' },
  cursor = { bg = colors.yellow },
  tabs = {
    bar_color = '#111111',

    text = {
      normal = '#888888',
      visible = '#bb88cc',
      focus = '#ffffff',
    },

    backgrond = {
      normal = '#201030',
      visible = '#302040',
      focus = '#3f004f',
    },
  },
}
