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
" -----------------------------------------------------------------------------

" original source: https://github.com/morhetz/gruvbox/blob/master/colors/gruvbox.vim#L374
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
" UI groups: {{{
" -----------------------------------------------------------------------------

call s:HL('ColorColumn',  s:none, s:xgray2)
call s:HL('Conceal', s:blue, s:none)
call s:HL('Cursor', s:black, s:yellow)
call s:HL('CursorLine',   s:none, s:xgray2)
call s:HL('CursorLineNr', s:yellow, g:srcery_bg)
call s:HL('Directory', s:green, s:none, s:bold)
call s:HL('ErrorMsg', s:bright_white, s:red)
call s:HL('FoldColumn', s:bright_black, g:srcery_bg)
call s:HL('Folded', s:bright_black, g:srcery_bg, s:italic)
call s:HL('LineNr', s:bright_black)
call s:HL('Link', s:white, s:none, s:underline)
call s:HL('ModeMsg', s:yellow, s:none, s:bold)
call s:HL('MoreMsg', s:yellow, s:none, s:bold)
call s:HL('NonText', s:xgray4)
call s:HL('Normal', s:bright_white, g:srcery_bg)
call s:HL('NormalFloat',  s:none, s:xgray1)
call s:HL('Pmenu', s:bright_white, s:xgray2)
call s:HL('PmenuSbar', s:none, g:srcery_bg)
call s:HL('PmenuSel', s:bright_white, s:blue, s:bold)
call s:HL('PmenuThumb', s:none, s:orange)
call s:HL('Question', s:orange, s:none, s:bold)
call s:HL('SignColumn', s:none, g:srcery_bg)
call s:HL('SpecialKey', s:yellow)
call s:HL('SpellBad',   s:none, s:none, s:undercurl, s:blue)
call s:HL('SpellCap',   s:green, s:none, s:bold . s:italic)
call s:HL('SpellLocal', s:none, s:none, s:undercurl, s:cyan)
call s:HL('SpellRare',  s:none, s:none, s:undercurl, s:magenta)
call s:HL('StatusLine',   s:bright_white, s:xgray2)
call s:HL('StatusLineNC', s:bright_black, g:srcery_bg, s:underline)
call s:HL('TabLineFill', s:bright_black, s:xgray2)
call s:HL('TabLineSel', s:bright_white, s:xgray5)
call s:HL('Title', s:green, s:none, s:bold)
call s:HL('Underlined', s:none, s:none, s:underline)
call s:HL('VertSplit', s:bright_white, g:srcery_bg)
call s:HL('WarningMsg', s:red, s:none, s:bold)
call s:HL('WildMenu', s:blue, g:srcery_bg, s:bold)
call s:HL('WinSeparator', s:none, s:xgray1)
hi! link CursorColumn CursorLine
hi! link iCursor Cursor
hi! link lCursor Cursor
hi! link TabLine TabLineFill
hi! link vCursor Cursor
hi! link VisualNOS Visual

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
  call s:HL('DiagnosticError', s:bright_red)
  call s:HL('DiagnosticHint', s:bright_cyan)
  call s:HL('DiagnosticInfo', s:bright_green)
  call s:HL('DiagnosticUnderlineError', s:bright_red, s:none, s:undercurl)
  call s:HL('DiagnosticUnderlineHint', s:bright_cyan, s:none, s:undercurl)
  call s:HL('DiagnosticUnderlineInfo', s:bright_green, s:none, s:undercurl)
  call s:HL('DiagnosticUnderlineWarn', s:bright_yellow, s:none, s:undercurl)
  call s:HL('DiagnosticWarn', s:bright_yellow)

  " Neovim Support
  call s:HL('healthError', s:red)
  call s:HL('healthSuccess', s:green)
  call s:HL('healthWarning', s:orange)
  call s:HL('TermCursorNC', s:xgray1, s:none)
endif

" }}}
" Base groups: {{{
" -----------------------------------------------------------------------------

call s:HL('Boolean', s:bright_magenta)
call s:HL('Character', s:green)
call s:HL('Comment', s:bright_black, s:none, s:italic)
call s:HL('Conceal', s:none, s:none)
call s:HL('Conditional', s:red)
call s:HL('Constant', s:bright_magenta)
call s:HL('Decorator', s:bright_orange)
call s:HL('Define', s:orange)
call s:HL('Delimiter', s:bright_black)
call s:HL('Error', s:bright_white, s:red, s:bold)
call s:HL('Exception', s:red)
call s:HL('Float', s:bright_magenta)
call s:HL('Function', s:yellow)
call s:HL('Identifier', s:bright_white)
call s:HL('Include', s:cyan)
call s:HL('Keyword', s:red)
call s:HL('Label', s:bright_red)
call s:HL('Member', s:bright_blue)
call s:HL('Number', s:bright_magenta)
call s:HL('Operator', s:white)
call s:HL('PreCondit', s:cyan)
call s:HL('PreProc', s:cyan)
call s:HL('Repeat', s:yellow)
call s:HL('Special', s:blue)
call s:HL('SpecialChar', s:yellow, s:none)
call s:HL('SpecialComment', s:bright_cyan, s:none, s:italic)
call s:HL('Statement', s:red)
call s:HL('StorageClass', s:bright_blue)
call s:HL('String', s:bright_green)
call s:HL('Structure', s:cyan)
call s:HL('Tag', s:blue)
call s:HL('Todo', s:bright_orange, s:none, s:bold . s:italic)
call s:HL('Type', s:bright_blue, s:none, s:italic)
call s:HL('Typedef', s:magenta)
hi! link Annotation Decorator
hi! link Macro Define
hi! link PreCondit PreProc
hi! link Variable Identifier

" heading groups
call s:HL('SrceryH1', s:bright_blue, s:xgray1, s:bold)
call s:HL('SrceryH2', s:yellow, s:xgray1, s:bold)
call s:HL('SrceryH3', s:bright_yellow, s:xgray1, s:bold)
call s:HL('SrceryH4', s:green, s:xgray1, s:bold)
call s:HL('SrceryH5', s:magenta, s:xgray1, s:bold)
call s:HL('SrceryH6', s:bright_magenta, s:xgray1, s:bold)

" }}}
" Languages: {{{
" -----------------------------------------------------------------------------

" nvim-treesitter
if has('nvim')
  hi! link @delimiter Delimiter
  hi! link @markup.heading.1.markdown SrceryH1
  hi! link @markup.heading.2.markdown SrceryH2
  hi! link @markup.heading.3.markdown SrceryH3
  hi! link @markup.heading.4.markdown SrceryH4
  hi! link @markup.heading.5.markdown SrceryH5
  hi! link @markup.heading.6.markdown SrceryH6
  hi! link @markup.link Link
  hi! link @markup.link.url String
  hi! link @tag.attribute TSTagAttribute
  hi! link @text.uri String
  hi! link @type Type
  hi! link @variable Variable
  hi! link @variable.member Member
  hi! link TSAnnotation Annotation
  hi! link TSAttribute Function
  hi! link TSConstBuiltin Constant
  hi! link TSConstructor Function
  hi! link TSEmphasis Italic
  hi! link TSFuncBuiltin Function
  hi! link TSFuncMacro Function
  hi! link TSStringRegex SpecialChar
  hi! link TSStrong Bold
  hi! link TSStructure Structure
  hi! link TSTagAttribute Function
  hi! link TSTagDelimiter TSTag
  hi! link TSUnderline Underline
  hi! link TSVariable Variable
  hi! link TSVariableBuiltin Keyword
endif

" Diffs:
call s:HL('DiffAdd',    s:green)
call s:HL('DiffChange', s:cyan)
call s:HL('DiffDelete', s:red)
call s:HL('DiffText',   s:yellow)

" legacy groups
call s:HL('diffFile', s:orange)
call s:HL('diffLine', s:blue)
call s:HL('diffNewFile', s:yellow)
hi! link diffAdded DiffAdd
hi! link diffChanged DiffChange
hi! link diffRemoved DiffDelete

" Vim:
call s:HL('vimAugroup', s:green)
call s:HL('vimCommentTitle', s:white, s:none, s:bold . s:italic)
call s:HL('vimNotation', s:green)
hi! link vimFunc Function
hi! link vimFunction Function
hi! link vimUserFunc Function

" CSS:
call s:HL('cssAttributeSelector', s:green)
call s:HL('cssStringQ', s:green)
hi! link cssAttr Keyword
hi! link cssBraces Delimiter
hi! link cssClassName cssDefinition
hi! link cssColor Number
hi! link cssDefinition Type
hi! link cssFunctionComma Delimiter
hi! link cssIdentifier Identifier
hi! link cssProp cssDefinition
hi! link cssPseudoClass cssDefinition
hi! link cssPseudoClassId cssPseudoClass
hi! link cssVendor Keyword

" Elixir
call s:HL('elixirInterpolationDelimiter', s:cyan)
call s:HL('elixirStringDelimiter', s:green)
hi! link elixirDocString Comment

" Go
call s:HL('goBuiltins', s:yellow)
hi! link goConstants Keyword

" Haskell
hi! link haskellPragma haskellPreProc
hi! link haskellPreProc PrePrec
hi! link haskellType Type

" HTML
call s:HL('htmlBold', s:none, s:none, s:bold)
call s:HL('htmlItalic', s:none, s:none, s:italic)
hi! link htmlArg Function
hi! link htmlEndTag htmlTag
hi! link htmlH1 SrceryH1
hi! link htmlH2 SrceryH2
hi! link htmlH3 SrceryH3
hi! link htmlH4 SrceryH4
hi! link htmlH5 SrceryH5
hi! link htmlH6 SrceryH6
hi! link htmlLink Link
hi! link htmlSpecialChar SpecialChar
hi! link htmlTag Special
hi! link htmlTagN htmlTag
hi! link htmlTagName htmlTag

" Java:
call s:HL('javaDocTags', s:green)
hi! link javaCommentTitle Comment
hi! link javaCommentTitle vimCommentTitle
hi! link javaParen Delimiter

" JavaScript:
hi! link javaScriptBraces Delimiter
hi! link javaScriptIdentifier Keyword
hi! link javaScriptNumber Number
hi! link jsArrowFunction Operator
hi! link jsBrackets Delimiter
hi! link jsClassMethodType Keyword
hi! link jsDocTags Keyword
hi! link jsDocType Type
hi! link jsFuncArgOperator Operator
hi! link jsFuncCall Function
hi! link jsFuncParens Delimiter
hi! link jsNoise Delimiter
hi! link jsNull Constant
hi! link jsPrototype Keyword
hi! link jsRegexpString SpecialChar
hi! link jsTemplateBraces Special
hi! link jsThis Special
hi! link jsUndefined Constant

" JSON:
call s:HL('jsonKeyword', s:green)

" Lua
hi! link luaFunc Function

" Markdown
call s:HL('markdownBold', s:none, s:none, s:bold)
call s:HL('markdownItalic', s:none, s:none, s:italic)
call s:HL('mkdFootnote', s:cyan)
hi! link markdownCodeBlock Special
hi! link markdownH1 SrceryH1
hi! link markdownH2 SrceryH2
hi! link markdownH3 SrceryH3
hi! link markdownH4 SrceryH4
hi! link markdownH5 SrceryH5
hi! link markdownH6 SrceryH6
hi! link markdownHeadingDelimiter Keyword
hi! link markdownIdDelimiter Keyword
hi! link markdownItalicDelimiter Delimiter
hi! link markdownLinkDelimiter Delimiter
hi! link markdownLinkText Link
hi! link markdownLinkTextDelimiter Delimiter
hi! link markdownListMarker Keyword
hi! link markdownRule Keyword
hi! link markdownUrl String
hi! link mkdCode Special
hi! link mkdLineBreak Delimiter
hi! link mkdRule Special

" MoonScript:
hi! link moonExtendedOp Operator
hi! link moonFunction Function
hi! link moonObject Structure
hi! link moonSpecialOp Operator

" Python
hi! link pythonBuiltin Type
hi! link pythonBuiltinObj Type
hi! link pythonBuiltinObject Type
hi! link pythonBuiltinType Type
hi! link pythonEscape SpecialChar
hi! link pythonExClass Type
hi! link pythonNone Type
hi! link pythonRun Comment

" Ruby
" rubyConstant
" rubySymbol
hi! link rubyAttribute Identifier
hi! link rubyBlockParameterList Operator
hi! link rubyInterpolationDelimiter Keyword
hi! link rubyKeywordAsMethod Function
hi! link rubyLocalVariableOrMethod Function
hi! link rubyPseudoVariable Keyword
hi! link rubyRegexp SpecialChar

" Rust
hi! link rustCommentLineDoc Comment
hi! link rustModPathSep Delimiter

" SASS:
call s:HL('sassId', s:green, s:none, s:underline)
hi! link sassAmpersand Keyword
hi! link sassClassChar Delimiter
hi! link sassControl Keyword
hi! link sassControlLine Keyword
hi! link sassExtend Keyword
hi! link sassFor Keyword
hi! link sassFunctionDecl Keyword
hi! link sassFunctionName Function
hi! link sassidChar sassId
hi! link sassInclude SpecialChar
hi! link sassMixing SpecialChar
hi! link sassMixinName Function
hi! link sassReturn Keyword

" Shellscript:
hi! link shCmdParenRegion Delimiter
hi! link shCmdSubRegion Delimiter
hi! link shDerefSimple Identifier
hi! link shDerefVar Identifier

" XML:
call s:HL('xmlCdataStart', s:bright_black)
call s:HL('xmlAttrib', s:cyan)
hi! link xmlAttribPunct Delimiter
hi! link xmlCdata Comment
hi! link xmlCdataCdata xmlCdataStart
hi! link xmlCdataEnd xmlCdataStart
hi! link xmlEndTag xmlTagName
hi! link xmlEqual   Operator
hi! link xmlProcessingDelim Keyword
hi! link xmlTag     Delimiter
hi! link xmlTagName Keyword
hi! link xmlTagName Statement

" }}}
" Plugins: {{{
" -----------------------------------------------------------------------------

if has('nvim')
  " Neovim LSP:
  " for backward compatibility with neovim v0.5.x
  if has('nvim-0.5')
    hi! link LspDiagnosticsDefaultError DiagnosticError
    hi! link LspDiagnosticsDefaultHint DiagnosticHint
    hi! link LspDiagnosticsDefaultInformation DiagnosticInfo
    hi! link LspDiagnosticsDefaultWarning DiagnosticWarn
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
  call s:HL('NvimPagerFG_black_BG_', s:black)
  call s:HL('NvimPagerFG_red_BG_', s:red)
  call s:HL('NvimPagerFG_green_BG_', s:green)
  call s:HL('NvimPagerFG_yellow_BG_', s:yellow)
  call s:HL('NvimPagerFG_blue_BG_', s:blue)
  call s:HL('NvimPagerFG_magenta_BG_', s:magenta)
  call s:HL('NvimPagerFG_cyan_BG_', s:magenta)
  call s:HL('NvimPagerFG_white_BG_', s:magenta)

  " Are these suppose to be bright variant, or does it mean literally bold?
  call s:HL('NvimPagerFG_black_BG__bold', s:black, s:none, s:bold)
  call s:HL('NvimPagerFG_red_BG__bold', s:red, s:none, s:bold)
  call s:HL('NvimPagerFG_green_BG__bold', s:green, s:none, s:bold)
  call s:HL('NvimPagerFG_yellow_BG__bold', s:yellow, s:none, s:bold)
  call s:HL('NvimPagerFG_blue_BG__bold', s:blue, s:none, s:bold)
  call s:HL('NvimPagerFG_magenta_BG__bold', s:magenta, s:none, s:bold)
  call s:HL('NvimPagerFG_cyan_BG__bold', s:cyan, s:none, s:bold)
  call s:HL('NvimPagerFG_white_BG__bold', s:white, s:none, s:bold)
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
call s:HL('GitGutterAdd', s:green)
call s:HL('GitGutterChange', s:yellow)
call s:HL('GitGutterChangeDelete', s:yellow)
call s:HL('GitGutterDelete', s:red)

" Ale:
call s:HL('ALEError', s:none, s:none, s:undercurl, s:red)
call s:HL('ALEErrorSign', s:red)
call s:HL('ALEInfo', s:none, s:none, s:undercurl, s:blue)
call s:HL('ALEInfoSign', s:blue)
call s:HL('ALEWarning', s:none, s:none, s:undercurl, s:yellow)
call s:HL('ALEWarningSign', s:yellow)

" vim-indent-guides:
call s:HL('IndentGuidesEven', s:none, s:xgray3)
call s:HL('IndentGuidesOdd',  s:none, s:xgray4)

" vim-startify:
hi! link StartifyBracket Comment
hi! link StartifyFile Normal
hi! link StartifyFooter Normal
hi! link StartifyHeader Type
hi! link StartifyNumber Statement
hi! link StartifyPath String
hi! link StartifySection Identifier
hi! link StartifySlash Normal
hi! link StartifySpecial Comment

" fzf:
call s:HL('fzf1', s:magenta, s:xgray2)
call s:HL('fzf2', s:bright_green, s:xgray2)
call s:HL('fzf3', s:bright_white, s:xgray2)

" coc.nvim:
call s:HL('CocErrorHighlight', s:none, s:none, s:undercurl, s:red)
call s:HL('CocErrorSign', s:red)
call s:HL('CocHintHighlight', s:none, s:none, s:undercurl, s:blue)
call s:HL('CocHintSign', s:blue)
call s:HL('CocInfoHighlight', s:none, s:none, s:undercurl, s:yellow)
call s:HL('CocInfoSign', s:yellow)
call s:HL('CocWarningHighlight', s:none, s:none, s:undercurl, s:bright_orange)
call s:HL('CocWarningSign', s:bright_orange)

" CtrlP:
hi! link CtrlPBufferHid Normal
hi! link CtrlPMatch Keyword

" NERDTree:
hi! link NERDTreeDirSlash Keyword
hi! link NERDTreeExecFile Macro
hi! link NERDTreeHelp Comment

" Telescope:
call s:HL('TelescopeNormal', s:white)

" GitCommit:
call s:HL('gitcommitDiscardedFile', s:red)
call s:HL('gitcommitSelectedFile', s:green)

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
