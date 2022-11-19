if srcery#helper#ShouldAbort('gitcommit')
  finish
endif

" GitCommit: "{{{

hi! link gitcommitSelectedFile SrceryGreen
hi! link gitcommitDiscardedFile SrceryRed

" }}}
