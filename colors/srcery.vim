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

" Palette {{{

let s:none           = g:srcery#palette.none

" 16 base colors
let s:black          = g:srcery#palette.black
let s:red            = g:srcery#palette.red
let s:green          = g:srcery#palette.green
let s:yellow         = g:srcery#palette.yellow
let s:blue           = g:srcery#palette.blue
let s:magenta        = g:srcery#palette.magenta
let s:cyan           = g:srcery#palette.cyan
let s:white          = g:srcery#palette.white
let s:bright_black   = g:srcery#palette.bright_black
let s:bright_red     = g:srcery#palette.bright_red
let s:bright_green   = g:srcery#palette.bright_green
let s:bright_yellow  = g:srcery#palette.bright_yellow
let s:bright_blue    = g:srcery#palette.bright_blue
let s:bright_magenta = g:srcery#palette.bright_magenta
let s:bright_cyan    = g:srcery#palette.bright_cyan
let s:bright_white   = g:srcery#palette.bright_white

" xterm colors
let s:orange         = g:srcery#palette.orange
let s:bright_orange  = g:srcery#palette.bright_orange
let s:hard_black     = g:srcery#palette.hard_black
let s:xgray1         = g:srcery#palette.xgray1
let s:xgray2         = g:srcery#palette.xgray2
let s:xgray3         = g:srcery#palette.xgray3
let s:xgray4         = g:srcery#palette.xgray4
let s:xgray5         = g:srcery#palette.xgray5
let s:xgray6         = g:srcery#palette.xgray6

"}}}
" Setup Emphasis: {{{

let s:bold = g:srcery#palette.bold
let s:italic = g:srcery#palette.italic
let s:underline = g:srcery#palette.underline
let s:undercurl = g:srcery#palette.undercurl
let s:inverse = g:srcery#palette.inverse

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

" Vanilla colorscheme ---------------------------------------------------------
" General UI: {{{

" Normal text
"
if g:srcery_bg_passthrough == 1 && !has('gui_running')
  call s:HL('Normal', s:bright_white, s:none)
 else
  call s:HL('Normal', s:bright_white, s:black)
endif

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
  if g:srcery_bg_passthrough == 1 && !has('gui_running')
    call s:HL('CursorLineNr', s:yellow, s:none)
  else
    call s:HL('CursorLineNr', s:yellow, s:black)
  endif

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
  call s:HL('IncSearch', s:none, s:none, s:inverse)
else
  call s:HL('Search', s:none, s:xgray5, s:bold)
  call s:HL('IncSearch', s:none, s:xgray5, s:underline . s:bold)
endif

call s:HL('Underlined', s:blue, s:none, s:underline)

call s:HL('StatusLine',   s:bright_white, s:xgray2)

if g:srcery_bg_passthrough == 1 && !has('gui_running')
  call s:HL('StatusLineNC', s:bright_black, s:none, s:underline)

  " The column separating vertically split windows
  call s:HL('VertSplit', s:bright_white, s:none)

  " Current match in wildmenu completion
  call s:HL('WildMenu', s:blue, s:none, s:bold)
else
  call s:HL('StatusLineNC', s:bright_black, s:black, s:underline)
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
call s:HL('LineNr', s:bright_black)

if g:srcery_bg_passthrough == 1 && !has('gui_running')
  " Column where signs are displayed
  " TODO Possibly need to fix  SignColumn
  call s:HL('SignColumn', s:none, s:none)
  " Line used for closed folds
  call s:HL('Folded', s:bright_black, s:none, s:italic)
  " Column where folds are displayed
  call s:HL('FoldColumn', s:bright_black, s:none)
else
  call s:HL('SignColumn', s:none, s:black)
  call s:HL('Folded', s:bright_black, s:black, s:italic)
  call s:HL('FoldColumn', s:bright_black, s:black)
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

call s:HL('Comment', s:bright_black, s:none, s:italic)

if g:srcery_bg_passthrough == 1 && !has('gui_running')
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

  if g:srcery_bg_passthrough == 1 && !has('gui_running')
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

if g:srcery_bg_passthrough == 1 && !has('gui_running')
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

if g:srcery_hard_black_terminal_bg == 1 && has('terminal')
  " Must set an explicit background as NONE won't work
  " Therefore not useful with transparent background option
  call s:HL('Terminal', s:bright_white, s:hard_black)
endif

" }}}
" Neovim's builtin LSP: {{{

hi! link LspDiagnosticsDefaultError SrceryBrightRed
hi! link LspDiagnosticsDefaultWarning SrceryBrightYellow
hi! link LspDiagnosticsDefaultInformation SrceryBrightGreen
hi! link LspDiagnosticsDefaultHint SrceryBrightCyan
call s:HL('LspDiagnosticsUnderlineError', s:bright_red, s:none, s:underline)
call s:HL('LspDiagnosticsUnderlineWarning', s:bright_yellow, s:none, s:underline)
call s:HL('LspDiagnosticsUnderlineInformation', s:bright_green, s:none, s:underline)
call s:HL('LspDiagnosticsUnderlineHint', s:bright_cyan, s:none, s:underline)

" }}}

" Plugin specific -------------------------------------------------------------


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
hi! link htmlTag SrceryBrightBlack
hi! link htmlArg SrceryYellow

hi! link htmlScriptTag SrceryRed
hi! link htmlTagN SrceryBlue
hi! link htmlSpecialTagName SrceryBlue

call s:HL('htmlLink', s:bright_white, s:none, s:underline)

hi! link htmlSpecialChar SrceryYellow

if g:srcery_bg_passthrough == 1 && !has('gui_running')
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
hi! link sassId SrceryBrightBlue

" }}}
" JavaScript: {{{

hi! link javascriptMember SrceryBlue
hi! link javascriptNull SrceryMagenta

hi! link javascriptParens SrceryWhite
hi! link javascriptBraces SrceryWhite
hi! link javascriptReserved SrceryOrange
hi! link javascriptIdentifier SrceryRed

hi! link javascriptFuncArg Normal
hi! link javascriptDocComment SrceryGreen
hi! link javascriptArrayMethod Function
hi! link javascriptReflectMethod Function
hi! link javascriptStringMethod Function
hi! link javascriptObjectMethod Function
hi! link javascriptObjectStaticMethod Function
hi! link javascriptObjectLabel SrceryBlue
hi! link javascriptFunction SrceryRed

hi! link javascriptProp SrceryBlue

hi! link javascriptVariable SrceryBrightBlue
hi! link javascriptOperator SrceryBrightCyan
hi! link javascriptFuncKeyword SrceryBrightRed
hi! link javascriptFunctionMethod SrceryYellow
hi! link javascriptReturn SrceryBrightRed
hi! link javascriptEndColons SrceryWhite

" vim-javascript
hi! link jsFunction SrceryRed
hi! link jsImport SrceryRed
hi! link jsObjectSeparator SrceryWhite
hi! link jsParens SrceryWhite
hi! link jsFuncParens SrceryWhite
hi! link jsNoise SrceryWhite
hi! link jsEnvComment SrceryBrightBlack
hi! link jsOperator SrceryBrightCyan

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
" Json: {{{

hi! link jsonKeyword SrceryGreen
hi! link jsonQuote SrceryGreen
hi! link jsonBraces SrceryBlue
hi! link jsonString SrceryBlue

" }}}
" Rust: {{{

"https://github.com/rust-lang/rust.vim/blob/master/syntax/rust.vim
hi! link rustCommentLineDoc SrceryGreen
hi! link rustModPathSep SrceryBrightBlack

" }}}
" Make: {{{

hi! link makePreCondit SrceryRed
hi! link makeCommands SrceryBrightWhite
hi! link makeTarget SrceryYellow

" }}}
" shell script: {{{

call s:HL('shParenError', s:bright_white, s:bright_red)
hi! link shCmdSubRegion SrceryWhite
hi! link shArithRegion SrceryWhite
hi! link shArithRegion SrceryWhite
hi! link shQuote SrceryWhite
hi! link shRedir SrceryMagenta
hi! link shOption SrceryBrightYellow
hi! link shCommandSub SrceryBrightRed

" }}}
" Misc: {{{

call s:HL('ExtraWhitespace', s:none, s:red)
" }}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker :
