-- Port of Srcery's airline theme to lualine
-- Use vim.g for cleaner access to global variables
local colors = {
  black          =   vim.g.srcery_black,
  red            =   vim.g.srcery_red,
  green          =   vim.g.srcery_green,
  yellow         =   vim.g.srcery_yellow,
  blue           =   vim.g.srcery_blue,
  magenta        =   vim.g.srcery_magenta,
  cyan           =   vim.g.srcery_cyan,
  white          =   vim.g.srcery_white,
  brightblack    =   vim.g.srcery_bright_black,
  brightred      =   vim.g.srcery_bright_red,
  brightgreen    =   vim.g.srcery_bright_green,
  brightyellow   =   vim.g.srcery_bright_yellow,
  brightblue     =   vim.g.srcery_bright_blue,
  brightmagenta  =   vim.g.srcery_bright_magenta,
  brightcyan     =   vim.g.srcery_bright_cyan,
  brightwhite    =   vim.g.srcery_bright_white,
  orange         =   vim.g.srcery_orange or vim.g.srcery_red,
  brightorange   =   vim.g.srcery_bright_orange or vim.g.srcery_red,
  hardblack      =   vim.g.srcery_hard_black or vim.g.srcery_black,
  gray1         =   vim.g.srcery_gray1,
  gray2         =   vim.g.srcery_gray2,
  gray3         =   vim.g.srcery_gray3,
  gray4         =   vim.g.srcery_gray4,
  gray5         =   vim.g.srcery_gray5,
  gray6         =   vim.g.srcery_gray6,
}

-- Optimization: Common section C style
local section_c = {bg = colors.gray1, fg = colors.brightwhite}

return {
  normal = {
    a = {bg = colors.gray4, fg = colors.brightwhite, gui = 'bold'},
    b = {bg = colors.gray3, fg = colors.brightwhite},
    c = section_c
  },
  insert = {
    a = {bg = colors.brightwhite, fg = colors.black, gui = 'bold'},
    b = {bg = colors.brightblack, fg = colors.black},
    c = section_c
  },
  visual = {
    a = {bg = colors.cyan, fg = colors.black, gui = 'bold'},
    b = {bg = colors.gray5, fg = colors.brightwhite},
    c = section_c
  },
  replace = {
    a = {bg = colors.brightred, fg = colors.brightwhite, gui = 'bold'},
    b = {bg = colors.brightblack, fg = colors.black},
    c = section_c
  },
  command = {
    a = {bg = colors.yellow, fg = colors.black, gui = 'bold'},
    b = {bg = colors.gray3, fg = colors.brightwhite},
    c = section_c
  },
  terminal = {
    a = {bg = colors.green, fg = colors.black, gui = 'bold'},
    b = {bg = colors.gray3, fg = colors.brightwhite},
    c = section_c
  },
  inactive = {
    a = {bg = colors.gray4, fg = colors.gray6, gui = 'bold'},
    b = {bg = colors.gray3, fg = colors.gray6},
    c = {bg = colors.gray2, fg = colors.gray6}
  }
}
