if srcery#helper#ShouldAbort('scss')
  finish
endif

runtime! syntax/css.vim

" SASS: {{{

hi! link sassClass SrceryBlue
hi! link sassClassChar SrceryBlue
hi! link sassVariable SrceryCyan
hi! link sassIdChar SrceryBrightBlue
hi! link sassId SrceryBrightBlue

" }}}
