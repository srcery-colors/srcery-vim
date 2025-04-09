"  'srcery.vim' -- Dark Ritual (N)Vim Color Scheme.
"  Maintainer:   Srcery Team, https://srcery.sh
"  Description:  Colorscheme that focus ease of use and clearly defined
"  contrasting colors with a slightly earthy tone.

scriptencoding utf-8

set background=dark

if v:version > 580
  hi clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name='srcery'

" Setup: {{{
" -----------------------------------------------------------------------------

" Colors
" ---------
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


" Options
" ---------
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

if !exists('g:srcery_guisp_fallback')
      \ || index(['fg', 'bg'], g:srcery_guisp_fallback) == -1
  let g:srcery_guisp_fallback='NONE'
endif

if !exists('g:srcery_italic_types')
  let g:srcery_italic_types=0
endif

if !exists('g:srcery_bg')
  "Sets the default color for both guisp and cterm backgrounds.
  let g:srcery_bg=[g:srcery_black, 0]
elseif (index(g:srcery_bg, 'DEFAULT') >= 0)
      \ || (index(g:srcery_bg, 'NONE') >= 0
      \ && has('gui_running'))
  "Defaults should be set if the user specifies it, or if the background is set
  "as 'NONE' whilst the gui is running.
  for i in [0, 1]
    if g:srcery_bg[i] ==# 'DEFAULT'
          \ || (g:srcery_bg[i] ==# 'NONE'
          \ && has('gui_running'))
      let g:srcery_bg[i] = (i==1 ? 0 : g:srcery_black)
    endif
  endfor
endif

if !exists('g:srcery_hard_black_terminal_bg')
  let g:srcery_hard_black_terminal_bg=1
endif

" Emphasis:
" ---------
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
" Palette: {{{
" -----------------------------------------------------------------------------

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
" HL function: {{{

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

" headings
call s:HL('SrceryH1', s:bright_blue, s:xgray1, s:bold)
call s:HL('SrceryH2', s:yellow, s:xgray1, s:bold)
call s:HL('SrceryH3', s:bright_yellow, s:xgray1, s:bold)
call s:HL('SrceryH4', s:green, s:xgray1, s:bold)
call s:HL('SrceryH5', s:magenta, s:xgray1, s:bold)
call s:HL('SrceryH6', s:bright_magenta, s:xgray1, s:bold)

" }}}
" UI groups: {{{
" -----------------------------------------------------------------------------

call s:HL('ColorColumn',  s:none, s:xgray2)
call s:HL('Conceal', s:blue, s:none)
call s:HL('Cursor', s:black, s:yellow)
call s:HL('CursorLine',   s:none, s:xgray2)
call s:HL('CursorLineNr', s:yellow, g:srcery_bg)
call s:HL('ErrorMsg', s:bright_white, s:red)
call s:HL('FoldColumn', s:bright_black, g:srcery_bg)
call s:HL('Folded', s:bright_black, g:srcery_bg, s:italic)
call s:HL('LineNr', s:bright_black)
call s:HL('Normal', s:bright_white, g:srcery_bg)
call s:HL('Pmenu', s:bright_white, s:xgray2)
call s:HL('PmenuSbar', s:none, g:srcery_bg)
call s:HL('PmenuSel', s:bright_white, s:blue, s:bold)
call s:HL('PmenuThumb', s:none, s:orange)
call s:HL('SignColumn', s:none, g:srcery_bg)
call s:HL('SpellBad',   s:none, s:none, s:undercurl, s:blue)
call s:HL('SpellCap',   s:green, s:none, s:bold . s:italic)
call s:HL('SpellLocal', s:none, s:none, s:undercurl, s:cyan)
call s:HL('SpellRare',  s:none, s:none, s:undercurl, s:magenta)
call s:HL('StatusLine',   s:bright_white, s:xgray2)
call s:HL('StatusLineNC', s:bright_black, g:srcery_bg, s:underline)
call s:HL('TabLineFill', s:bright_black, s:xgray2)
call s:HL('TabLineSel', s:bright_white, s:xgray5)
call s:HL('Underlined', s:none, s:none, s:underline)
call s:HL('VertSplit', s:bright_white, g:srcery_bg)
call s:HL('WildMenu', s:blue, g:srcery_bg, s:bold)
call s:HL('WinSeparator', s:none, s:xgray1)
hi! link CursorColumn CursorLine
hi! link Directory SrceryGreenBold
hi! link iCursor Cursor
hi! link lCursor Cursor
hi! link ModeMsg SrceryYellowBold
hi! link MoreMsg SrceryYellowBold
hi! link NonText SrceryXgray4
hi! link Question SrceryOrangeBold
hi! link SpecialKey SrceryBlue
hi! link TabLine TabLineFill
hi! link Title SrceryGreenBold
hi! link vCursor Cursor
hi! link VisualNOS Visual
hi! link WarningMsg SrceryRedBold

" Conditionals
if g:srcery_inverse == 1
  call s:HL('Visual', s:none, s:none, s:inverse)
else
  call s:HL('Visual', s:none, s:xgray2, s:bold)
endif

if g:srcery_inverse_match_paren == 1
  call s:HL('MatchParen', s:bright_magenta, s:none, s:inverse . s:bold)
else
  call s:HL('MatchParen', s:bright_magenta, s:none, s:bold)
endif
if g:srcery_inverse == 1 && g:srcery_inverse_matches == 1
  call s:HL('Search', s:none, s:none, s:inverse)
  call s:HL('IncSearch', s:none, s:none, s:underline . s:inverse . s:bold)
  call s:HL('CurSearch', s:none, s:none, s:underline . s:inverse . s:bold)
else
  call s:HL('Search', s:none, s:xgray5)
  call s:HL('IncSearch', s:none, s:xgray5, s:underline . s:bold)
  call s:HL('CurSearch', s:none, s:xgray5, s:underline . s:bold)
endif

" Vim 8 terminal
if has('terminal')
  let g:terminal_ansi_colors = repeat([0], 16)
  let g:terminal_ansi_colors[0] = s:black[0]
  let g:terminal_ansi_colors[1] = s:red[0]
  let g:terminal_ansi_colors[2] = s:green[0]
  let g:terminal_ansi_colors[3] = s:yellow[0]
  let g:terminal_ansi_colors[4] = s:blue[0]
  let g:terminal_ansi_colors[5] = s:magenta[0]
  let g:terminal_ansi_colors[6] = s:cyan[0]
  let g:terminal_ansi_colors[7] = s:white[0]
  let g:terminal_ansi_colors[8] = s:bright_black[0]
  let g:terminal_ansi_colors[9] = s:bright_red[0]
  let g:terminal_ansi_colors[10] = s:bright_green[0]
  let g:terminal_ansi_colors[11] = s:bright_yellow[0]
  let g:terminal_ansi_colors[12] = s:bright_blue[0]
  let g:terminal_ansi_colors[13] = s:bright_magenta[0]
  let g:terminal_ansi_colors[14] = s:bright_cyan[0]
  let g:terminal_ansi_colors[15] = s:bright_white[0]

  " Must set an explicit background as NONE won't work
  " Therefore not useful with transparent background option
  if g:srcery_hard_black_terminal_bg == 1
    call s:HL('Terminal', s:bright_white, s:hard_black)
  endif

endif

if has('nvim')

  " Neovim terminal
  let g:terminal_color_0 = s:black[0]
  let g:terminal_color_1 = s:red[0]
  let g:terminal_color_2 = s:green[0]
  let g:terminal_color_3 = s:yellow[0]
  let g:terminal_color_4 = s:blue[0]
  let g:terminal_color_5 = s:magenta[0]
  let g:terminal_color_6 = s:cyan[0]
  let g:terminal_color_7 = s:white[0]
  let g:terminal_color_8 = s:bright_black[0]
  let g:terminal_color_9 = s:bright_red[0]
  let g:terminal_color_10 = s:bright_green[0]
  let g:terminal_color_11 = s:bright_yellow[0]
  let g:terminal_color_12 = s:bright_blue[0]
  let g:terminal_color_13 = s:bright_magenta[0]
  let g:terminal_color_14 = s:bright_cyan[0]
  let g:terminal_color_15 = s:bright_white[0]

  " Neovim Diagnostic
  hi! link DiagnosticError SrceryBrightRed
  hi! link DiagnosticWarn SrceryBrightYellow
  hi! link DiagnosticInfo SrceryBrightGreen
  hi! link DiagnosticHint SrceryBrightCyan
  call s:HL('DiagnosticUnderlineError', s:bright_red, s:none, s:undercurl)
  call s:HL('DiagnosticUnderlineWarn', s:bright_yellow, s:none, s:undercurl)
  call s:HL('DiagnosticUnderlineInfo', s:bright_green, s:none, s:undercurl)
  call s:HL('DiagnosticUnderlineHint', s:bright_cyan, s:none, s:undercurl)

  " Neovim Support
  hi! link healthError SrceryRed
  hi! link healthSuccess SrceryGreen
  hi! link healthWarning SrceryOrange
  call s:HL('TermCursorNC', s:xgray1, s:none)
endif

" }}}
" Main groups: {{{
" -----------------------------------------------------------------------------

hi! link Special SrceryBrightOrange

call s:HL('Comment', s:bright_black, s:none, s:italic)

call s:HL('Todo', s:bright_orange, g:srcery_bg, s:bold . s:italic)

call s:HL('Error', s:bright_white, s:red, s:bold)

call s:HL('String',  s:bright_green)
hi! link Statement SrceryRed
hi! link Conditional SrceryRed
hi! link Repeat SrceryBlue
hi! link Label SrceryBrightRed
hi! link Exception SrceryRed
hi! link Operator SrceryWhite
hi! link Keyword SrceryRed
hi! link Identifier SrceryBrightWhite
hi! link Function SrceryYellow
hi! link PreProc SrceryCyan
hi! link Include SrceryCyan
hi! link Define SrceryOrange
hi! link PreCondit SrceryCyan
hi! link Constant SrceryBrightMagenta
hi! link Character SrceryGreen
hi! link Boolean SrceryBrightMagenta
hi! link Number SrceryBrightMagenta
hi! link Float SrceryBrightMagenta
if g:srcery_italic_types == 1 && g:srcery_italic == 1
  call s:HL('Type', s:brightCyane, s:none, s:italic)
else
  hi! link Type SrceryBrightBlue
end
hi! link Structure SrceryCyan
hi! link Typedef SrceryMagenta
if g:srcery_dim_lisp_paren == 1
  hi! link Delimiter SrceryXgray6
else
  hi! link Delimiter SrceryBrightBlack
endif
hi! link Decorator SrceryBrightOrange
hi! link Annotation Decorator
hi! link Macro Define
hi! link PreCondit PreProc
hi! link Variable Identifier

" }}}
" Languages: {{{
" -----------------------------------------------------------------------------

" nvim-treesitter
if has('nvim')
  hi! link TSAnnotation Annotation
  hi! link TSConstBuiltin Constant
  hi! link TSConstructor Function
  hi! link TSEmphasis Italic
  hi! link TSFuncBuiltin Function
  hi! link TSFuncMacro Function
  hi! link TSStringRegex SpecialChar
  hi! link TSStrong Bold
  hi! link TSStructure Structure
  hi! link TSTagDelimiter TSTag
  hi! link TSUnderline Underline
  hi! link TSVariable Variable
  hi! link TSVariableBuiltin Keyword
endif

" C
" hi! link cOperator SrceryMagenta
" hi! link cStructure SrceryYellow

" CoffeeScript
" hi! link coffeeExtendedOp SrceryBrightWhite
" hi! link coffeeSpecialOp SrceryBrightWhite
" hi! link coffeeCurly SrceryYellow
" hi! link coffeeParen SrceryBrightWhite
" hi! link coffeeBracket SrceryYellow

" CSS:
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

" Elixir
hi! link elixirDocString Comment
hi! link elixirStringDelimiter SrceryGreen
hi! link elixirInterpolationDelimiter SrceryCyan

" Go
hi! link goDirective SrceryCyan
hi! link goConstants SrceryMagenta
hi! link goDeclaration SrceryRed
hi! link goDeclType SrceryBlue
hi! link goBuiltins SrceryYellow

" Haskell
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

" HTML
hi! link htmlTagName SrceryBlue
hi! link htmlTag SrceryBrightBlack
hi! link htmlEndTag SrceryBrightBlack
hi! link htmlArg SrceryYellow
hi! link htmlScriptTag SrceryRed
hi! link htmlTagN SrceryCyan
hi! link htmlSpecialTagName SrceryBrightBlue
call s:HL('htmlLink', s:white, s:none, s:underline)
hi! link htmlSpecialChar SrceryYellow
call s:HL('htmlBold', s:bright_white, g:srcery_bg, s:bold)
call s:HL('htmlBoldUnderline',
      \ s:bright_white, g:srcery_bg, s:bold . s:underline)
call s:HL('htmlBoldItalic',
      \ s:bright_white, g:srcery_bg, s:bold . s:italic)
call s:HL('htmlBoldUnderlineItalic',
      \ s:bright_white, g:srcery_bg, s:bold . s:underline . s:italic)
call s:HL('htmlUnderline',
      \ s:bright_white, g:srcery_bg, s:underline)
call s:HL('htmlUnderlineItalic',
      \ s:bright_white, g:srcery_bg, s:underline . s:italic)
call s:HL('htmlItalic', s:bright_white, g:srcery_bg, s:italic)
hi! link htmlH1 SrceryH1
hi! link htmlH2 SrceryH2
hi! link htmlH3 SrceryH3
hi! link htmlH4 SrceryH4
hi! link htmlH5 SrceryH5
hi! link htmlH6 SrceryH6

" Java:
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

" JavaScript:
hi! link javaScriptMember SrceryBrightBlue
hi! link javaScriptNull SrceryMagenta
hi! link javasCriptParens SrceryWhite
hi! link javaScriptBraces SrceryWhite
hi! link javaScriptReserved SrceryOrange
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
hi! link jsFunction SrceryRed
hi! link jsImport SrceryRed
hi! link jsObjectSeparator SrceryWhite
hi! link jsParens SrceryWhite
hi! link jsFuncParens SrceryWhite
hi! link jsNoise SrceryWhite
hi! link jsEnvComment SrceryBrightBlack
hi! link jsOperator SrceryBrightCyan

" JSON:
hi! link jsonKeyword SrceryGreen
hi! link jsonQuote SrceryGreen
hi! link jsonBraces SrceryBlue
hi! link jsonString SrceryBlue

" LISP:
if g:srcery_dim_lisp_paren == 1
  hi! link schemeParentheses SrceryXgray6
  hi! link clojureParen SrceryXgray6
else
  hi! link schemeParentheses SrceryWhite
  hi! link clojureParen SrceryWhite
endif

" Clojure
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

" Lua
hi! link luain srceryred
hi! link luafunction srcerycyan
hi! link luatable srceryyellow

" Make
hi! link makePreCondit SrceryRed
hi! link makeCommands SrceryBrightWhite
hi! link makeTarget SrceryYellow

" Markdown
call s:HL('markdownBold', s:bright_white, s:none, s:bold)
call s:HL('markdownItalic', s:bright_white, s:none, s:italic)
call s:HL('markdownLinkText', s:bright_white, s:none, s:underline)
hi! link markdownH1 SrceryH1
hi! link markdownH2 SrceryH2
hi! link markdownH3 SrceryH3
hi! link markdownH4 SrceryH4
hi! link markdownH5 SrceryH5
hi! link markdownH6 SrceryH6
hi! link markdownCode SrceryWhite
hi! link markdownCodeBlock SrceryWhite
hi! link markdownCodeDelimiter SrceryWhite
hi! link markdownBlockquote SrceryBrightBlack
hi! link markdownListMarker SrceryBrightBlack
hi! link markdownOrderedListMarker SrceryBrightBlack
hi! link markdownRule SrceryBrightBlack
hi! link markdownHeadingRule SrceryBrightBlack
hi! link markdownUrlDelimiter Delimiter
hi! link markdownLinkDelimiter Delimiter
hi! link markdownLinkTextDelimiter Delimiter
hi! link markdownHeadingDelimiter SrceryBrightBlack
hi! link markdownUrl htmlLink
hi! link markdownUrlTitleDelimiter SrceryGreen
hi! link markdownIdDeclaration markdownLinkText

" MoonScript:
hi! link moonSpecialOp Operator
hi! link moonExtendedOp Operator
hi! link moonFunction Function
hi! link moonObject Structure

" ObjectiveC
hi! link objcTypeModifier SrceryRed
hi! link objcDirective SrceryBlue

" Python
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

" Ruby
hi! link rubyStringDelimiter SrceryGreen
hi! link rubyInterpolationDelimiter SrceryCyan
hi! link rubyDefine Keyword

" Rust
"https://github.com/rust-lang/rust.vim/blob/master/syntax/rust.vim
hi! link rustCommentLineDoc SrceryGreen
hi! link rustModPathSep SrceryBrightBlack

" Scala
hi! link scalaNameDefinition SrceryBlue
hi! link scalaCaseFollowing SrceryBlue
hi! link scalaCapitalWord SrceryBlue
hi! link scalaTypeExtension SrceryBlue
hi! link scalaKeyword SrceryRed
hi! link scalaKeywordModifier SrceryRed
hi! link scalaSpecial Special
hi! link scalaOperator SrceryBlue
hi! link scalaTypeDeclaration SrceryYellow
hi! link scalaTypeTypePostDeclaration SrceryYellow
hi! link scalaInstanceDeclaration SrceryBlue
hi! link scalaInterpolation SrceryCyan

" SASS:
hi! link sassClass SrceryBlue
hi! link sassClassChar SrceryBlue
hi! link sassVariable SrceryCyan
hi! link sassIdChar SrceryBrightBlue
hi! link sassId SrceryBrightBlue

" Shellscript:
call s:HL('shParenError', s:bright_white, s:bright_red)
hi! link shCmdSubRegion SrceryWhite
hi! link shArithRegion SrceryWhite
hi! link shArithRegion SrceryWhite
hi! link shQuote SrceryWhite
hi! link shRedir SrceryMagenta
hi! link shOption SrceryBrightYellow
hi! link shCommandSub SrceryBrightRed

" Vim:
call s:HL('vimCommentTitle', s:bright_white, s:none, s:bold . s:italic)
hi! link vimNotation SrceryYellow
hi! link vimBracket SrceryYellow
hi! link vimMapModKey SrceryYellow
hi! link vimFuncSID SrceryBrightWhite
hi! link vimSetSep SrceryBrightWhite
hi! link vimSep SrceryBrightWhite
hi! link vimContinue SrceryBrightWhite

" XML:
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

" Diffs:
call s:HL('DiffDelete', s:red, g:srcery_bg)
call s:HL('DiffAdd',    s:green, g:srcery_bg)
call s:HL('DiffChange', s:cyan, g:srcery_bg)
call s:HL('DiffText',   s:yellow, g:srcery_bg)

" legacy groups
hi! link diffAdded DiffAdd
hi! link diffRemoved DiffDelete
hi! link diffChanged DiffChange
hi! link diffFile SrceryOrange
hi! link diffNewFile SrceryYellow
hi! link diffLine SrceryBlue

" }}}
" Plugins: {{{
" -----------------------------------------------------------------------------

if has('nvim')
  " Neovim LSP:
  " for backward compatibility with neovim v0.5.x
  if has("nvim-0.5")
    hi! link LspDiagnosticsDefaultError DiagnosticError
    hi! link LspDiagnosticsDefaultWarning DiagnosticWarn
    hi! link LspDiagnosticsDefaultInformation DiagnosticInfo
    hi! link LspDiagnosticsDefaultHint DiagnosticHint
    hi! link LspDiagnosticsUnderlineError DiagnosticUnderlineError
    hi! link LspDiagnosticsUnderlineHint DiagnosticUnderlineHint
    hi! link LspDiagnosticsUnderlineInformation DiagnosticUnderlineInfo
    hi! link LspDiagnosticsUnderlineWarning DiagnosticUnderlineWarn
  endif

  " snacks.nvim:
  hi! link SnacksNormal Normal
  hi! link SnacksNormalNC Normal
  hi! link SnacksPicker Normal
  hi! link SnacksPickerDir Comment
  hi! link SnacksPickerGitStatusIgnored Comment
  hi! link SnacksPickerGitStatusUntracked Comment
  hi! link SnacksPickerPathHidden Comment
  hi! link SnacksPickerPathIgnored Comment
  hi! link SnacksPickerTotals Comment

  " trouble.nvim:
  hi! link TroubleNormal Normal
  hi! link TroubleNormalNC Normal

  " which-key.nvim:
  hi! link WhichKeyNormal Normal

  " nvimpager:
  hi! link NvimPagerFG_black_BG_ SrceryBlack
  hi! link NvimPagerFG_red_BG_ SrceryRed
  hi! link NvimPagerFG_green_BG_ SrceryGreen
  hi! link NvimPagerFG_yellow_BG_ SrceryYellow
  hi! link NvimPagerFG_blue_BG_ SrceryBlue
  hi! link NvimPagerFG_magenta_BG_ SrceryMagenta
  hi! link NvimPagerFG_cyan_BG_ SrceryMagenta
  hi! link NvimPagerFG_white_BG_ SrceryMagenta

  hi! link NvimPagerFG_black_BG__bold SrceryBlackBold
  hi! link NvimPagerFG_red_BG__bold SrceryRedBold
  hi! link NvimPagerFG_green_BG__bold SrceryGreenBold
  hi! link NvimPagerFG_yellow_BG__bold SrceryYellowBold
  hi! link NvimPagerFG_blue_BG__bold SrceryBlueBold
  hi! link NvimPagerFG_magenta_BG__bold SrceryMagentaBold
  hi! link NvimPagerFG_cyan_BG__bold SrceryMagentaBold
  hi! link NvimPagerFG_white_BG__bold SrceryMagentaBold
endif

" Sneak:
hi! link Sneak Search
hi! link SneakCurrent CurSearch
hi! link SneakLabel Search

" Rainbow Parentheses:
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

" GitGutter:
hi! link GitGutterAdd SrceryGreen
hi! link GitGutterChange SrceryYellow
hi! link GitGutterDelete SrceryRed
hi! link GitGutterChangeDelete SrceryYellow

" Ale:
call s:HL('ALEError', s:none, s:none, s:undercurl, s:red)
call s:HL('ALEWarning', s:none, s:none, s:undercurl, s:yellow)
call s:HL('ALEInfo', s:none, s:none, s:undercurl, s:blue)
hi! link ALEErrorSign SrceryRed
hi! link ALEWarningSign SrceryYellow
hi! link ALEInfoSign SrceryBlue

" vim-indent-guides:
call s:HL('IndentGuidesEven', s:none, s:xgray3)
call s:HL('IndentGuidesOdd',  s:none, s:xgray4)

" vim-startify:
hi! link StartifyNumber Statement
hi! link StartifyFile Normal
hi! link StartifyPath String
hi! link StartifySlash Normal
hi! link StartifyBracket Comment
hi! link StartifyHeader Type
hi! link StartifyFooter Normal
hi! link StartifySpecial Comment
hi! link StartifySection Identifier

" fzf:
call s:HL('fzf1', s:magenta, s:xgray2)
call s:HL('fzf2', s:bright_green, s:xgray2)
call s:HL('fzf3', s:bright_white, s:xgray2)

" Netrw:
" hi! link netrwDir SrceryBlue
" hi! link netrwClassify SrceryCyan
" hi! link netrwLink SrceryBrightBlack
" hi! link netrwSymLink SrceryCyan
" hi! link netrwExe SrceryYellow
" hi! link netrwComment SrceryBrightBlack
" hi! link netrwList SrceryBrightBlue
" hi! link netrwTreeBar SrceryBrightBlack
" hi! link netrwHelpCmd SrceryCyan
" hi! link netrwVersion SrceryGreen
" hi! link netrwCmdSep SrceryBrightBlack

" coc.nvim:
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

" CtrlP:
hi! link CtrlPMatch SrceryMagenta
hi! link CtrlPLinePre SrceryBrightGreen
call s:HL('CtrlPMode1', s:bright_white, s:xgray3)
call s:HL('CtrlPMode2', s:bright_white, s:xgray5)
call s:HL('CtrlPStats', s:yellow, s:xgray2)

" NERDTree:
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

" Telescope:
hi! link TelescopeNormal SrceryWhite
" call s:HL('TelescopeSelection', s:green, s:none, s:bold)
" call s:HL('TelescopeMatching', s:magenta)
" call s:HL('TelescopeSelectionCaret', s:magenta)
" call s:HL('TelescopePromptPrefix', s:bright_yellow)

" nvim-cmp:
hi! link CmpItemAbbr Pmenu
hi! link CmpItemAbbrDeprecated Comment
hi! link CmpItemAbbrMatch Pmenu
hi! link CmpItemAbbrMatchFuzzy Pmenu
hi! link CmpItemKind Special
hi! link CmpItemMenu Pmenu

" nvim:
" if has('nvim')
  " call s:HL('NormalFloat', s:none, s:xgray1)
  " hi! link NormalNC NormalFloat
  " hi! link MsgArea Normal
  " hi! link MsgSeparator StatusLine
  " hi! link QuickFixLine Search
  " hi! link Substitute Search

  " call s:HL('Whitespace', s:bright_black, s:none)
  " call s:HL('TermCursor', s:black, s:bright_white)
  " call s:HL('TermCursorNC', s:xgray1, s:white)

  " call s:HL('FloatBorder', s:white, g:srcery_bg)
  " call s:HL('FloatShadow', s:black, s:hard_black)
  " call s:HL('FloatShadowThrough', s:black, s:none)

  " nvim-treesitter:

  " This is deprecated in new nvim releases
  " call s:HL('TSStrong', s:none, s:none, s:bold)
  " call s:HL('TSEmphasis', s:none, s:none, s:italic)
  " call s:HL('TSUnderline', s:none, s:none, s:underline)
  "
  " " hi! link TSWarning SrceryOrangeBold
  " " hi! link TSDanger WarningMsg
  " hi! link TSConstBuiltin Constant
  " " hi! link TSField SrceryGreen
  " hi! link TSFuncBuiltin Function
  " hi! link TSFuncMacro Macro
  " hi! link TSFunction Function
  " " call s:HL('TSNamespace', s:white, s:none, s:italic)
  " " call s:HL('TSParameter', s:cyan, s:none, s:italic)
  " " hi! link TSProperty SrceryBrightBlue
  " hi! link TSTagDelimiter TSTag
  " " hi! link TSTagAttribute SrceryYellow
  " hi! link TSVariableBuiltin TSFuncBuiltin
  " " hi! link TSType Type
  " " hi! link TSDelimiter Delimiter
  " " hi! link TSURI htmlLink
  " hi! link TSVariable Variable
  " hi! link TSVariableBuiltin Keyword
  "
  " " Additional treesitter groups
  " " hi! link TSComment Comment
  " hi! link TSConstructor Function
  " " hi! link TSConditional Conditional
  " " hi! link TSRepeat Repeat
  " " hi! link TSLabel Label
  " " hi! link TSOperator Operator
  " " hi! link TSKeyword Keyword
  " " hi! link TSException Exception
  " " hi! link TSString String
  " hi! link TSStringRegex SpecialChar
  " " hi! link TSStringEscape SpecialChar
  " " hi! link TSCharacter Character
  " " hi! link TSNumber Number
  " " hi! link TSBoolean Boolean
  " " hi! link TSFloat Float
  " hi! link TSAnnotation Annotation
  " hi! link TSAttribute PreProc
  " hi! link TSInclude Include
  "
  " if has('nvim-0.8')
    " hi! link @text.strong TSStrong
    " hi! link @text.emphasis TSEmphasis
    " hi! link @text.underline TSUnderline
    " hi! link @text.warning TSWarning
    " hi! link @text.danger TSDanger
    " hi! link @constant.builtin TSConstBuiltin
    " hi! link @field TSField
    " hi! link @function.builtin TSFuncBuiltin
    " hi! link @function.macro TSFuncMacro
    " hi! link @function TSFunction
    " hi! link @namespace TSNamespace
    " hi! link @parameter TSParameter
    " hi! link @property TSProperty
    " hi! link @symbol TSSymbol
    " hi! link @tag TSTag
    " hi! link @tag.attribute TSTagAttribute
    " hi! link @variable.builtin SrceryWhite
    " hi! link @type TSType
    " hi! link @delimiter TSDelimiter
    " hi! link @text.uri htmlLink
    " hi! link @variable TSVariable

    " Additional treesitter groups for nvim 0.8+
    " hi! link @comment Comment
    " hi! link @constructor Type
    " hi! link @conditional Conditional
    " hi! link @repeat Repeat
    " hi! link @label Label
    " hi! link @operator Operator
    " hi! link @keyword Keyword
    " hi! link @exception Exception
    " hi! link @string String
    " hi! link @string.regex String
    " hi! link @string.escape SpecialChar
    " hi! link @character Character
    " hi! link @number Number
    " hi! link @boolean Boolean
    " hi! link @float Float
    " hi! link @annotation PreProc
    " hi! link @attribute PreProc
    " hi! link @include Include
    " hi! link @method Function
    " hi! link @constant Constant
    " hi! link @punctuation.delimiter Delimiter
    " hi! link @punctuation.bracket Delimiter
    " hi! link @punctuation.special Special

    " call s:HL('@markup.strong', s:none, s:none, s:bold)
    " call s:HL('@markup.italic', s:none, s:none, s:italic)
    " call s:HL('@markup.underline', s:none, s:none, s:underline)
    " call s:HL('@markup.strikethrough', s:none, s:none, s:strikethrough)
    "
    " hi! link @markup.link htmlLink
    " hi! link @markup.list Special
    " hi! link @markup.raw String
    " hi! link @markup.quote Comment
    "
    " hi! link @markup.heading.1.markdown SrceryH1
    " hi! link @markup.heading.2.markdown SrceryH2
    " hi! link @markup.heading.3.markdown SrceryH3
    " hi! link @markup.heading.4.markdown SrceryH4
    " hi! link @markup.heading.5.markdown SrceryH5
    " hi! link @markup.heading.6.markdown SrceryH6
    "
    " hi! link @variable.member javascriptMember
  " endif
" endif

" GitCommit:
hi! link gitcommitSelectedFile SrceryGreen
hi! link gitcommitDiscardedFile SrceryRed

" Better whitespace:
call s:HL('ExtraWhitespace', s:none, s:red)

" render-markdown.nvim:
call s:HL('RenderMarkdownCode', s:none, s:xgray1)
call s:HL('RenderMarkdownH1Bg', s:none, s:xgray1)
call s:HL('RenderMarkdownH2Bg', s:none, s:xgray1)
call s:HL('RenderMarkdownH3Bg', s:none, s:xgray1)
call s:HL('RenderMarkdownH4Bg', s:none, s:xgray1)
call s:HL('RenderMarkdownH5Bg', s:none, s:xgray1)
call s:HL('RenderMarkdownH6Bg', s:none, s:xgray1)

" }}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker :
