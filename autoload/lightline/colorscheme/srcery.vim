" -----------------------------------------------------------------------------
" File: srcery.vim
" Description: Srcery colorscheme for Lightline (itchyny/lightline.vim)
" Author: Roosta <mail@roosta>
" Source: https://github.com/morhetz/gruvbox/blob/master/autoload/lightline/colorscheme/gruvbox.vim
" -----------------------------------------------------------------------------

if exists('g:lightline')

  " 16 base colors
  let s:black          = [g:srcery_black, 0]
  let s:red            = [g:srcery_red, 1]
  let s:green          = [g:srcery_green, 2]
  let s:yellow         = [g:srcery_yellow, 3]
  let s:blue           = [g:srcery_blue, 4]
  let s:magenta        = [g:srcery_magenta, 5]
  let s:cyan           = [g:srcery_cyan, 6]
  let s:white          = [g:srcery_white, 7]
  let s:bright_black   = [g:srcery_bright_black, 8]
  let s:bright_red     = [g:srcery_bright_red, 9]
  let s:bright_green   = [g:srcery_bright_green, 10]
  let s:bright_yellow  = [g:srcery_bright_yellow, 11]
  let s:bright_blue    = [g:srcery_bright_blue, 12]
  let s:bright_magenta = [g:srcery_bright_magenta, 13]
  let s:bright_cyan    = [g:srcery_bright_cyan, 14]
  let s:bright_white   = [g:srcery_bright_white, 15]

  " xterm colors
  let s:orange         = [g:srcery_orange, g:srcery_orange_cterm]
  let s:bright_orange  = [g:srcery_bright_orange, g:srcery_bright_orange_cterm]
  let s:hard_black     = [g:srcery_hard_black, g:srcery_hard_black_cterm]
  let s:gray1         = [g:srcery_gray1, g:srcery_gray1_cterm]
  let s:gray2         = [g:srcery_gray2, g:srcery_gray2_cterm]
  let s:gray3         = [g:srcery_gray3, g:srcery_gray3_cterm]
  let s:gray4         = [g:srcery_gray4, g:srcery_gray4_cterm]
  let s:gray5         = [g:srcery_gray5, g:srcery_gray5_cterm]
  let s:gray6         = [g:srcery_gray6, g:srcery_gray6_cterm]

  let s:p = {'normal':{}, 'inactive':{}, 'insert':{}, 'replace':{}, 'visual':{}, 'tabline':{}, 'terminal':{}, 'command':{}}
  let s:p.normal.left     = [ [ s:bright_white, s:gray5 ], [ s:bright_white, s:gray3 ] ]
  let s:p.normal.right    = [ [ s:bright_white, s:gray5 ], [ s:bright_white, s:gray3 ] ]
  let s:p.normal.middle   = [ [ s:bright_white, s:gray2 ] ]
  let s:p.inactive.right  = [ [ s:bright_black, s:gray2 ], [ s:bright_black, s:gray2 ] ]
  let s:p.inactive.left   = [ [ s:bright_black, s:gray2 ], [ s:bright_black, s:gray2 ] ]
  let s:p.inactive.middle = [ [ s:gray6, s:gray2 ] ]
  let s:p.insert.left     = [ [ s:black, s:bright_white ], [ s:black, s:bright_black ] ]
  let s:p.insert.right    = [ [ s:black, s:bright_white ], [ s:black, s:bright_black ] ]
  let s:p.insert.middle   = [ [ s:bright_white, s:gray2 ] ]
  let s:p.replace.left    = [ [ s:bright_white, s:bright_red ], [ s:black, s:bright_black ] ]
  let s:p.replace.right   = [ [ s:bright_white, s:bright_red ], [ s:black, s:bright_black ] ]
  let s:p.replace.middle  = [ [ s:bright_white, s:gray2 ] ]
  let s:p.visual.left     = [ [ s:black, s:cyan ], [ s:bright_white, s:gray5 ] ]
  let s:p.visual.right    = [ [ s:black, s:cyan ], [ s:bright_white, s:gray5 ] ]
  let s:p.visual.middle   = [ [ s:bright_white, s:gray2 ] ]
  let s:p.tabline.left    = [ [ s:bright_black, s:gray2 ] ]
  let s:p.tabline.tabsel  = [ [ s:bright_white, s:gray5 ] ]
  let s:p.tabline.middle  = [ [ s:black, s:gray2 ] ]
  let s:p.tabline.right   = [ [ s:bright_white, s:gray5 ] ]
  let s:p.normal.error    = [ [ s:bright_white, s:red ] ]
  let s:p.normal.warning  = [ [ s:black, s:orange ] ]
  let s:p.terminal.left   = [ [ s:black, s:green ], [ s:bright_white, s:gray5 ] ]
  let s:p.terminal.right  = [ [ s:black, s:green ], [ s:bright_white, s:gray5 ] ]
  let s:p.terminal.middle = [ [ s:bright_white, s:gray2 ] ]
  let s:p.command.left    = [ [ s:black, s:yellow ], [ s:bright_white, s:gray5 ] ]
  let s:p.command.right   = [ [ s:black, s:yellow ], [ s:bright_white, s:gray5 ] ]
  let s:p.command.middle  = [ [ s:bright_white, s:gray2 ] ]


  let g:lightline#colorscheme#srcery#palette = lightline#colorscheme#flatten(s:p)
endif
