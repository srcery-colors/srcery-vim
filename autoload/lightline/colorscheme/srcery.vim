" -----------------------------------------------------------------------------
" File: srcery.vim
" Description: Srcery colorscheme for Lightline (itchyny/lightline.vim)
" Author: Roosta <mail@roosta>
" Source: https://github.com/morhetz/gruvbox/blob/master/autoload/lightline/colorscheme/gruvbox.vim
" Last Modified: 2017-03-28
" -----------------------------------------------------------------------------

if exists('g:lightline')

  " Normal Colors
  let s:black          = srcery#helper#GetColor('SrceryBlack')
  let s:red            = srcery#helper#GetColor('SrceryRed')
  let s:green          = srcery#helper#GetColor('SrceryGreen')
  let s:yellow         = srcery#helper#GetColor('SrceryYellow')
  let s:blue           = srcery#helper#GetColor('SrceryBlue')
  let s:magenta        = srcery#helper#GetColor('SrceryMagenta')
  let s:cyan           = srcery#helper#GetColor('SrceryCyan')
  let s:white          = srcery#helper#GetColor('SrceryWhite')

  " Bright Colors
  let s:bright_black   = srcery#helper#GetColor('SrceryBrightBlack')
  let s:bright_red     = srcery#helper#GetColor('SrceryBrightRed')
  let s:bright_green   = srcery#helper#GetColor('SrceryBrightGreen')
  let s:bright_yellow  = srcery#helper#GetColor('SrceryBrightYellow')
  let s:bright_blue    = srcery#helper#GetColor('SrceryBrightBlue')
  let s:bright_magenta = srcery#helper#GetColor('SrceryBrightMagenta')
  let s:bright_cyan    = srcery#helper#GetColor('SrceryBrightCyan')
  let s:bright_white   = srcery#helper#GetColor('SrceryBrightWhite')

  " Extra Colors
  let s:orange         = srcery#helper#GetColor('SrceryOrange')
  let s:bright_orange  = srcery#helper#GetColor('SrceryBrightOrange')
  let s:hard_black     = srcery#helper#GetColor('SrceryHardBlack')
  let s:xgray1         = srcery#helper#GetColor('SrceryXgray1')
  let s:xgray2         = srcery#helper#GetColor('SrceryXgray2')
  let s:xgray3         = srcery#helper#GetColor('SrceryXgray3')
  let s:xgray4         = srcery#helper#GetColor('SrceryXgray4')
  let s:xgray5         = srcery#helper#GetColor('SrceryXgray5')
  let s:xgray6         = srcery#helper#GetColor('SrceryXgray6')

  let s:p = {'normal':{}, 'inactive':{}, 'insert':{}, 'replace':{}, 'visual':{}, 'tabline':{}, 'terminal':{}, 'command':{}}
  let s:p.normal.left     = [ [ s:bright_white, s:xgray5 ], [ s:bright_white, s:xgray3 ] ]
  let s:p.normal.right    = [ [ s:bright_white, s:xgray5 ], [ s:bright_white, s:xgray3 ] ]
  let s:p.normal.middle   = [ [ s:bright_white, s:xgray2 ] ]
  let s:p.inactive.right  = [ [ s:bright_black, s:xgray2 ], [ s:bright_black, s:xgray2 ] ]
  let s:p.inactive.left   = [ [ s:bright_black, s:xgray2 ], [ s:bright_black, s:xgray2 ] ]
  let s:p.inactive.middle = [ [ s:xgray6, s:xgray2 ] ]
  let s:p.insert.left     = [ [ s:black, s:bright_white ], [ s:black, s:bright_black ] ]
  let s:p.insert.right    = [ [ s:black, s:bright_white ], [ s:black, s:bright_black ] ]
  let s:p.insert.middle   = [ [ s:bright_white, s:xgray2 ] ]
  let s:p.replace.left    = [ [ s:bright_white, s:bright_red ], [ s:black, s:bright_black ] ]
  let s:p.replace.right   = [ [ s:bright_white, s:bright_red ], [ s:black, s:bright_black ] ]
  let s:p.replace.middle  = [ [ s:bright_white, s:xgray2 ] ]
  let s:p.visual.left     = [ [ s:black, s:cyan ], [ s:bright_white, s:xgray5 ] ]
  let s:p.visual.right    = [ [ s:black, s:cyan ], [ s:bright_white, s:xgray5 ] ]
  let s:p.visual.middle   = [ [ s:bright_white, s:xgray2 ] ]
  let s:p.tabline.left    = [ [ s:bright_black, s:xgray2 ] ]
  let s:p.tabline.tabsel  = [ [ s:bright_white, s:xgray5 ] ]
  let s:p.tabline.middle  = [ [ s:black, s:xgray2 ] ]
  let s:p.tabline.right   = [ [ s:bright_white, s:xgray5 ] ]
  let s:p.normal.error    = [ [ s:bright_white, s:red ] ]
  let s:p.normal.warning  = [ [ s:black, s:orange ] ]
  let s:p.terminal.left   = [ [ s:black, s:green ], [ s:bright_white, s:xgray5 ] ]
  let s:p.terminal.right  = [ [ s:black, s:green ], [ s:bright_white, s:xgray5 ] ]
  let s:p.terminal.middle = [ [ s:bright_white, s:xgray2 ] ]
  let s:p.command.left    = [ [ s:black, s:yellow ], [ s:bright_white, s:xgray5 ] ]
  let s:p.command.right   = [ [ s:black, s:yellow ], [ s:bright_white, s:xgray5 ] ]
  let s:p.command.middle  = [ [ s:bright_white, s:xgray2 ] ]


  let g:lightline#colorscheme#srcery#palette = lightline#colorscheme#flatten(s:p)
endif
