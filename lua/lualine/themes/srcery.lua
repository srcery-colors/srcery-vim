-- Port of Srcery's airline theme to lualine
local colors = {
  black           =   vim.api.nvim_eval('g:srcery_black'),
  red             =   vim.api.nvim_eval('g:srcery_red'),
  green           =   vim.api.nvim_eval('g:srcery_green'),
  yellow          =   vim.api.nvim_eval('g:srcery_yellow'),
  blue            =   vim.api.nvim_eval('g:srcery_blue'),
  magenta         =   vim.api.nvim_eval('g:srcery_magenta'),
  cyan            =   vim.api.nvim_eval('g:srcery_cyan'),
  white           =   vim.api.nvim_eval('g:srcery_white'),
  brightblack     =   vim.api.nvim_eval('g:srcery_bright_black'),
  brightred       =   vim.api.nvim_eval('g:srcery_bright_red'),
  brightgreen     =   vim.api.nvim_eval('g:srcery_bright_green'),
  brightyellow    =   vim.api.nvim_eval('g:srcery_bright_yellow'),
  brightblue      =   vim.api.nvim_eval('g:srcery_bright_blue'),
  brightmagenta   =   vim.api.nvim_eval('g:srcery_bright_magenta'),
  brightcyan      =   vim.api.nvim_eval('g:srcery_bright_cyan'),
  brightwhite     =   vim.api.nvim_eval('g:srcery_bright_white'),
  -- Srcery's xterm 256 colors
  orange          =   vim.api.nvim_eval('g:srcery_red'),
  brightorange    =   vim.api.nvim_eval('g:srcery_red'),
  hardblack       =   vim.api.nvim_eval('g:srcery_red'),
  gray1          =   vim.api.nvim_eval('g:srcery_gray1'),
  gray2          =   vim.api.nvim_eval('g:srcery_gray2'),
  gray3          =   vim.api.nvim_eval('g:srcery_gray3'),
  gray4          =   vim.api.nvim_eval('g:srcery_gray4'),
  gray5          =   vim.api.nvim_eval('g:srcery_gray5'),
  gray6          =   vim.api.nvim_eval('g:srcery_gray6'),
}

return {
  normal = {
    a = {bg = colors.gray4, fg = colors.brightwhite, gui = 'bold'},
    b = {bg = colors.gray3, fg = colors.brightwhite},
    c = {bg = colors.gray1, fg = colors.brightwhite}
  },
  insert = {
    a = {bg = colors.brightwhite, fg = colors.black, gui = 'bold'},
    b = {bg = colors.brightblack, fg = colors.black},
    c = {bg = colors.gray1, fg = colors.brightwhite}
  },
  visual = {
    a = {bg = colors.cyan, fg = colors.black, gui = 'bold'},
    b = {bg = colors.gray5, fg = colors.brightwhite},
    c = {bg = colors.gray1, fg = colors.brightwhite}
  },
  replace = {
    a = {bg = colors.brightred, fg = colors.brightwhite, gui = 'bold'},
    b = {bg = colors.brightblack, fg = colors.black},
    c = {bg = colors.gray1, fg = colors.brightwhite}
  },
  command = {
    a = {bg = colors.yellow, fg = colors.black, gui = 'bold'},
    b = {bg = colors.gray3, fg = colors.brightwhite},
    c = {bg = colors.gray1, fg = colors.brightwhite}
  },
  terminal = {
    a = {bg = colors.green, fg = colors.black, gui = 'bold'},
    b = {bg = colors.gray3, fg = colors.brightwhite},
    c = {bg = colors.gray1, fg = colors.brightwhite}
  },
  inactive = {
    a = {bg = colors.gray4, fg = colors.gray6, gui = 'bold'},
    b = {bg = colors.gray3, fg = colors.gray6},
    c = {bg = colors.gray2, fg = colors.gray6}
  }
}
