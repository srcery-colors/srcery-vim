" 'srcery.vim' -- Vim color scheme.
" Maintainer:   Roosta (mail@roosta.sh)
" Description:  Colorscheme that focus ease of use and clearly defined contrasting colors with a slightly earthy tone.
" Original Source: https://github.com/morhetz/gruvbox

scriptencoding utf-8

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

" Palette {{{

let s:black          = ['#1C1B19', 0]
let s:red            = ['#EF2F27', 1]
let s:green          = ['#519F50', 2]
let s:yellow         = ['#FBB829', 3]
let s:blue           = ['#2C78BF', 4]
let s:magenta        = ['#E02C6D', 5]
let s:cyan           = ['#0AAEB3', 6]
let s:white          = ['#918175', 7]
let s:bright_black   = ['#2D2C29', 8]
let s:bright_red     = ['#F75341', 9]
let s:bright_green   = ['#98BC37', 10]
let s:bright_yellow  = ['#FED06E', 11]
let s:bright_blue    = ['#68A8E4', 12]
let s:bright_magenta = ['#FF5C8F', 13]
let s:bright_cyan    = ['#53FDE9', 14]
let s:bright_white   = ['#FCE8C3', 15]

" xterm colors.
let s:orange        = ['#FF5F00', 202]
let s:bright_orange = ['#FF8700', 208]
let s:hard_black    = ['#121212', 233]
let s:xgray1        = ['#262626', 235]
let s:xgray2        = ['#303030', 236]
let s:xgray3        = ['#3A3A3A', 237]
let s:xgray4        = ['#444444', 238]
let s:xgray5        = ['#4E4E4E', 239]

"}}}
" Setup Variables: {{{

let s:none = ['NONE', 'NONE']

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

if !exists('g:srcery_transparent_background')
  let g:srcery_transparent_background=0
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

" }}}
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
call s:HL('SrceryWhite', s:white)
call s:HL('SrceryRed', s:red)
call s:HL('SrceryGreen', s:green)
call s:HL('SrceryYellow', s:yellow)
call s:HL('SrceryBlue', s:blue)
call s:HL('SrceryMagenta', s:magenta)
call s:HL('SrceryCyan', s:cyan)
call s:HL('SrceryBlack', s:black)

call s:HL('SrceryRedBold', s:red, s:none, s:bold)
call s:HL('SrceryGreenBold', s:green, s:none, s:bold)
call s:HL('SrceryYellowBold', s:yellow, s:none, s:bold)
call s:HL('SrceryBlueBold', s:blue, s:none, s:bold)
call s:HL('SrceryMagentaBold', s:magenta, s:none, s:bold)
call s:HL('SrceryCyanBold', s:cyan, s:none, s:bold)

call s:HL('SrceryBrightRed', s:bright_red, s:none)
call s:HL('SrceryBrightGreen', s:bright_green, s:none)
call s:HL('SrceryBrightYellow', s:bright_yellow, s:none)
call s:HL('SrceryBrightBlue', s:bright_blue, s:none)
call s:HL('SrceryBrightMagenta', s:bright_magenta, s:none)
call s:HL('SrceryBrightCyan', s:bright_cyan, s:none)
call s:HL('SrceryBrightBlack', s:bright_black, s:none)
call s:HL('SrceryBrightWhite', s:bright_white)

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

" Vanilla colorscheme ---------------------------------------------------------
" General UI: {{{

" Normal text
"
if g:srcery_transparent_background == 1 && !has('gui_running')
  call s:HL('Normal', s:bright_white, s:none)
 else
  call s:HL('Normal', s:bright_white, s:black)
endif

if v:version >= 700
  " Screen line that the cursor is
  call s:HL('CursorLine',   s:none, s:bright_black)
  " Screen column that the cursor is
  hi! link CursorColumn CursorLine


  if g:srcery_transparent_background == 1 && !has('gui_running')
    " Tab pages line filler
    call s:HL('TabLineFill', s:green, s:none)
    " Active tab page label
    call s:HL('TabLineSel', s:red, s:none, s:bold)
  else
    call s:HL('TabLineFill', s:green, s:black)
    call s:HL('TabLineSel', s:red, s:black, s:bold)
  endif

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
  call s:HL('ColorColumn',  s:none, s:bright_black)

  " Concealed element: \lambda → λ
  call s:HL('Conceal', s:blue, s:none)

  " Line number of CursorLine
  if g:srcery_transparent_background == 1 && !has('gui_running')
    call s:HL('CursorLineNr', s:yellow, s:none)
  else
    call s:HL('CursorLineNr', s:yellow, s:black)
  endif

endif

hi! link NonText SrceryXgray3
hi! link SpecialKey SrceryXgray3

if g:srcery_inverse == 1
  call s:HL('Visual', s:none, s:none, s:inverse)
else
  call s:HL('Visual', s:none, s:bright_black, s:bold)
endif

hi! link VisualNOS Visual

if g:srcery_inverse == 1 && g:srcery_inverse_matches == 1
  call s:HL('Search', s:none, s:none, s:inverse)
  call s:HL('IncSearch', s:none, s:none, s:inverse)
else
  call s:HL('Search', s:none, s:xgray4, s:bold)
  call s:HL('IncSearch', s:none, s:xgray4, s:underline . s:bold)
endif

call s:HL('Underlined', s:blue, s:none, s:underline)

call s:HL('StatusLine',   s:bright_white, s:bright_black)

if g:srcery_transparent_background == 1 && !has('gui_running')
  call s:HL('StatusLineNC', s:white, s:none, s:underline)

  " The column separating vertically split windows
  call s:HL('VertSplit', s:bright_white, s:none)

  " Current match in wildmenu completion
  call s:HL('WildMenu', s:blue, s:none, s:bold)
else
  call s:HL('StatusLineNC', s:white, s:black, s:underline)
  call s:HL('VertSplit', s:bright_white, s:black)
  call s:HL('WildMenu', s:blue, s:black, s:bold)
endif

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
call s:HL('LineNr', s:white)

if g:srcery_transparent_background == 1 && !has('gui_running')
  " Column where signs are displayed
  " TODO Possibly need to fix  SignColumn
  call s:HL('SignColumn', s:none, s:none)
  " Line used for closed folds
  call s:HL('Folded', s:white, s:none, s:italic)
  " Column where folds are displayed
  call s:HL('FoldColumn', s:white, s:none)
else
  call s:HL('SignColumn', s:none, s:black)
  call s:HL('Folded', s:white, s:black, s:italic)
  call s:HL('FoldColumn', s:white, s:black)
endif

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

call s:HL('Comment', s:white, s:none, s:italic)

if g:srcery_transparent_background == 1 && !has('gui_running')
  call s:HL('Todo', s:bright_white, s:none, s:bold . s:italic)
else
  call s:HL('Todo', s:bright_white, s:black, s:bold . s:italic)
endif

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
hi! link Operator Normal
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
hi! link Type SrceryBrightBlue
" static, register, volatile, etc
hi! link StorageClass SrceryOrange
" struct, union, enum, etc.
hi! link Structure SrceryCyan
" typedef
hi! link Typedef SrceryMagenta

if g:srcery_dim_lisp_paren == 1
  hi! link Delimiter SrceryXgray5
else
  hi! link Delimiter SrceryWhite
endif

" }}}
" Completion Menu: {{{

if v:version >= 700
  " Popup menu: normal item
  call s:HL('Pmenu', s:bright_white, s:bright_black)
  " Popup menu: selected item
  call s:HL('PmenuSel', s:bright_white, s:magenta, s:bold)

  if g:srcery_transparent_background == 1 && !has('gui_running')
    " Popup menu: scrollbar
    call s:HL('PmenuSbar', s:none, s:none)
    " Popup menu: scrollbar thumb
    call s:HL('PmenuThumb', s:none, s:none)
  else
    call s:HL('PmenuSbar', s:none, s:black)
    call s:HL('PmenuThumb', s:none, s:black)
  endif
endif

" }}}
" Diffs: {{{

if g:srcery_transparent_background == 1 && !has('gui_running')
  call s:HL('DiffDelete', s:red, s:none)
  call s:HL('DiffAdd',    s:green, s:none)
  call s:HL('DiffChange', s:cyan, s:none)
  call s:HL('DiffText',   s:yellow, s:none)
else
  call s:HL('DiffDelete', s:red, s:black)
  call s:HL('DiffAdd',    s:green, s:black)
  call s:HL('DiffChange', s:cyan, s:black)
  call s:HL('DiffText',   s:yellow, s:black)
endif

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

if has('terminal')
  " Must set an explicit background as NONE won't work
  " Therefore not useful with transparent background option
  call s:HL('Terminal', s:bright_white, s:hard_black)
endif

" }}}
" CtrlP: "{{{
hi! link CtrlPMatch SrceryMagenta
hi! link CtrlPLinePre SrceryBrightGreen
call s:HL('CtrlPMode1', s:bright_white, s:xgray2)
call s:HL('CtrlPMode2', s:bright_white, s:xgray4)
call s:HL('CtrlPStats', s:yellow, s:bright_black)
" }}}

" Plugin specific -------------------------------------------------------------
" Sneak: {{{

hi! link SneakPluginTarget Search
hi! link SneakStreakTarget Search
call s:HL('SneakStreakMask', s:yellow, s:yellow)
hi! link SneakStreakStatusLine Search

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

hi! link GitGutterAdd SrceryGreen
hi! link GitGutterChange SrceryYellow
hi! link GitGutterDelete SrceryRed
hi! link GitGutterChangeDelete SrceryYellow

" }}}
" GitCommit: "{{{

hi! link gitcommitSelectedFile SrceryGreen
hi! link gitcommitDiscardedFile SrceryRed

" }}}
" Asynchronous Lint Engine: {{{

call s:HL('ALEError', s:none, s:none, s:undercurl, s:red)
call s:HL('ALEWarning', s:none, s:none, s:undercurl, s:yellow)
call s:HL('ALEInfo', s:none, s:none, s:undercurl, s:blue)

hi! link ALEErrorSign SrceryRed
hi! link ALEWarningSign SrceryYellow
hi! link ALEInfoSign SrceryBlue

" }}}
" vim-indent-guides: {{{

call s:HL('IndentGuidesEven', s:none, s:xgray2)
call s:HL('IndentGuidesOdd',  s:none, s:xgray3)

" }}}
" vim-startify {{{

hi! link StartifyNumber Statement
hi! link StartifyFile Normal
hi! link StartifyPath String
hi! link StartifySlash Normal
hi! link StartifyBracket Comment
hi! link StartifyHeader Type
hi! link StartifyFooter Normal
hi! link StartifySpecial Comment
hi! link StartifySection Identifier

" }}}

" Filetype specific -----------------------------------------------------------
" Diff: {{{

hi! link diffAdded SrceryGreen
hi! link diffRemoved SrceryRed
hi! link diffChanged SrceryCyan

hi! link diffFile SrceryOrange
hi! link diffNewFile SrceryYellow

hi! link diffLine SrceryBlue

" }}}
" Html: {{{

hi! link htmlTag SrceryBlue
hi! link htmlEndTag SrceryBlue

hi! link htmlTagName SrceryBlue
hi! link htmlTag SrceryWhite
hi! link htmlArg SrceryYellow

hi! link htmlScriptTag SrceryRed
hi! link htmlTagN SrceryBlue
hi! link htmlSpecialTagName SrceryBlue

call s:HL('htmlLink', s:bright_white, s:none, s:underline)

hi! link htmlSpecialChar SrceryYellow

if g:srcery_transparent_background == 1 && !has('gui_running')
  call s:HL('htmlBold', s:bright_white, s:none, s:bold)
  call s:HL('htmlBoldUnderline', s:bright_white, s:none, s:bold . s:underline)
  call s:HL('htmlBoldItalic', s:bright_white, s:none, s:bold . s:italic)
  call s:HL('htmlBoldUnderlineItalic', s:bright_white, s:none, s:bold . s:underline . s:italic)
  call s:HL('htmlUnderline', s:bright_white, s:none, s:underline)
  call s:HL('htmlUnderlineItalic', s:bright_white, s:none, s:underline . s:italic)
  call s:HL('htmlItalic', s:bright_white, s:none, s:italic)
else
  call s:HL('htmlBold', s:bright_white, s:black, s:bold)
  call s:HL('htmlBoldUnderline', s:bright_white, s:black, s:bold . s:underline)
  call s:HL('htmlBoldItalic', s:bright_white, s:black, s:bold . s:italic)
  call s:HL('htmlBoldUnderlineItalic', s:bright_white, s:black, s:bold . s:underline . s:italic)
  call s:HL('htmlUnderline', s:bright_white, s:black, s:underline)
  call s:HL('htmlUnderlineItalic', s:bright_white, s:black, s:underline . s:italic)
  call s:HL('htmlItalic', s:bright_white, s:black, s:italic)
endif


" }}}
" Xml: {{{

hi! link xmlTag SrceryBlue
hi! link xmlEndTag SrceryBlue
hi! link xmlTagName SrceryBlue
hi! link xmlEqual SrceryBlue
hi! link docbkKeyword SrceryCyanBold

hi! link xmlDocTypeDecl SrceryWhite
hi! link xmlDocTypeKeyword SrceryMagenta
hi! link xmlCdataStart SrceryWhite
hi! link xmlCdataCdata SrceryMagenta
hi! link dtdFunction SrceryWhite
hi! link dtdTagName SrceryMagenta

hi! link xmlAttrib SrceryCyan
hi! link xmlProcessingDelim SrceryWhite
hi! link dtdParamEntityPunct SrceryWhite
hi! link dtdParamEntityDPunct SrceryWhite
hi! link xmlAttribPunct SrceryWhite

hi! link xmlEntity SrceryYellow
hi! link xmlEntityPunct SrceryYellow
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
" Lisp dialects: {{{
if g:srcery_dim_lisp_paren == 1
  hi! link schemeParentheses SrceryXgray5
  hi! link clojureParen SrceryXgray5
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
" C: {{{

hi! link cOperator SrceryMagenta
hi! link cStructure SrceryYellow

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
" CSS/SASS: {{{

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

" SASS
hi! link sassClass SrceryBlue
hi! link sassClassChar SrceryBlue
hi! link sassVariable SrceryCyan
hi! link sassIdChar SrceryBrightBlue

" }}}
" JavaScript: {{{

hi! link javaScriptMember SrceryBlue
hi! link javaScriptNull SrceryMagenta

" }}}
" YAJS: {{{

hi! link javascriptParens SrceryBrightCyan
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
hi! link javascriptOperator SrceryBrightCyan
hi! link javascriptFuncKeyword SrceryBrightRed
hi! link javascriptFunctionMethod SrceryYellow
hi! link javascriptReturn SrceryBrightRed
hi! link javascriptEndColons Normal

" }}}
" CoffeeScript: {{{

hi! link coffeeExtendedOp SrceryBrightWhite
hi! link coffeeSpecialOp SrceryBrightWhite
hi! link coffeeCurly SrceryYellow
hi! link coffeeParen SrceryBrightWhite
hi! link coffeeBracket SrceryYellow

" }}}
" Ruby: {{{

hi! link rubyStringDelimiter SrceryGreen
hi! link rubyInterpolationDelimiter SrceryCyan
hi! link rubyDefine Keyword

" }}}
" ObjectiveC: {{{

hi! link objcTypeModifier SrceryRed
hi! link objcDirective SrceryBlue

" }}}
" Go: {{{

hi! link goDirective SrceryCyan
hi! link goConstants SrceryMagenta
hi! link goDeclaration SrceryRed
hi! link goDeclType SrceryBlue
hi! link goBuiltins SrceryYellow

" }}}
" Lua: {{{

hi! link luaIn SrceryRed
hi! link luaFunction SrceryCyan
hi! link luaTable SrceryYellow

" }}}
" MoonScript: {{{

hi! link moonSpecialOp SrceryBrightWhite
hi! link moonExtendedOp SrceryBrightWhite
hi! link moonFunction SrceryBrightWhite
hi! link moonObject SrceryYellow

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
" Elixir: {{{

hi! link elixirDocString Comment

hi! link elixirStringDelimiter SrceryGreen
hi! link elixirInterpolationDelimiter SrceryCyan

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
" Markdown: {{{

call s:HL('markdownItalic', s:bright_white, s:none, s:italic)

hi! link markdownH1 SrceryGreenBold
hi! link markdownH2 SrceryGreenBold
hi! link markdownH3 SrceryYellowBold
hi! link markdownH4 SrceryYellowBold
hi! link markdownH5 SrceryYellow
hi! link markdownH6 SrceryYellow

hi! link markdownCode SrceryCyan
hi! link markdownCodeBlock SrceryCyan
hi! link markdownCodeDelimiter SrceryCyan

hi! link markdownBlockquote SrceryWhite
hi! link markdownListMarker SrceryWhite
hi! link markdownOrderedListMarker SrceryWhite
hi! link markdownRule SrceryWhite
hi! link markdownHeadingRule SrceryWhite

hi! link markdownUrlDelimiter SrceryBrightWhite
hi! link markdownLinkDelimiter SrceryBrightWhite
hi! link markdownLinkTextDelimiter SrceryBrightWhite

hi! link markdownHeadingDelimiter SrceryYellow
hi! link markdownUrl SrceryMagenta
hi! link markdownUrlTitleDelimiter SrceryGreen

call s:HL('markdownLinkText', s:white, s:none, s:underline)
hi! link markdownIdDeclaration markdownLinkText

" }}}
" Haskell: {{{

" hi! link haskellType SrceryYellow
" hi! link haskellOperators SrceryYellow
" hi! link haskellConditional SrceryCyan
" hi! link haskellLet SrceryYellow
"
hi! link haskellType SrceryBlue
hi! link haskellIdentifier SrceryBlue
hi! link haskellSeparator SrceryBlue
hi! link haskellDelimiter SrceryBrightWhite
hi! link haskellOperators SrceryBlue
"
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
" Json: {{{

hi! link jsonKeyword SrceryGreen
hi! link jsonQuote SrceryGreen
hi! link jsonBraces SrceryBlue
hi! link jsonString SrceryBlue

" }}}
" Rust: {{{
"https://github.com/rust-lang/rust.vim/blob/master/syntax/rust.vim
hi! link rustCommentLineDoc SrceryGreen
hi! link rustModPathSep SrceryWhite
" }}}
" Make: {{{
hi! link makePreCondit SrceryRed
hi! link makeCommands SrceryBrightWhite
hi! link makeTarget SrceryYellow
" }}}
" Misc: {{{
call s:HL('shParenError', s:bright_white, s:bright_red)
" }}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker :
