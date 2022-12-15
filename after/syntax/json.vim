if srcery#helper#ShouldAbort('json')
  finish
endif

" JSON: {{{

hi! link jsonKeyword SrceryGreen
hi! link jsonQuote SrceryGreen
hi! link jsonBraces SrceryBlue
hi! link jsonString SrceryBlue

" }}}
