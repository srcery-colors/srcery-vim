" 'srcery.vim' -- Vim color scheme.
" Maintainer:   Roosta (mail@roosta.sh)
" Description:  Dark colorscheme using 16 color palette

hi clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'srcery'

" Palette {{{

let s:black          = ["#1C1B19", 0]
let s:red            = ["#FF3128", 1]
let s:green          = ["#519F50", 2]
let s:yellow         = ["#FBB829", 3]
let s:blue           = ["#5573A3", 4]
let s:magenta        = ["#E02C6D", 5]
let s:cyan           = ["#1693A5", 6]
let s:white          = ["#FCE8C3", 7]
let s:bright_black   = ["#2D2C29", 8]
let s:bright_red     = ["#DA4939", 9]
let s:bright_green   = ["#98BC37", 10]
let s:bright_yellow  = ["#FFC66D", 11]
let s:bright_blue    = ["#6D9CBE", 12]
let s:bright_magenta = ["#E35682", 13]
let s:bright_cyan    = ["#34BEDA", 14]
let s:gray           = ["#918175", 15]

"}}}
" Setup Variables: {{{

let s:none = ['NONE', 'NONE']

if !exists('g:srcery_bold')
  let g:srcery_bold=1
endif

if !exists('g:srcery_italic')
  if has('gui_running') || $TERM_ITALICS == 'true'
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

if !exists('g:srcery_standout')
  let g:srcery_standout=1
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

let s:standout = 'standout,'
if g:srcery_standout == 0
  let s:standout = ''
endif
" }}}
" Overload Setting: {{{

let s:hls_cursor = s:yellow
if exists('g:srcery_hls_cursor')
  let s:hls_cursor = get(s:gb, g:srcery_hls_cursor)
endif

let s:number_column = s:gray
let s:sign_column = s:black

if exists('g:gitgutter_override_sign_column_highlight') &&
      \ g:gitgutter_override_sign_column_highlight == 1
  let s:sign_column = s:number_column
else
  let g:gitgutter_override_sign_column_highlight = 0

  if exists('g:srcery_sign_column')
    let s:sign_column = get(s:gb, g:srcery_sign_column)
  endif
endif

let s:color_column = s:black
if exists('g:srcery_color_column')
  let s:color_column = get(s:gb, g:srcery_color_column)
endif

let s:vert_split = s:black
if exists('g:srcery_vert_split')
  let s:vert_split = get(s:gb, g:srcery_vert_split)
endif

let s:invert_signs = ''
if exists('g:srcery_invert_signs')
  if g:srcery_invert_signs == 1
    let s:invert_signs = s:inverse
  endif
endif

let s:invert_selection = s:inverse
if exists('g:srcery_invert_selection')
  if g:srcery_invert_selection == 0
    let s:invert_selection = ''
  endif
endif

let s:invert_tabline = ''
if exists('g:srcery_invert_tabline')
  if g:srcery_invert_tabline == 1
    let s:invert_tabline = s:inverse
  endif
endif

let s:italicize_comments = s:italic
if exists('g:srcery_italicize_comments')
  if g:srcery_italicize_comments == 0
    let s:italicize_comments = ''
  endif
endif

let s:italicize_strings = ''
if exists('g:srcery_italicize_strings')
  if g:srcery_italicize_strings == 1
    let s:italicize_strings = s:italic
  endif
endif

" }}}
" Highlighting Function: {{{

function! s:HL(group, fg, ...)
  " Arguments: group, guifg, guibg, gui, guisp

  " foreground
  let fg = a:fg

  " background
  if a:0 >= 1
    let bg = a:1
  else
    let bg = s:none
  endif

  " emphasis
  if a:0 >= 2 && strlen(a:2)
    let emstr = a:2
  else
    let emstr = 'NONE,'
  endif

  let histring = [ 'hi', a:group,
        \ 'guifg=' . fg[0], 'ctermfg=' . fg[1],
        \ 'guibg=' . bg[0], 'ctermbg=' . bg[1],
        \ 'gui=' . emstr[:-2], 'cterm=' . emstr[:-2]
        \ ]

  " special
  if a:0 >= 3
    call add(histring, 'guisp=' . a:3[0])
  endif

  execute join(histring, ' ')
endfunction
"}}}
" Srcery Hi Groups: {{{

" memoize common hi groups
call s:HL('SrceryWhite', s:white)
call s:HL('SrceryRed', s:red)
call s:HL('SrceryRedBold', s:red, s:none, s:bold)
call s:HL('SrceryGreen', s:green)
call s:HL('SrceryGreenBold', s:green, s:none, s:bold)
call s:HL('SrceryYellow', s:yellow)
call s:HL('SrceryYellowBold', s:yellow, s:none, s:bold)
call s:HL('SrceryBlue', s:blue)
call s:HL('SrceryBlueBold', s:blue, s:none, s:bold)
call s:HL('SrceryMagenta', s:magenta)
call s:HL('SrceryMagentaBold', s:magenta, s:none, s:bold)
call s:HL('SrceryCyan', s:cyan)
call s:HL('SrceryCyanBold', s:cyan, s:none, s:bold)

call s:HL('SrceryRedSign', s:red, s:sign_column, s:invert_signs)
call s:HL('SrceryGreenSign', s:green, s:sign_column, s:invert_signs)
call s:HL('SrceryYellowSign', s:yellow, s:sign_column, s:invert_signs)
call s:HL('SrceryBlueSign', s:blue, s:sign_column, s:invert_signs)
call s:HL('SrceryMagentaSign', s:magenta, s:sign_column, s:invert_signs)
call s:HL('SrceryCyanSign', s:cyan, s:sign_column, s:invert_signs)

" }}}

" Vanilla colorscheme ---------------------------------------------------------
" General UI: {{{

" Normal text
call s:HL('Normal', s:white, s:black)

if version >= 700
  " Screen line that the cursor is
  call s:HL('CursorLine',   s:none, s:black)
  " Screen column that the cursor is
  hi! link CursorColumn CursorLine

  " Tab pages line filler
  call s:HL('TabLineFill', s:black, s:black, s:invert_tabline)
  " Active tab page label
  call s:HL('TabLineSel', s:black, s:black, s:bold . s:invert_tabline)
  " Not active tab page label
  hi! link TabLine TabLineFill

  " Match paired bracket under the cursor
  call s:HL('MatchParen', s:none, s:black, s:bold)
endif

if version >= 703
  " Highlighted screen columns
  call s:HL('ColorColumn',  s:none, s:color_column)

  " Concealed element: \lambda → λ
  call s:HL('Conceal', s:blue, s:none)

  " Line number of CursorLine
  call s:HL('CursorLineNr', s:yellow, s:black)
endif

hi! link NonText SrceryBg2
hi! link SpecialKey SrceryBg2

call s:HL('Visual',    s:none,  s:black, s:invert_selection)
hi! link VisualNOS Visual

call s:HL('Search',    s:black, s:yellow)
call s:HL('IncSearch', s:black, s:hls_cursor)

call s:HL('Underlined', s:blue, s:none, s:underline)

call s:HL('StatusLine',   s:white, s:bright_black)
call s:HL('StatusLineNC', s:gray, s:black)

" The column separating vertically split windows
call s:HL('VertSplit', s:white, s:vert_split)

" Current match in wildmenu completion
call s:HL('WildMenu', s:blue, s:black, s:bold)

" Directory names, special names in listing
hi! link Directory SrceryGreenBold

" Titles for output from :set all, :autocmd, etc.
hi! link Title SrceryGreenBold

" Error messages on the command line
call s:HL('ErrorMsg',   s:white, s:red)
" More prompt: -- More --
hi! link MoreMsg SrceryYellowBold
" Current mode message: -- INSERT --
hi! link ModeMsg SrceryYellowBold
" 'Press enter' prompt and yes/no questions
hi! link Question SrceryYellowBold
" Warning messages
hi! link WarningMsg SrceryRedBold

" }}}
" Gutter: {{{

" Line number for :number and :# commands
call s:HL('LineNr', s:number_column)

" Column where signs are displayed
call s:HL('SignColumn', s:none, s:sign_column)

" Line used for closed folds
call s:HL('Folded', s:gray, s:black, s:italic)
" Column where folds are displayed
call s:HL('FoldColumn', s:gray, s:black)

" }}}
" Cursor: {{{

" Character under cursor
call s:HL('Cursor', s:none, s:none, s:inverse)
" Visual mode cursor, selection
hi! link vCursor Cursor
" Input moder cursor
hi! link iCursor Cursor
" Language mapping cursor
hi! link lCursor Cursor

" }}}
" Syntax Highlighting: {{{

call s:HL('Comment', s:gray, s:none, s:italicize_comments)
call s:HL('Todo', s:white, s:black, s:bold . s:italic)
call s:HL('Error', s:red, s:black, s:bold . s:inverse)

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
hi! link Identifier SrceryBlue
" Function name
hi! link Function SrceryGreenBold

" Generic preprocessor
hi! link PreProc SrceryCyan
" Preprocessor #include
hi! link Include SrceryCyan
" Preprocessor #define
hi! link Define SrceryCyan
" Same as Define
hi! link Macro SrceryCyan
" Preprocessor #if, #else, #endif, etc.
hi! link PreCondit SrceryCyan

" Generic constant
hi! link Constant SrceryMagenta
" Character constant: 'c', '/n'
hi! link Character SrceryMagenta
" Boolean constant: TRUE, false
hi! link Boolean SrceryMagenta
" Number constant: 234, 0xff
hi! link Number SrceryMagenta
" Floating point constant: 2.3e10
hi! link Float SrceryMagenta

" Generic type
hi! link Type SrceryYellow
" static, register, volatile, etc
hi! link StorageClass SrceryYellow
" struct, union, enum, etc.
hi! link Structure SrceryCyan
" typedef
hi! link Typedef SrceryYellow

" }}}
" Completion Menu: {{{

if version >= 700
  " Popup menu: normal item
  call s:HL('Pmenu', s:white, s:black)
  " Popup menu: selected item
  call s:HL('PmenuSel', s:black, s:blue, s:bold)
  " Popup menu: scrollbar
  call s:HL('PmenuSbar', s:none, s:black)
  " Popup menu: scrollbar thumb
  call s:HL('PmenuThumb', s:none, s:black)
endif

" }}}
" Diffs: {{{

call s:HL('DiffDelete', s:red, s:black, s:inverse)
call s:HL('DiffAdd',    s:green, s:black, s:inverse)
"call s:HL('DiffChange', s:black, s:blue)
"call s:HL('DiffText',   s:black, s:yellow)

" Alternative setting
call s:HL('DiffChange', s:cyan, s:black, s:inverse)
call s:HL('DiffText',   s:yellow, s:black, s:inverse)

" }}}
" Spelling: {{{

if has("spell")
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
      \ ['blue', '#458588'], ['magenta', '#b16286'],
      \ ['red',  '#cc241d'], ['166',     '#d65d0e']
    \ ]
endif

let g:rainbow_guifgs = [ '#d65d0e', '#cc241d', '#b16286', '#458588' ]
let g:rainbow_ctermfgs = [ '166', 'red', 'magenta', 'blue' ]

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

hi! link GitGutterAdd SrceryGreenSign
hi! link GitGutterChange SrceryCyanSign
hi! link GitGutterDelete SrceryRedSign
hi! link GitGutterChangeDelete SrceryCyanSign

" }}}
" GitCommit: "{{{

hi! link gitcommitSelectedFile SrceryGreen
hi! link gitcommitDiscardedFile SrceryRed

" }}}

" Filetype specific -----------------------------------------------------------
" Diff: {{{

hi! link diffAdded SrceryGreen
hi! link diffRemoved SrceryRed
hi! link diffChanged SrceryCyan

hi! link diffFile SrceryYellow
hi! link diffNewFile SrceryYellow

hi! link diffLine SrceryBlue

" }}}
" Html: {{{

hi! link htmlTag SrceryBlue
hi! link htmlEndTag SrceryBlue

hi! link htmlTagName SrceryCyanBold
hi! link htmlArg SrceryCyan

hi! link htmlScriptTag SrceryMagenta
hi! link htmlTagN SrceryFg1
hi! link htmlSpecialTagName SrceryCyanBold

call s:HL('htmlLink', s:white, s:none, s:underline)

hi! link htmlSpecialChar SrceryYellow

call s:HL('htmlBold', s:white, s:black, s:bold)
call s:HL('htmlBoldUnderline', s:white, s:black, s:bold . s:underline)
call s:HL('htmlBoldItalic', s:white, s:black, s:bold . s:italic)
call s:HL('htmlBoldUnderlineItalic', s:white, s:black, s:bold . s:underline . s:italic)

call s:HL('htmlUnderline', s:white, s:black, s:underline)
call s:HL('htmlUnderlineItalic', s:white, s:black, s:underline . s:italic)
call s:HL('htmlItalic', s:white, s:black, s:italic)

" }}}
" Xml: {{{

hi! link xmlTag SrceryBlue
hi! link xmlEndTag SrceryBlue
hi! link xmlTagName SrceryBlue
hi! link xmlEqual SrceryBlue
hi! link docbkKeyword SrceryCyanBold

hi! link xmlDocTypeDecl SrceryGray
hi! link xmlDocTypeKeyword SrceryMagenta
hi! link xmlCdataStart SrceryGray
hi! link xmlCdataCdata SrceryMagenta
hi! link dtdFunction SrceryGray
hi! link dtdTagName SrceryMagenta

hi! link xmlAttrib SrceryCyan
hi! link xmlProcessingDelim SrceryGray
hi! link dtdParamEntityPunct SrceryGray
hi! link dtdParamEntityDPunct SrceryGray
hi! link xmlAttribPunct SrceryGray

hi! link xmlEntity SrceryYellow
hi! link xmlEntityPunct SrceryYellow
" }}}
" Vim: {{{

call s:HL('vimCommentTitle', s:white, s:none, s:bold . s:italicize_comments)

hi! link vimNotation SrceryYellow
hi! link vimBracket SrceryYellow
hi! link vimMapModKey SrceryYellow
hi! link vimFuncSID SrceryFg3
hi! link vimSetSep SrceryFg3
hi! link vimSep SrceryFg3
hi! link vimContinue SrceryFg3

" }}}
" Clojure: {{{

hi! link clojureKeyword SrceryBlue
hi! link clojureCond SrceryYellow
hi! link clojureSpecial SrceryYellow
hi! link clojureDefine SrceryYellow

hi! link clojureFunc SrceryYellow
hi! link clojureRepeat SrceryYellow
hi! link clojureCharacter SrceryCyan
hi! link clojureStringEscape SrceryCyan
hi! link clojureException SrceryRed

hi! link clojureRegexp SrceryCyan
hi! link clojureRegexpEscape SrceryCyan
call s:HL('clojureRegexpCharClass', s:white, s:none, s:bold)
hi! link clojureRegexpMod clojureRegexpCharClass
hi! link clojureRegexpQuantifier clojureRegexpCharClass

hi! link clojureParen SrceryFg3
hi! link clojureAnonArg SrceryYellow
hi! link clojureVariable SrceryBlue
hi! link clojureMacro SrceryYellow

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
hi! link pythonDot SrceryFg3

" }}}
" CSS: {{{

hi! link cssBraces SrceryBlue
hi! link cssFunctionName SrceryYellow
hi! link cssIdentifier SrceryYellow
hi! link cssClassName SrceryGreen
hi! link cssColor SrceryBlue
hi! link cssSelectorOp SrceryBlue
hi! link cssSelectorOp2 SrceryBlue
hi! link cssImportant SrceryGreen
hi! link cssVendor SrceryFg1

hi! link cssTextProp SrceryCyan
hi! link cssAnimationProp SrceryCyan
hi! link cssUIProp SrceryYellow
hi! link cssTransformProp SrceryCyan
hi! link cssTransitionProp SrceryCyan
hi! link cssPrintProp SrceryCyan
hi! link cssPositioningProp SrceryYellow
hi! link cssBoxProp SrceryCyan
hi! link cssFontDescriptorProp SrceryCyan
hi! link cssFlexibleBoxProp SrceryCyan
hi! link cssBorderOutlineProp SrceryCyan
hi! link cssBackgroundProp SrceryCyan
hi! link cssMarginProp SrceryCyan
hi! link cssListProp SrceryCyan
hi! link cssTableProp SrceryCyan
hi! link cssFontProp SrceryCyan
hi! link cssPaddingProp SrceryCyan
hi! link cssDimensionProp SrceryCyan
hi! link cssRenderProp SrceryCyan
hi! link cssColorProp SrceryCyan
hi! link cssGeneratedContentProp SrceryCyan

" }}}
" JavaScript: {{{

hi! link javaScriptBraces SrceryFg1
hi! link javaScriptFunction SrceryCyan
hi! link javaScriptIdentifier SrceryRed
hi! link javaScriptMember SrceryBlue
hi! link javaScriptNumber SrceryMagenta
hi! link javaScriptNull SrceryMagenta
hi! link javaScriptParens SrceryFg3

" }}}
" YAJS: {{{

hi! link javascriptImport SrceryCyan
hi! link javascriptExport SrceryCyan
hi! link javascriptClassKeyword SrceryCyan
hi! link javascriptClassExtends SrceryCyan
hi! link javascriptDefault SrceryCyan

hi! link javascriptClassName SrceryYellow
hi! link javascriptClassSuperName SrceryYellow
hi! link javascriptGlobal SrceryYellow

hi! link javascriptEndColons SrceryFg1
hi! link javascriptFuncArg SrceryFg1
hi! link javascriptGlobalMethod SrceryFg1
hi! link javascriptNodeGlobal SrceryFg1

" hi! link javascriptVariable SrceryYellow
hi! link javascriptVariable SrceryRed
" hi! link javascriptIdentifier SrceryYellow
" hi! link javascriptClassSuper SrceryYellow
hi! link javascriptIdentifier SrceryYellow
hi! link javascriptClassSuper SrceryYellow

" hi! link javascriptFuncKeyword SrceryYellow
" hi! link javascriptAsyncFunc SrceryYellow
hi! link javascriptFuncKeyword SrceryCyan
hi! link javascriptAsyncFunc SrceryCyan
hi! link javascriptClassStatic SrceryYellow

hi! link javascriptOperator SrceryRed
hi! link javascriptForOperator SrceryRed
hi! link javascriptYield SrceryRed
hi! link javascriptExceptions SrceryRed
hi! link javascriptMessage SrceryRed

hi! link javascriptTemplateSB SrceryCyan
hi! link javascriptTemplateSubstitution SrceryFg1

" hi! link javascriptLabel SrceryBlue
" hi! link javascriptObjectLabel SrceryBlue
" hi! link javascriptPropertyName SrceryBlue
hi! link javascriptLabel SrceryFg1
hi! link javascriptObjectLabel SrceryFg1
hi! link javascriptPropertyName SrceryFg1

hi! link javascriptLogicSymbols SrceryFg1
hi! link javascriptArrowFunc SrceryFg1

hi! link javascriptDocParamName SrceryFg4
hi! link javascriptDocTags SrceryFg4
hi! link javascriptDocNotation SrceryFg4
hi! link javascriptDocParamType SrceryFg4
hi! link javascriptDocNamedParamType SrceryFg4

" }}}
" CoffeeScript: {{{

hi! link coffeeExtendedOp SrceryFg3
hi! link coffeeSpecialOp SrceryFg3
hi! link coffeeCurly SrceryYellow
hi! link coffeeParen SrceryFg3
hi! link coffeeBracket SrceryYellow

" }}}
" Ruby: {{{

hi! link rubyStringDelimiter SrceryGreen
hi! link rubyInterpolationDelimiter SrceryCyan

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

hi! link moonSpecialOp SrceryFg3
hi! link moonExtendedOp SrceryFg3
hi! link moonFunction SrceryFg3
hi! link moonObject SrceryYellow

" }}}
" Java: {{{

hi! link javaAnnotation SrceryBlue
hi! link javaDocTags SrceryCyan
hi! link javaCommentTitle vimCommentTitle
hi! link javaParen SrceryFg3
hi! link javaParen1 SrceryFg3
hi! link javaParen2 SrceryFg3
hi! link javaParen3 SrceryFg3
hi! link javaParen4 SrceryFg3
hi! link javaParen5 SrceryFg3
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
hi! link scalaNameDefinition SrceryFg1
hi! link scalaCaseFollowing SrceryFg1
hi! link scalaCapitalWord SrceryFg1
hi! link scalaTypeExtension SrceryFg1

hi! link scalaKeyword SrceryRed
hi! link scalaKeywordModifier SrceryRed

hi! link scalaSpecial SrceryCyan
hi! link scalaOperator SrceryFg1

hi! link scalaTypeDeclaration SrceryYellow
hi! link scalaTypeTypePostDeclaration SrceryYellow

hi! link scalaInstanceDeclaration SrceryFg1
hi! link scalaInterpolation SrceryCyan

" }}}
" Markdown: {{{

call s:HL('markdownItalic', s:white, s:none, s:italic)

hi! link markdownH1 SrceryGreenBold
hi! link markdownH2 SrceryGreenBold
hi! link markdownH3 SrceryYellowBold
hi! link markdownH4 SrceryYellowBold
hi! link markdownH5 SrceryYellow
hi! link markdownH6 SrceryYellow

hi! link markdownCode SrceryCyan
hi! link markdownCodeBlock SrceryCyan
hi! link markdownCodeDelimiter SrceryCyan

hi! link markdownBlockquote SrceryGray
hi! link markdownListMarker SrceryGray
hi! link markdownOrderedListMarker SrceryGray
hi! link markdownRule SrceryGray
hi! link markdownHeadingRule SrceryGray

hi! link markdownUrlDelimiter SrceryFg3
hi! link markdownLinkDelimiter SrceryFg3
hi! link markdownLinkTextDelimiter SrceryFg3

hi! link markdownHeadingDelimiter SrceryYellow
hi! link markdownUrl SrceryMagenta
hi! link markdownUrlTitleDelimiter SrceryGreen

call s:HL('markdownLinkText', s:gray, s:none, s:underline)
hi! link markdownIdDeclaration markdownLinkText

" }}}
" Haskell: {{{

" hi! link haskellType SrceryYellow
" hi! link haskellOperators SrceryYellow
" hi! link haskellConditional SrceryCyan
" hi! link haskellLet SrceryYellow
"
hi! link haskellType SrceryFg1
hi! link haskellIdentifier SrceryFg1
hi! link haskellSeparator SrceryFg1
hi! link haskellDelimiter SrceryFg4
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
hi! link jsonBraces SrceryFg1
hi! link jsonString SrceryFg1

" }}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
