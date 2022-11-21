if srcery#helper#ShouldAbort('ruby')
  finish
endif

" Ruby: {{{

hi! link rubyStringDelimiter SrceryGreen
hi! link rubyInterpolationDelimiter SrceryCyan
hi! link rubyDefine Keyword

" }}}
