local colors = {
  dark0    = '#282828',
  dark1    = '#32302f',
  dark2    = '#504945',

  light0   = '#ddc7a1',
  light1   = '#a89984',

  blue     = '#7daea3',
  green    = '#a9b665',
  yellow   = '#d8a657',
  purple   = '#d3869b',
  red      = '#ea6962',
}

return {
  normal = {
    a = { fg = colors.dark0, bg = colors.light1, gui = 'bold' },
    b = { fg = colors.light0, bg = colors.dark2 },
    c = { fg = colors.light0, bg = colors.dark1 },
  },
  insert = { a = { fg = colors.dark0, bg = colors.green, gui = 'bold' } },
  visual = { a = { fg = colors.dark0, bg = colors.red, gui = 'bold' } },
  replace = { a = { fg = colors.dark0, bg = colors.yellow, gui = 'bold' } },
  terminal = { a = { fg = colors.dark0, bg = colors.purple, gui = 'bold' } },
  command = { a = { fg = colors.dark0, bg = colors.blue, gui = 'bold' } },
  inactive = { a = { fg = colors.light0, bg = colors.dark2 } },
}
