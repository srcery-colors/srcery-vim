" 'srcery.vim' -- Vim color scheme.
" Maintainer:   Roosta (mail@roosta.sh)
" Description:  Colorscheme that focus ease of use and clearly defined contrasting colors with a slightly earthy tone.
" Original Source: https://github.com/morhetz/gruvbox

scriptencoding utf-8

set background=dark

if v:version > 580
  hi clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name='srcery'

if !has('gui_running') && &t_Co != 256
  finish
endif

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

if !exists('g:srcery_strikethrough')
  let g:srcery_strikethrough=1
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

" Palette {{{

let s:none           = ['NONE', 'NONE']

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
let s:xgray1         = [g:srcery_xgray1, g:srcery_xgray1_cterm]
let s:xgray2         = [g:srcery_xgray2, g:srcery_xgray2_cterm]
let s:xgray3         = [g:srcery_xgray3, g:srcery_xgray3_cterm]
let s:xgray4         = [g:srcery_xgray4, g:srcery_xgray4_cterm]
let s:xgray5         = [g:srcery_xgray5, g:srcery_xgray5_cterm]
let s:xgray6         = [g:srcery_xgray6, g:srcery_xgray6_cterm]

"}}}

" Setup Emphasis: {{{

let s:bold = 'bold,'
if g:srcery_bold == 0
  let s:bold = ''
endif

let s:italic = 'italic,'
if g:srcery_italic == 0
  let s:italic = ''
endif

let s:underline = 'underline,'
if g:srcery_underline == 0
  let s:underline = ''
endif

let s:undercurl = 'undercurl,'
if g:srcery_undercurl == 0
  let s:undercurl = ''
endif

let s:inverse = 'inverse,'
if g:srcery_inverse == 0
  let s:inverse = ''
endif

let s:strikethrough = 'strikethrough,'
if g:srcery_strikethrough == 0
  let s:strikethrough = ''
endif

" }}}

" Highlighting Function: {{{

function! s:HL(group, fg, ...)
  " Arguments: group, guifg, guibg, gui, guisp

  " foreground
  let l:fg = a:fg

  " background
  if a:0 >= 1
    let l:bg = a:1
  else
    let l:bg = s:none
  endif

  " emphasis
  if a:0 >= 2 && strlen(a:2)
    let l:emstr = a:2
  else
    let l:emstr = 'NONE,'
  endif

  " special fallback
  if a:0 >= 3
    if g:srcery_guisp_fallback !=# 'NONE'
      let fg = a:3
    endif

    " bg fallback mode should invert higlighting
    if g:srcery_guisp_fallback ==# 'bg'
      let emstr .= 'inverse,'
    endif
  endif

  let l:histring = [ 'hi', a:group,
        \ 'guifg=' . l:fg[0], 'ctermfg=' . l:fg[1],
        \ 'guibg=' . l:bg[0], 'ctermbg=' . l:bg[1],
        \ 'gui=' . l:emstr[:-2], 'cterm=' . l:emstr[:-2]
        \ ]

  " special
  if a:0 >= 3
    call add(l:histring, 'guisp=' . a:3[0])
  endif

  execute join(l:histring, ' ')
endfunction

"}}}

" Srcery Hi Groups: {{{

" memoize common hi groups
call s:HL('SrceryRed', s:red)
call s:HL('SrceryGreen', s:green)
call s:HL('SrceryYellow', s:yellow)
call s:HL('SrceryBlue', s:blue)
call s:HL('SrceryMagenta', s:magenta)
call s:HL('SrceryCyan', s:cyan)
call s:HL('SrceryBlack', s:black)
call s:HL('SrceryWhite', s:white)

call s:HL('SrceryRedBold', s:red, s:none, s:bold)
call s:HL('SrceryGreenBold', s:green, s:none, s:bold)
call s:HL('SrceryYellowBold', s:yellow, s:none, s:bold)
call s:HL('SrceryBlueBold', s:blue, s:none, s:bold)
call s:HL('SrceryMagentaBold', s:magenta, s:none, s:bold)
call s:HL('SrceryCyanBold', s:cyan, s:none, s:bold)
call s:HL('SrceryBlackBold', s:black, s:none, s:bold)
call s:HL('SrceryWhiteBold', s:white, s:none, s:bold)

call s:HL('SrceryBrightRed', s:bright_red, s:none)
call s:HL('SrceryBrightGreen', s:bright_green, s:none)
call s:HL('SrceryBrightYellow', s:bright_yellow, s:none)
call s:HL('SrceryBrightBlue', s:bright_blue, s:none)
call s:HL('SrceryBrightMagenta', s:bright_magenta, s:none)
call s:HL('SrceryBrightCyan', s:bright_cyan, s:none)
call s:HL('SrceryBrightBlack', s:bright_black, s:none)
call s:HL('SrceryBrightWhite', s:bright_white)

call s:HL('SrceryBrightRedBold', s:bright_red, s:none, s:bold)
call s:HL('SrceryBrightGreenBold', s:bright_green, s:none, s:bold)
call s:HL('SrceryBrightYellowBold', s:bright_yellow, s:none, s:bold)
call s:HL('SrceryBrightBlueBold', s:bright_blue, s:none, s:bold)
call s:HL('SrceryBrightMagentaBold', s:bright_magenta, s:none, s:bold)
call s:HL('SrceryBrightCyanBold', s:bright_cyan, s:none, s:bold)
call s:HL('SrceryBrightBlackBold', s:bright_black, s:none, s:bold)
call s:HL('SrceryBrightWhiteBold', s:bright_white, s:none, s:bold)

" special
call s:HL('SrceryOrange', s:orange)
call s:HL('SrceryBrightOrange', s:bright_orange)
call s:HL('SrceryOrangeBold', s:orange, s:none, s:bold)
call s:HL('SrceryHardBlack', s:hard_black)
call s:HL('SrceryXgray1', s:xgray1)
call s:HL('SrceryXgray2', s:xgray2)
call s:HL('SrceryXgray3', s:xgray3)
call s:HL('SrceryXgray4', s:xgray4)
call s:HL('SrceryXgray5', s:xgray5)
call s:HL('SrceryXgray6', s:xgray6)

" }}}

" Setup Terminal Colors For Neovim: {{{

if has('nvim')
  let g:terminal_color_0 = s:black[0]
  let g:terminal_color_8 = s:bright_black[0]

  let g:terminal_color_1 = s:red[0]
  let g:terminal_color_9 = s:bright_red[0]

  let g:terminal_color_2 = s:green[0]
  let g:terminal_color_10 = s:bright_green[0]

  let g:terminal_color_3 = s:yellow[0]
  let g:terminal_color_11 = s:bright_yellow[0]

  let g:terminal_color_4 = s:blue[0]
  let g:terminal_color_12 = s:bright_blue[0]

  let g:terminal_color_5 = s:magenta[0]
  let g:terminal_color_13 = s:bright_magenta[0]

  let g:terminal_color_6 = s:cyan[0]
  let g:terminal_color_14 = s:bright_cyan[0]

  let g:terminal_color_7 = s:white[0]
  let g:terminal_color_15 = s:bright_white[0]
endif

" }}}

" Setup Terminal Colors For Vim with termguicolors: {{{

if exists('*term_setansicolors')
  let g:terminal_ansi_colors = repeat([0], 16)

  let g:terminal_ansi_colors[0] = s:black[0]
  let g:terminal_ansi_colors[8] = s:bright_black[0]

  let g:terminal_ansi_colors[1] = s:red[0]
  let g:terminal_ansi_colors[9] = s:bright_red[0]

  let g:terminal_ansi_colors[2] = s:green[0]
  let g:terminal_ansi_colors[10] = s:bright_green[0]

  let g:terminal_ansi_colors[3] = s:yellow[0]
  let g:terminal_ansi_colors[11] = s:bright_yellow[0]

  let g:terminal_ansi_colors[4] = s:blue[0]
  let g:terminal_ansi_colors[12] = s:bright_blue[0]

  let g:terminal_ansi_colors[5] = s:magenta[0]
  let g:terminal_ansi_colors[13] = s:bright_magenta[0]

  let g:terminal_ansi_colors[6] = s:cyan[0]
  let g:terminal_ansi_colors[14] = s:bright_cyan[0]

  let g:terminal_ansi_colors[7] = s:white[0]
  let g:terminal_ansi_colors[15] = s:bright_white[0]
endif

" }}}

" Vanilla Colorscheme: {{{

" General UI: {{{

" Normal text
"
call s:HL('Normal', s:bright_white, g:srcery_bg)

call s:HL('FloatBorder', s:white, g:srcery_bg)
call s:HL('NormalFloat', s:none, s:xgray2)

if v:version >= 700
  " Screen line that the cursor is
  call s:HL('CursorLine',   s:none, s:xgray2)
  " Screen column that the cursor is
  hi! link CursorColumn CursorLine

  call s:HL('TabLineFill', s:bright_black, s:xgray2)
  call s:HL('TabLineSel', s:bright_white, s:xgray5)

  " Not active tab page label
  hi! link TabLine TabLineFill

  " Match paired bracket under the cursor
  "
  if g:srcery_inverse_match_paren == 1
    call s:HL('MatchParen', s:bright_magenta, s:none, s:inverse . s:bold)
  else
    call s:HL('MatchParen', s:bright_magenta, s:none, s:bold)
  endif
endif

if v:version >= 703
  " Highlighted screen columns
  call s:HL('ColorColumn',  s:none, s:xgray2)

  " Concealed element: \lambda → λ
  call s:HL('Conceal', s:blue, s:none)

  " Line number of CursorLine
  call s:HL('CursorLineNr', s:yellow, g:srcery_bg)

endif

hi! link NonText SrceryXgray4
hi! link SpecialKey SrceryBlue

if g:srcery_inverse == 1
  call s:HL('Visual', s:none, s:none, s:inverse)
else
  call s:HL('Visual', s:none, s:xgray2, s:bold)
endif

hi! link VisualNOS Visual

if g:srcery_inverse == 1 && g:srcery_inverse_matches == 1
  call s:HL('Search', s:none, s:none, s:inverse)
  call s:HL('IncSearch', s:none, s:none, s:underline . s:inverse . s:bold)
  call s:HL('CurSearch', s:none, s:none, s:underline . s:inverse . s:bold)
else
  call s:HL('Search', s:none, s:xgray5)
  call s:HL('IncSearch', s:none, s:xgray5, s:underline . s:bold)
  call s:HL('CurSearch', s:none, s:xgray5, s:underline . s:bold)
endif

call s:HL('Underlined', s:blue, s:none, s:underline)

call s:HL('StatusLine',   s:bright_white, s:xgray2)

call s:HL('StatusLineNC', s:bright_black, g:srcery_bg, s:underline)
" The column separating vertically split windows
call s:HL('VertSplit', s:bright_white, g:srcery_bg)
" Current match in wildmenu completion
call s:HL('WildMenu', s:blue, g:srcery_bg, s:bold)

" Directory names, special names in listing
hi! link Directory SrceryGreenBold

" Titles for output from :set all, :autocmd, etc.
hi! link Title SrceryGreenBold

" Error messages on the command line
call s:HL('ErrorMsg', s:bright_white, s:red)
" More prompt: -- More --
hi! link MoreMsg SrceryYellowBold
" Current mode message: -- INSERT --
hi! link ModeMsg SrceryYellowBold
" 'Press enter' prompt and yes/no questions
hi! link Question SrceryOrangeBold
" Warning messages
hi! link WarningMsg SrceryRedBold

" }}}
" Gutter: {{{

" Line number for :number and :# commands
call s:HL('LineNr', s:bright_black)

" Column where signs are displayed
" TODO Possibly need to fix  SignColumn
call s:HL('SignColumn', s:none, g:srcery_bg)
" Line used for closed folds
call s:HL('Folded', s:bright_black, g:srcery_bg, s:italic)
" Column where folds are displayed
call s:HL('FoldColumn', s:bright_black, g:srcery_bg)

" }}}
" Cursor: {{{

" Character under cursor
call s:HL('Cursor', s:black, s:yellow)
" Visual mode cursor, selection
hi! link vCursor Cursor
" Input moder cursor
hi! link iCursor Cursor
" Language mapping cursor
hi! link lCursor Cursor

" }}}
" Syntax Highlighting: {{{

hi! link Special SrceryOrange

call s:HL('Comment', s:bright_black, s:none, s:italic)

call s:HL('Todo', s:bright_white, g:srcery_bg, s:bold . s:italic)

call s:HL('Error', s:bright_white, s:red, s:bold)

" String constant: "this is a string"
call s:HL('String',  s:bright_green)

" Generic statement
hi! link Statement SrceryRed
" if, then, else, endif, swicth, etc.
hi! link Conditional SrceryRed
" for, do, while, etc.
hi! link Repeat SrceryRed
" case, default, etc.
hi! link Label SrceryRed
" try, catch, throw
hi! link Exception SrceryRed
" sizeof, "+", "*", etc.
hi! link Operator SrceryBrightWhite
" Any other keyword
hi! link Keyword SrceryRed

" Variable name
hi! link Identifier SrceryCyan
" Function name
hi! link Function SrceryYellow

" Generic preprocessor
hi! link PreProc SrceryCyan
" Preprocessor #include
hi! link Include SrceryCyan
" Preprocessor #define
hi! link Define SrceryCyan
" Same as Define
hi! link Macro SrceryOrange
" Preprocessor #if, #else, #endif, etc.
hi! link PreCondit SrceryCyan

" Generic constant
hi! link Constant SrceryBrightMagenta
" Character constant: 'c', '/n'
hi! link Character SrceryBrightMagenta
" Boolean constant: TRUE, false
hi! link Boolean SrceryBrightMagenta
" Number constant: 234, 0xff
hi! link Number SrceryBrightMagenta
" Floating point constant: 2.3e10
hi! link Float SrceryBrightMagenta

" Generic type
if g:srcery_italic_types == 1 && g:srcery_italic == 1
  call s:HL('Type', s:bright_blue, s:none, s:italic)
else
  hi! link Type SrceryBrightBlue
end
" static, register, volatile, etc
hi! link StorageClass SrceryOrange
" struct, union, enum, etc.
hi! link Structure SrceryCyan
" typedef
hi! link Typedef SrceryMagenta

if g:srcery_dim_lisp_paren == 1
  hi! link Delimiter SrceryXgray6
else
  hi! link Delimiter SrceryBrightBlack
endif

" }}}
" Completion Menu: {{{

if v:version >= 700
  " Popup menu: normal item
  call s:HL('Pmenu', s:bright_white, s:xgray2)
  " Popup menu: selected item
  call s:HL('PmenuSel', s:bright_white, s:blue, s:bold)

  " Popup menu: scrollbar
  call s:HL('PmenuSbar', s:none, g:srcery_bg)
  " Popup menu: scrollbar thumb
  call s:HL('PmenuThumb', s:none, s:orange)
endif

" }}}
" Diffs: {{{

call s:HL('DiffDelete', s:red, g:srcery_bg)
call s:HL('DiffAdd',    s:green, g:srcery_bg)
call s:HL('DiffChange', s:cyan, g:srcery_bg)
call s:HL('DiffText',   s:yellow, g:srcery_bg)

" }}}
" Spelling: {{{

if has('spell')
  " Not capitalised word, or compile warnings
  call s:HL('SpellCap',   s:green, s:none, s:bold . s:italic)
  " Not recognized word
  call s:HL('SpellBad',   s:none, s:none, s:undercurl, s:blue)
  " Wrong spelling for selected region
  call s:HL('SpellLocal', s:none, s:none, s:undercurl, s:cyan)
  " Rare word
  call s:HL('SpellRare',  s:none, s:none, s:undercurl, s:magenta)
endif

" }}}
" Terminal: {{{

if g:srcery_hard_black_terminal_bg == 1 && has('terminal')
  " Must set an explicit background as NONE won't work
  " Therefore not useful with transparent background option
  call s:HL('Terminal', s:bright_white, s:hard_black)
endif
" }}}
" Neovim LSP: {{{

if has('nvim')
  " for backward compatibility with neovim v0.5.x
  hi! link LspDiagnosticsDefaultError DiagnosticError
  hi! link LspDiagnosticsDefaultWarning DiagnosticWarn
  hi! link LspDiagnosticsDefaultInformation DiagnosticInfo
  hi! link LspDiagnosticsDefaultHint DiagnosticHint
  hi! link LspDiagnosticsUnderlineError DiagnosticUnderlineError
  hi! link LspDiagnosticsUnderlineHint DiagnosticUnderlineHint
  hi! link LspDiagnosticsUnderlineInformation DiagnosticUnderlineInfo
  hi! link LspDiagnosticsUnderlineWarning DiagnosticUnderlineWarn

  " latest hl groups
  hi! link DiagnosticError SrceryBrightRed
  hi! link DiagnosticWarn SrceryBrightYellow
  hi! link DiagnosticInfo SrceryBrightGreen
  hi! link DiagnosticHint SrceryBrightCyan
  call s:HL('DiagnosticUnderlineError', s:bright_red, s:none, s:undercurl)
  call s:HL('DiagnosticUnderlineWarn', s:bright_yellow, s:none, s:undercurl)
  call s:HL('DiagnosticUnderlineInfo', s:bright_green, s:none, s:undercurl)
  call s:HL('DiagnosticUnderlineHint', s:bright_cyan, s:none, s:undercurl)
endif

" }}}

" }}}

" Languages: {{{

" C: {{{

hi! link cOperator SrceryMagenta
hi! link cStructure SrceryYellow

" }}}
" CoffeeScript: {{{

hi! link coffeeExtendedOp SrceryBrightWhite
hi! link coffeeSpecialOp SrceryBrightWhite
hi! link coffeeCurly SrceryYellow
hi! link coffeeParen SrceryBrightWhite
hi! link coffeeBracket SrceryYellow

" }}}
" CSS: {{{

hi! link cssBraces SrceryBrightWhite
hi! link cssFunctionName SrceryYellow
hi! link cssIdentifier SrceryBlue
hi! link cssClassName SrceryBlue
hi! link cssClassNameDot SrceryBlue
hi! link cssColor SrceryBrightMagenta
hi! link cssSelectorOp SrceryBlue
hi! link cssSelectorOp2 SrceryBlue
hi! link cssImportant SrceryGreen
hi! link cssVendor SrceryBlue
hi! link cssMediaProp SrceryYellow
hi! link cssBorderProp SrceryYellow
hi! link cssAttrComma SrceryBrightWhite

hi! link cssTextProp SrceryYellow
hi! link cssAnimationProp SrceryYellow
hi! link cssUIProp SrceryYellow
hi! link cssTransformProp SrceryYellow
hi! link cssTransitionProp SrceryYellow
hi! link cssPrintProp SrceryYellow
hi! link cssPositioningProp SrceryYellow
hi! link cssBoxProp SrceryYellow
hi! link cssFontDescriptorProp SrceryYellow
hi! link cssFlexibleBoxProp SrceryYellow
hi! link cssBorderOutlineProp SrceryYellow
hi! link cssBackgroundProp SrceryYellow
hi! link cssMarginProp SrceryYellow
hi! link cssListProp SrceryYellow
hi! link cssTableProp SrceryYellow
hi! link cssFontProp SrceryYellow
hi! link cssPaddingProp SrceryYellow
hi! link cssDimensionProp SrceryYellow
hi! link cssRenderProp SrceryYellow
hi! link cssColorProp SrceryYellow
hi! link cssGeneratedContentProp SrceryYellow
hi! link cssTagName SrceryBrightBlue

" }}}
" Elixir: {{{

hi! link elixirDocString Comment

hi! link elixirStringDelimiter SrceryGreen
hi! link elixirInterpolationDelimiter SrceryCyan

" }}}
" Go: {{{

hi! link goDirective SrceryCyan
hi! link goConstants SrceryMagenta
hi! link goDeclaration SrceryRed
hi! link goDeclType SrceryBlue
hi! link goBuiltins SrceryYellow

" }}}
" Diff: {{{

hi! link diffAdded SrceryGreen
hi! link diffRemoved SrceryRed
hi! link diffChanged SrceryCyan

hi! link diffFile SrceryOrange
hi! link diffNewFile SrceryYellow

hi! link diffLine SrceryBlue

" }}}
" Haskell: {{{

" hi! link haskellType SrceryYellow
" hi! link haskellOperators SrceryYellow
" hi! link haskellConditional SrceryCyan
" hi! link haskellLet SrceryYellow

hi! link haskellType SrceryBlue
hi! link haskellIdentifier SrceryBlue
hi! link haskellSeparator SrceryBlue
hi! link haskellDelimiter SrceryBrightWhite
hi! link haskellOperators SrceryBlue

hi! link haskellBacktick SrceryYellow
hi! link haskellStatement SrceryYellow
hi! link haskellConditional SrceryYellow

hi! link haskellLet SrceryCyan
hi! link haskellDefault SrceryCyan
hi! link haskellWhere SrceryCyan
hi! link haskellBottom SrceryCyan
hi! link haskellBlockKeywords SrceryCyan
hi! link haskellImportKeywords SrceryCyan
hi! link haskellDeclKeyword SrceryCyan
hi! link haskellDeriving SrceryCyan
hi! link haskellAssocType SrceryCyan

hi! link haskellNumber SrceryMagenta
hi! link haskellPragma SrceryMagenta

hi! link haskellString SrceryGreen
hi! link haskellChar SrceryGreen

" }}}
" HTML: {{{

hi! link htmlTagName SrceryBlue
hi! link htmlTag SrceryBrightBlack
hi! link htmlEndTag SrceryBrightBlack
hi! link htmlArg SrceryYellow

hi! link htmlScriptTag SrceryRed
hi! link htmlTagN SrceryBlue
hi! link htmlSpecialTagName SrceryBlue

hi! link javaScript Normal

call s:HL('htmlLink', s:bright_white, s:none, s:underline)

hi! link htmlSpecialChar SrceryYellow

call s:HL('htmlBold', s:bright_white, g:srcery_bg, s:bold)
call s:HL('htmlBoldUnderline', s:bright_white, g:srcery_bg, s:bold . s:underline)
call s:HL('htmlBoldItalic', s:bright_white, g:srcery_bg, s:bold . s:italic)
call s:HL('htmlBoldUnderlineItalic', s:bright_white, g:srcery_bg, s:bold . s:underline . s:italic)
call s:HL('htmlUnderline', s:bright_white, g:srcery_bg, s:underline)
call s:HL('htmlUnderlineItalic', s:bright_white, g:srcery_bg, s:underline . s:italic)
call s:HL('htmlItalic', s:bright_white, g:srcery_bg, s:italic)

" }}}
" Java: {{{

hi! link javaAnnotation SrceryBlue
hi! link javaDocTags SrceryCyan
hi! link javaCommentTitle vimCommentTitle
hi! link javaParen SrceryBrightWhite
hi! link javaParen1 SrceryBrightWhite
hi! link javaParen2 SrceryBrightWhite
hi! link javaParen3 SrceryBrightWhite
hi! link javaParen4 SrceryBrightWhite
hi! link javaParen5 SrceryBrightWhite
hi! link javaOperator SrceryYellow

hi! link javaVarArg SrceryGreen

" }}}
" JavaScript: {{{

" Vanilla
" -------
hi! link javaScriptMember SrceryBlue
hi! link javaScriptNull SrceryMagenta
hi! link javasCriptParens SrceryWhite
hi! link javaScriptBraces SrceryWhite
hi! link javaScriptReserved SrceryOrange

" YAJS
" ----
hi! link javascriptFuncArg Normal
hi! link javascriptDocComment SrceryGreen
hi! link javascriptArrayMethod Function
hi! link javascriptReflectMethod Function
hi! link javascriptStringMethod Function
hi! link javascriptObjectMethod Function
hi! link javascriptObjectStaticMethod Function
hi! link javascriptObjectLabel SrceryBlue
hi! link javascriptProp SrceryBlue
hi! link javascriptVariable SrceryBrightBlue
hi! link javascriptFuncKeyword SrceryBrightRed
hi! link javascriptFunctionMethod SrceryYellow
hi! link javascriptReturn SrceryBrightRed
hi! link javascriptEndColons SrceryWhite

" pangloss/vim-javascript
" -----------------------
hi! link jsFunction SrceryRed
hi! link jsImport SrceryRed
hi! link jsObjectSeparator SrceryWhite
hi! link jsParens SrceryWhite
hi! link jsFuncParens SrceryWhite
hi! link jsNoise SrceryWhite
hi! link jsEnvComment SrceryBrightBlack
hi! link jsOperator SrceryBrightCyan

" }}}
" JSON: {{{

hi! link jsonKeyword SrceryGreen
hi! link jsonQuote SrceryGreen
hi! link jsonBraces SrceryBlue
hi! link jsonString SrceryBlue

" }}}
" Lisp Dialects: {{{

if g:srcery_dim_lisp_paren == 1
  hi! link schemeParentheses SrceryXgray6
  hi! link clojureParen SrceryXgray6
else
  hi! link schemeParentheses SrceryWhite
  hi! link clojureParen SrceryWhite
endif

hi! link clojureKeyword SrceryBlue
hi! link clojureCond SrceryRed
hi! link clojureSpecial SrceryRed
hi! link clojureDefine SrceryRed

hi! link clojureFunc SrceryYellow
hi! link clojureRepeat SrceryYellow
hi! link clojureCharacter SrceryCyan
hi! link clojureStringEscape SrceryCyan
hi! link clojureException SrceryRed

hi! link clojureRegexp SrceryCyan
hi! link clojureRegexpEscape SrceryCyan
call s:HL('clojureRegexpCharClass', s:bright_white, s:none, s:bold)
hi! link clojureRegexpMod clojureRegexpCharClass
hi! link clojureRegexpQuantifier clojureRegexpCharClass

hi! link clojureAnonArg SrceryYellow
hi! link clojureVariable SrceryBlue
hi! link clojureMacro SrceryOrangeBold

hi! link clojureMeta SrceryYellow
hi! link clojureDeref SrceryYellow
hi! link clojureQuote SrceryYellow
hi! link clojureUnquote SrceryYellow

" }}}
" Lua: {{{

hi! link luain srceryred
hi! link luafunction srcerycyan
hi! link luatable srceryyellow

" }}}
" Make: {{{

hi! link makePreCondit SrceryRed
hi! link makeCommands SrceryBrightWhite
hi! link makeTarget SrceryYellow

" }}}
" Markdown: {{{

call s:HL('markdownBold', s:bright_white, s:none, s:bold)
call s:HL('markdownItalic', s:bright_white, s:none, s:italic)

hi! link markdownH1 SrceryBrightBlueBold
hi! link markdownH2 SrceryBrightBlueBold
hi! link markdownH3 SrceryBrightYellowBold
hi! link markdownH4 SrceryBrightYellowBold
hi! link markdownH5 SrceryYellowBold
hi! link markdownH6 SrceryYellowBold

hi! link markdownCode SrceryWhite
hi! link markdownCodeBlock SrceryWhite
hi! link markdownCodeDelimiter SrceryWhite

hi! link markdownBlockquote SrceryBrightBlack
hi! link markdownListMarker SrceryBrightBlack
hi! link markdownOrderedListMarker SrceryBrightBlack
hi! link markdownRule SrceryBrightBlack
hi! link markdownHeadingRule SrceryBrightBlack

hi! link markdownUrlDelimiter SrceryBrightBlack
hi! link markdownLinkDelimiter SrceryBrightBlack
hi! link markdownLinkTextDelimiter SrceryBrightBlack

hi! link markdownHeadingDelimiter SrceryBrightBlack
hi! link markdownUrl SrceryBrightGreen
hi! link markdownUrlTitleDelimiter SrceryGreen

call s:HL('markdownLinkText', s:bright_white, s:none, s:underline)
hi! link markdownIdDeclaration markdownLinkText

" }}}
" MoonScript: {{{

hi! link moonSpecialOp SrceryBrightWhite
hi! link moonExtendedOp SrceryBrightWhite
hi! link moonFunction SrceryBrightWhite
hi! link moonObject SrceryYellow

" }}}
" ObjectiveC: {{{

hi! link objcTypeModifier SrceryRed
hi! link objcDirective SrceryBlue

" }}}
" Python: {{{

hi! link pythonBuiltin SrceryYellow
hi! link pythonBuiltinObj SrceryYellow
hi! link pythonBuiltinFunc SrceryYellow
hi! link pythonFunction SrceryCyan
hi! link pythonDecorator SrceryRed
hi! link pythonInclude SrceryBlue
hi! link pythonImport SrceryBlue
hi! link pythonRun SrceryBlue
hi! link pythonCoding SrceryBlue
hi! link pythonOperator SrceryRed
hi! link pythonExceptions SrceryMagenta
hi! link pythonBoolean SrceryMagenta
hi! link pythonDot SrceryBrightWhite

" }}}
" Ruby: {{{

hi! link rubyStringDelimiter SrceryGreen
hi! link rubyInterpolationDelimiter SrceryCyan
hi! link rubyDefine Keyword

" }}}
" Rust: {{{

"https://github.com/rust-lang/rust.vim/blob/master/syntax/rust.vim
hi! link rustCommentLineDoc SrceryGreen
hi! link rustModPathSep SrceryBrightBlack

" }}}
" Scala: {{{

" NB: scala vim syntax file is kinda horrible
hi! link scalaNameDefinition SrceryBlue
hi! link scalaCaseFollowing SrceryBlue
hi! link scalaCapitalWord SrceryBlue
hi! link scalaTypeExtension SrceryBlue

hi! link scalaKeyword SrceryRed
hi! link scalaKeywordModifier SrceryRed

hi! link scalaSpecial SrceryCyan
hi! link scalaOperator SrceryBlue

hi! link scalaTypeDeclaration SrceryYellow
hi! link scalaTypeTypePostDeclaration SrceryYellow

hi! link scalaInstanceDeclaration SrceryBlue
hi! link scalaInterpolation SrceryCyan

" }}}
" SASS: {{{

hi! link sassClass SrceryBlue
hi! link sassClassChar SrceryBlue
hi! link sassVariable SrceryCyan
hi! link sassIdChar SrceryBrightBlue
hi! link sassId SrceryBrightBlue

" }}}
" Shellscript: {{{

call s:HL('shParenError', s:bright_white, s:bright_red)
hi! link shCmdSubRegion SrceryWhite
hi! link shArithRegion SrceryWhite
hi! link shArithRegion SrceryWhite
hi! link shQuote SrceryWhite
hi! link shRedir SrceryMagenta
hi! link shOption SrceryBrightYellow
hi! link shCommandSub SrceryBrightRed

" }}}
" Vim: {{{

call s:HL('vimCommentTitle', s:bright_white, s:none, s:bold . s:italic)

hi! link vimNotation SrceryYellow
hi! link vimBracket SrceryYellow
hi! link vimMapModKey SrceryYellow
hi! link vimFuncSID SrceryBrightWhite
hi! link vimSetSep SrceryBrightWhite
hi! link vimSep SrceryBrightWhite
hi! link vimContinue SrceryBrightWhite

" }}}
" XML: {{{

hi! link xmlTag SrceryBlue
hi! link xmlEndTag SrceryBlue
hi! link xmlTagName SrceryBlue
hi! link xmlEqual SrceryBlue
hi! link docbkKeyword SrceryCyanBold

hi! link xmlDocTypeDecl SrceryBrightBlack
hi! link xmlDocTypeKeyword SrceryMagenta
hi! link xmlCdataStart SrceryBrightBlack
hi! link xmlCdataCdata SrceryMagenta
hi! link dtdFunction SrceryBrightBlack
hi! link dtdTagName SrceryMagenta

hi! link xmlAttrib SrceryCyan
hi! link xmlProcessingDelim SrceryBrightBlack
hi! link dtdParamEntityPunct SrceryBrightBlack
hi! link dtdParamEntityDPunct SrceryBrightBlack
hi! link xmlAttribPunct SrceryBrightBlack

hi! link xmlEntity SrceryYellow
hi! link xmlEntityPunct SrceryYellow

" }}}

" }}}

" Plugins: {{{

" Sneak: {{{

if exists('g:loaded_sneak_plugin')
  hi! link Sneak Search
  call s:HL('SneakScope', s:none, s:hard_black)
  hi! link SneakLabel Search
endif

" }}}
" Rainbow Parentheses: {{{

if !exists('g:rbpt_colorpairs')
  let g:rbpt_colorpairs =
    \ [
      \ ['blue',  '#2C78BF'], ['202',  '#FF5F00'],
      \ ['red',  '#EF2F27'], ['magenta', '#E02C6D']
    \ ]
endif

let g:rainbow_guifgs = [ '#E02C6D', '#EF2F27', '#D75F00', '#2C78BF']
let g:rainbow_ctermfgs = [ 'magenta', 'red', '202', 'blue' ]

if !exists('g:rainbow_conf')
  let g:rainbow_conf = {}
endif
if !has_key(g:rainbow_conf, 'guifgs')
  let g:rainbow_conf['guifgs'] = g:rainbow_guifgs
endif
if !has_key(g:rainbow_conf, 'ctermfgs')
  let g:rainbow_conf['ctermfgs'] = g:rainbow_ctermfgs
endif

let g:niji_dark_colours = g:rbpt_colorpairs
let g:niji_light_colours = g:rbpt_colorpairs

"}}}
" GitGutter: {{{

if exists('g:loaded_gitgutter')
  hi! link GitGutterAdd SrceryGreen
  hi! link GitGutterChange SrceryYellow
  hi! link GitGutterDelete SrceryRed
  hi! link GitGutterChangeDelete SrceryYellow
endif

" }}}
" Asynchronous Lint Engine: {{{

if exists('g:ale_enabled')
  call s:HL('ALEError', s:none, s:none, s:undercurl, s:red)
  call s:HL('ALEWarning', s:none, s:none, s:undercurl, s:yellow)
  call s:HL('ALEInfo', s:none, s:none, s:undercurl, s:blue)

  hi! link ALEErrorSign SrceryRed
  hi! link ALEWarningSign SrceryYellow
  hi! link ALEInfoSign SrceryBlue
endif

" }}}

" vim-indent-guides: {{{
if exists('g:loaded_indent_guides')
  call s:HL('IndentGuidesEven', s:none, s:xgray3)
  call s:HL('IndentGuidesOdd',  s:none, s:xgray4)
endif

" }}}
" vim-startify: {{{

if exists('g:loaded_startify')
  hi! link StartifyNumber Statement
  hi! link StartifyFile Normal
  hi! link StartifyPath String
  hi! link StartifySlash Normal
  hi! link StartifyBracket Comment
  hi! link StartifyHeader Type
  hi! link StartifyFooter Normal
  hi! link StartifySpecial Comment
  hi! link StartifySection Identifier
endif

" }}}
" fzf: {{{

if exists('g:loaded_fzf')
  call s:HL('fzf1', s:magenta, s:xgray2)
  call s:HL('fzf2', s:bright_green, s:xgray2)
  call s:HL('fzf3', s:bright_white, s:xgray2)
endif

"}}}

" Netrw: {{{

hi! link netrwDir SrceryBlue
hi! link netrwClassify SrceryCyan
hi! link netrwLink SrceryBrightBlack
hi! link netrwSymLink SrceryCyan
hi! link netrwExe SrceryYellow
hi! link netrwComment SrceryBrightBlack
hi! link netrwList SrceryBrightBlue
hi! link netrwTreeBar SrceryBrightBlack
hi! link netrwHelpCmd SrceryCyan
hi! link netrwVersion SrceryGreen
hi! link netrwCmdSep SrceryBrightBlack

"}}}
" coc.nvim: {{{

if exists('g:did_coc_loaded')
  hi! link CocErrorSign SrceryRed
  hi! link CocWarningSign SrceryBrightOrange
  hi! link CocInfoSign SrceryYellow
  hi! link CocHintSign SrceryBlue
  hi! link CocErrorFloat SrceryRed
  hi! link CocWarningFloat SrceryOrange
  hi! link CocInfoFloat SrceryYellow
  hi! link CocHintFloat SrceryBlue
  hi! link CocDiagnosticsError SrceryRed
  hi! link CocDiagnosticsWarning SrceryOrange
  hi! link CocDiagnosticsInfo SrceryYellow
  hi! link CocDiagnosticsHint SrceryBlue

  hi! link CocSelectedText SrceryRed
  hi! link CocCodeLens SrceryWhite

  call s:HL('CocErrorHighlight', s:none, s:none, s:undercurl, s:red)
  call s:HL('CocWarningHighlight', s:none, s:none, s:undercurl, s:bright_orange)
  call s:HL('CocInfoHighlight', s:none, s:none, s:undercurl, s:yellow)
  call s:HL('CocHintHighlight', s:none, s:none, s:undercurl, s:blue)
endif

" }}}
" CtrlP: "{{{

if exists('g:loaded_ctrlp')
  hi! link CtrlPMatch SrceryMagenta
  hi! link CtrlPLinePre SrceryBrightGreen
  call s:HL('CtrlPMode1', s:bright_white, s:xgray3)
  call s:HL('CtrlPMode2', s:bright_white, s:xgray5)
  call s:HL('CtrlPStats', s:yellow, s:xgray2)
endif

" }}}
" NERDTree: "{{{

if exists('g:loaded_nerd_tree')
  hi! link NERDTreeDir SrceryBlue
  hi! link NERDTreeDirSlash SrceryCyan
  hi! link NERDTreeOpenable SrceryBlue
  hi! link NERDTreeClosable SrceryBlue
  hi! link NERDTreeFile SrceryWhite
  hi! link NERDTreeExecFile SrceryYellow
  hi! link NERDTreeUp SrceryOrange
  hi! link NERDTreeCWD SrceryGreen
  hi! link NERDTreeHelp SrceryCyan
  hi! link NERDTreeFlags SrceryCyan
  hi! link NERDTreeLinkFile SrceryBrightBlack
  hi! link NERDTreeLinkTarget SrceryBrightBlack
endif

" }}}
" Telescope: "{{{

if exists('g:loaded_telescope')
  call s:HL('TelescopeNormal', s:white, s:none)
  call s:HL('TelescopeSelection', s:green, s:none, s:bold)
  call s:HL('TelescopeMatching', s:magenta)
  call s:HL('TelescopeSelectionCaret', s:magenta)
  call s:HL('TelescopePromptPrefix', s:bright_yellow)
endif

" }}}
" nvim-cmp: "{{{

if exists('g:loaded_cmp')
  hi! link CmpItemAbbr Pmenu
  hi! link CmpItemAbbrDeprecated Comment
  hi! link CmpItemAbbrMatch Pmenu
  hi! link CmpItemAbbrMatchFuzzy Pmenu
  hi! link CmpItemKind Special
  hi! link CmpItemMenu Pmenu
endif

" }}}
" nvim: {{{

if has('nvim')

  " nvim-treesitter: {{{

  if exists('g:loaded_nvim_treesitter')
    " This is deprecated in new nvim releases
    call s:HL('TSStrong', s:none, s:none, s:bold)
    call s:HL('TSEmphasis', s:none, s:none, s:bold)
    call s:HL('TSUnderline', s:none, s:none, s:underline)

    highlight! link TSWarning SrceryOrangeBold
    highlight! link TSDanger SrceryRedBold
    highlight! link TSConstBuiltin SrceryCyan
    highlight! link TSField SrceryGreen
    highlight! link TSFuncBuiltin SrceryYellow
    highlight! link TSFuncMacro SrceryOrange
    highlight! link TSFunction SrceryYellow
    call s:HL('TSNamespace', s:white, s:none, s:italic)
    call s:HL('TSParameter', s:cyan, s:none, s:italic)
    highlight! link TSProperty SrceryBrightBlue
    highlight! link TSSymbol SrceryBlue
    highlight! link TSTag SrceryBlue
    highlight! link TSTagAttribute SrceryYellow
    highlight! link TSVariableBuiltin SrceryCyan
    highlight! link TSType SrceryWhite
    highlight! link TSDelimiter SrceryWhite
    highlight! link TSURI SrceryGreen
    highlight! link TSVariable SrceryBrightWhite

    if has('nvim-0.8')
      highlight! link @text.strong TSStrong
      highlight! link @text.emphasis TSEmphasis
      highlight! link @text.underline TSUnderline
      highlight! link @text.warning TSWarning
      highlight! link @text.danger TSDanger
      highlight! link @constant.builtin TSConstBuiltin
      highlight! link @field TSField
      highlight! link @function.builtin TSFuncBuiltin
      highlight! link @function.macro TSFuncMacro
      highlight! link @function TSFunction
      highlight! link @namespace TSNamespace
      highlight! link @parameter TSParameter
      highlight! link @property TSProperty
      highlight! link @symbol TSSymbol
      highlight! link @tag TSTag
      highlight! link @tag.attribute TSTagAttribute
      highlight! link @variable.builtin TSVariableBuiltin
      highlight! link @type TSType
      highlight! link @delimiter TSDelimiter
      highlight! link @text.uri TSURI
      highlight! link @variable TSVariable

      call s:HL('@markup.strong', s:none, s:none, s:bold)
      call s:HL('@markup.italic', s:none, s:none, s:italic)
      call s:HL('@markup.underline', s:none, s:none, s:underline)
      call s:HL('@markup.strikethrough', s:none, s:none, s:strikethrough)

    endif
  endif

  " }}}
endif

" }}}

" GitCommit: "{{{

hi! link gitcommitSelectedFile SrceryGreen
hi! link gitcommitDiscardedFile SrceryRed

" }}}
" Better whitespace: {{{

call s:HL('ExtraWhitespace', s:none, s:red)

" }}}

" }}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker :
