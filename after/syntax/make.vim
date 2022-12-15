if srcery#helper#ShouldAbort('make')
  finish
endif

" Make: {{{

hi! link makePreCondit SrceryRed
hi! link makeCommands SrceryBrightWhite
hi! link makeTarget SrceryYellow

" }}}
