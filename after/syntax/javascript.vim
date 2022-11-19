if srcery#helper#ShouldAbort('javascript')
  finish
endif

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
