if srcery#helper#ShouldAbort('vim')
  finish
endif

let s:none = g:srcery#palette.none
let s:bright_white = g:srcery#palette.bright_white
let s:bold = g:srcery#palette.bold
let s:italic = g:srcery#palette.italic

" Vim: {{{

call srcery#helper#Highlight('vimCommentTitle', s:bright_white, s:none, s:bold . s:italic)

hi! link vimNotation SrceryYellow
hi! link vimBracket SrceryYellow
hi! link vimMapModKey SrceryYellow
hi! link vimFuncSID SrceryBrightWhite
hi! link vimSetSep SrceryBrightWhite
hi! link vimSep SrceryBrightWhite
hi! link vimContinue SrceryBrightWhite

" }}}
