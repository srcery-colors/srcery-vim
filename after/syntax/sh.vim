if srcery#helper#ShouldAbort('sh')
  finish
endif

let s:bright_red = g:srcery#palette.bright_red
let s:bright_white = g:srcery#palette.bright_white

" shellscript: {{{

call srcery#helper#Highlight('shParenError', s:bright_white, s:bright_red)
hi! link shCmdSubRegion SrceryWhite
hi! link shArithRegion SrceryWhite
hi! link shArithRegion SrceryWhite
hi! link shQuote SrceryWhite
hi! link shRedir SrceryMagenta
hi! link shOption SrceryBrightYellow
hi! link shCommandSub SrceryBrightRed

" }}}
