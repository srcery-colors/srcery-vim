if srcery#helper#ShouldAbort('javascript')
  finish
endif

" JavaScript: {{{

hi! link javaScriptMember SrceryBlue
hi! link javaScriptNull SrceryMagenta
hi! link javasCriptParens SrceryWhite
hi! link javaScriptBraces SrceryWhite
hi! link javaScriptReserved SrceryOrange

" }}}
" YAJS: {{{

hi! link javascriptFuncArg Normal
hi! link javascriptDocComment SrceryGreen
hi! link javascriptArrayMethod Function
hi! link javascriptReflectMethod Function
hi! link javascriptStringMethod Function
hi! link javascriptObjectMethod Function
hi! link javascriptObjectStaticMethod Function
hi! link javascriptObjectLabel SrceryBlue
hi! link javascriptProp SrceryBlue
hi! link javascriptVariable SrceryBrightBlue
hi! link javascriptFuncKeyword SrceryBrightRed
hi! link javascriptFunctionMethod SrceryYellow
hi! link javascriptReturn SrceryBrightRed
hi! link javascriptEndColons SrceryWhite

" }}}
" pangloss/vim-javascript {{{

hi! link jsFunction SrceryRed
hi! link jsImport SrceryRed
hi! link jsObjectSeparator SrceryWhite
hi! link jsParens SrceryWhite
hi! link jsFuncParens SrceryWhite
hi! link jsNoise SrceryWhite
hi! link jsEnvComment SrceryBrightBlack
hi! link jsOperator SrceryBrightCyan

" }}}

" vim: set ts=2 sw=2 tw=78 fdm=marker et :
