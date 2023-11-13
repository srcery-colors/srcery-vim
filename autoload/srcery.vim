" Setup Variables: {{{
" Colors {{{

if !exists('g:srcery_black')
  let g:srcery_black='#1C1B19'
endif

if !exists('g:srcery_red')
  let g:srcery_red='#EF2F27'
endif

if !exists('g:srcery_green')
  let g:srcery_green='#519F50'
endif

if !exists('g:srcery_yellow')
  let g:srcery_yellow='#FBB829'
endif

if !exists('g:srcery_blue')
  let g:srcery_blue='#2C78BF'
endif

if !exists('g:srcery_magenta')
  let g:srcery_magenta='#E02C6D'
endif

if !exists('g:srcery_cyan')
  let g:srcery_cyan='#0AAEB3'
endif

if !exists('g:srcery_white')
  let g:srcery_white='#BAA67F'
endif

if !exists('g:srcery_bright_black')
  let g:srcery_bright_black='#918175'
endif

if !exists('g:srcery_bright_red')
  let g:srcery_bright_red='#F75341'
endif

if !exists('g:srcery_bright_green')
  let g:srcery_bright_green='#98BC37'
endif

if !exists('g:srcery_bright_yellow')
  let g:srcery_bright_yellow='#FED06E'
endif

if !exists('g:srcery_bright_blue')
  let g:srcery_bright_blue='#68A8E4'
endif

if !exists('g:srcery_bright_magenta')
  let g:srcery_bright_magenta='#FF5C8F'
endif

if !exists('g:srcery_bright_cyan')
  let g:srcery_bright_cyan='#2BE4D0'
endif

if !exists('g:srcery_bright_white')
  let g:srcery_bright_white='#FCE8C3'
endif

if !exists('g:srcery_orange')
  let g:srcery_orange='#FF5F00'
endif

if !exists('g:srcery_orange_cterm')
  let g:srcery_orange_cterm=202
endif

if !exists('g:srcery_bright_orange')
  let g:srcery_bright_orange='#FF8700'
endif

if !exists('g:srcery_bright_orange_cterm')
  let g:srcery_bright_orange_cterm=208
endif

if !exists('g:srcery_hard_black')
  let g:srcery_hard_black='#121212'
endif

if !exists('g:srcery_hard_black_cterm')
  let g:srcery_hard_black_cterm=233
endif

if !exists('g:srcery_xgray1')
  let g:srcery_xgray1='#262626'
endif

if !exists('g:srcery_xgray1_cterm')
  let g:srcery_xgray1_cterm=235
endif

if !exists('g:srcery_xgray2')
  let g:srcery_xgray2='#303030'
endif

if !exists('g:srcery_xgray2_cterm')
  let g:srcery_xgray2_cterm=236
endif

if !exists('g:srcery_xgray3')
  let g:srcery_xgray3='#3A3A3A'
endif

if !exists('g:srcery_xgray3_cterm')
  let g:srcery_xgray3_cterm=237
endif

if !exists('g:srcery_xgray4')
  let g:srcery_xgray4='#444444'
endif

if !exists('g:srcery_xgray4_cterm')
  let g:srcery_xgray4_cterm=238
endif

if !exists('g:srcery_xgray5')
  let g:srcery_xgray5='#4E4E4E'
endif

if !exists('g:srcery_xgray5_cterm')
  let g:srcery_xgray5_cterm=239
endif

if !exists('g:srcery_xgray6')
  let g:srcery_xgray6='#585858'
endif

if !exists('g:srcery_xgray6_cterm')
  let g:srcery_xgray6_cterm=240
endif

" }}}
" Options {{{

if !exists('g:srcery_bold')
  let g:srcery_bold=1
endif

if !exists('g:srcery_italic')
  if has('gui_running') || $TERM_ITALICS ==? 'true'
    let g:srcery_italic=1
  else
    let g:srcery_italic=0
  endif
endif

if !exists('g:srcery_undercurl')
  let g:srcery_undercurl=1
endif

if !exists('g:srcery_underline')
  let g:srcery_underline=1
endif

if !exists('g:srcery_inverse')
  let g:srcery_inverse=1
endif

if !exists('g:srcery_inverse_matches')
  let g:srcery_inverse_matches=0
endif

if !exists('g:srcery_inverse_match_paren')
  let g:srcery_inverse_match_paren=0
endif

if !exists('g:srcery_dim_lisp_paren')
  let g:srcery_dim_lisp_paren=0
endif

if !exists('g:srcery_guisp_fallback') || index(['fg', 'bg'], g:srcery_guisp_fallback) == -1
  let g:srcery_guisp_fallback='NONE'
endif

if !exists('g:srcery_italic_types')
  let g:srcery_italic_types=0
endif

if !exists('g:srcery_bg')
  "Sets the default color for both guisp and cterm backgrounds.
  let g:srcery_bg=[g:srcery_black, 0]
elseif (index(g:srcery_bg, 'DEFAULT') >= 0) || (index(g:srcery_bg, 'NONE') >= 0 && has('gui_running'))
  "Defaults should be set if the user specifies it, or if the background is set as 'NONE' whilst the gui is running.
  for i in [0, 1]
    if g:srcery_bg[i] ==# 'DEFAULT' || (g:srcery_bg[i] ==# 'NONE' && has('gui_running'))
      let g:srcery_bg[i] = (i==1 ? 0 : g:srcery_black)
    endif
  endfor
endif

if !exists('g:srcery_hard_black_terminal_bg')
  let g:srcery_hard_black_terminal_bg=1
endif

" }}}
" }}}
" Palette: {{{

let g:srcery#palette                = {}
let g:srcery#palette.none           = ['NONE', 'NONE']

" 16 base colors
let g:srcery#palette.black          = [g:srcery_black, 0]
let g:srcery#palette.red            = [g:srcery_red, 1]
let g:srcery#palette.green          = [g:srcery_green, 2]
let g:srcery#palette.yellow         = [g:srcery_yellow, 3]
let g:srcery#palette.blue           = [g:srcery_blue, 4]
let g:srcery#palette.magenta        = [g:srcery_magenta, 5]
let g:srcery#palette.cyan           = [g:srcery_cyan, 6]
let g:srcery#palette.white          = [g:srcery_white, 7]
let g:srcery#palette.bright_black   = [g:srcery_bright_black, 8]
let g:srcery#palette.bright_red     = [g:srcery_bright_red, 9]
let g:srcery#palette.bright_green   = [g:srcery_bright_green, 10]
let g:srcery#palette.bright_yellow  = [g:srcery_bright_yellow, 11]
let g:srcery#palette.bright_blue    = [g:srcery_bright_blue, 12]
let g:srcery#palette.bright_magenta = [g:srcery_bright_magenta, 13]
let g:srcery#palette.bright_cyan    = [g:srcery_bright_cyan, 14]
let g:srcery#palette.bright_white   = [g:srcery_bright_white, 15]

" xterm colors
let g:srcery#palette.orange         = [g:srcery_orange,
                                    \  g:srcery_orange_cterm]
let g:srcery#palette.bright_orange  = [g:srcery_bright_orange,
                                    \  g:srcery_bright_orange_cterm]
let g:srcery#palette.hard_black     = [g:srcery_hard_black,
                                    \  g:srcery_hard_black_cterm]
let g:srcery#palette.xgray1         = [g:srcery_xgray1, g:srcery_xgray1_cterm]
let g:srcery#palette.xgray2         = [g:srcery_xgray2, g:srcery_xgray2_cterm]
let g:srcery#palette.xgray3         = [g:srcery_xgray3, g:srcery_xgray3_cterm]
let g:srcery#palette.xgray4         = [g:srcery_xgray4, g:srcery_xgray4_cterm]
let g:srcery#palette.xgray5         = [g:srcery_xgray5, g:srcery_xgray5_cterm]
let g:srcery#palette.xgray6         = [g:srcery_xgray6, g:srcery_xgray6_cterm]

" }}}
" Setup Emphasis: {{{

let g:srcery#palette.bold = 'bold,'
if g:srcery_bold == 0
  let g:srcery#palette.bold = ''
endif

let g:srcery#palette.italic = 'italic,'
if g:srcery_italic == 0
  let g:srcery#palette.italic = ''
endif

let g:srcery#palette.underline = 'underline,'
if g:srcery_underline == 0
  let g:srcery#palette.underline = ''
endif

let g:srcery#palette.undercurl = 'undercurl,'
if g:srcery_undercurl == 0
  let g:srcery#palette.undercurl = ''
endif

let g:srcery#palette.inverse = 'inverse,'
if g:srcery_inverse == 0
  let g:srcery#palette.inverse = ''
endif

" }}}

" Setup Terminal Colors For Neovim: {{{

if has('nvim')
  let g:terminal_color_0 = g:srcery#palette.black[0]
  let g:terminal_color_8 = g:srcery#palette.bright_black[0]

  let g:terminal_color_1 = g:srcery#palette.red[0]
  let g:terminal_color_9 = g:srcery#palette.bright_red[0]

  let g:terminal_color_2 = g:srcery#palette.green[0]
  let g:terminal_color_10 = g:srcery#palette.bright_green[0]

  let g:terminal_color_3 = g:srcery#palette.yellow[0]
  let g:terminal_color_11 = g:srcery#palette.bright_yellow[0]

  let g:terminal_color_4 = g:srcery#palette.blue[0]
  let g:terminal_color_12 = g:srcery#palette.bright_blue[0]

  let g:terminal_color_5 = g:srcery#palette.magenta[0]
  let g:terminal_color_13 = g:srcery#palette.bright_magenta[0]

  let g:terminal_color_6 = g:srcery#palette.cyan[0]
  let g:terminal_color_14 = g:srcery#palette.bright_cyan[0]

  let g:terminal_color_7 = g:srcery#palette.white[0]
  let g:terminal_color_15 = g:srcery#palette.bright_white[0]
endif

" }}}
" Setup Terminal Colors For Vim with termguicolors: {{{

if exists('*term_setansicolors')
  let g:terminal_ansi_colors = repeat([0], 16)

  let g:terminal_ansi_colors[0] = g:srcery#palette.black[0]
  let g:terminal_ansi_colors[8] = g:srcery#palette.bright_black[0]

  let g:terminal_ansi_colors[1] = g:srcery#palette.red[0]
  let g:terminal_ansi_colors[9] = g:srcery#palette.bright_red[0]

  let g:terminal_ansi_colors[2] = g:srcery#palette.green[0]
  let g:terminal_ansi_colors[10] = g:srcery#palette.bright_green[0]

  let g:terminal_ansi_colors[3] = g:srcery#palette.yellow[0]
  let g:terminal_ansi_colors[11] = g:srcery#palette.bright_yellow[0]

  let g:terminal_ansi_colors[4] = g:srcery#palette.blue[0]
  let g:terminal_ansi_colors[12] = g:srcery#palette.bright_blue[0]

  let g:terminal_ansi_colors[5] = g:srcery#palette.magenta[0]
  let g:terminal_ansi_colors[13] = g:srcery#palette.bright_magenta[0]

  let g:terminal_ansi_colors[6] = g:srcery#palette.cyan[0]
  let g:terminal_ansi_colors[14] = g:srcery#palette.bright_cyan[0]

  let g:terminal_ansi_colors[7] = g:srcery#palette.white[0]
  let g:terminal_ansi_colors[15] = g:srcery#palette.bright_white[0]
endif

" }}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
