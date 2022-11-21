if srcery#helper#ShouldAbort('xml')
  finish
endif

" XML: {{{

hi! link xmlTag SrceryBlue
hi! link xmlEndTag SrceryBlue
hi! link xmlTagName SrceryBlue
hi! link xmlEqual SrceryBlue
hi! link docbkKeyword SrceryCyanBold

hi! link xmlDocTypeDecl SrceryBrightBlack
hi! link xmlDocTypeKeyword SrceryMagenta
hi! link xmlCdataStart SrceryBrightBlack
hi! link xmlCdataCdata SrceryMagenta
hi! link dtdFunction SrceryBrightBlack
hi! link dtdTagName SrceryMagenta

hi! link xmlAttrib SrceryCyan
hi! link xmlProcessingDelim SrceryBrightBlack
hi! link dtdParamEntityPunct SrceryBrightBlack
hi! link dtdParamEntityDPunct SrceryBrightBlack
hi! link xmlAttribPunct SrceryBrightBlack

hi! link xmlEntity SrceryYellow
hi! link xmlEntityPunct SrceryYellow

" }}}
