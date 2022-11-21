if srcery#helper#ShouldAbort('markdown')
  finish
endif

let s:none = g:srcery#palette.none
let s:bright_white = g:srcery#palette.bright_white
let s:italic = g:srcery#palette.italic
let s:underline = g:srcery#palette.underline

" Markdown: {{{

call srcery#helper#Highlight('markdownItalic', s:bright_white, s:none, s:italic)

hi! link markdownH1 SrceryBrightBlueBold
hi! link markdownH2 SrceryBrightBlueBold
hi! link markdownH3 SrceryBrightYellowBold
hi! link markdownH4 SrceryBrightYellowBold
hi! link markdownH5 SrceryYellowBold
hi! link markdownH6 SrceryYellowBold

hi! link markdownCode SrceryWhite
hi! link markdownCodeBlock SrceryWhite
hi! link markdownCodeDelimiter SrceryWhite

hi! link markdownBlockquote SrceryBrightBlack
hi! link markdownListMarker SrceryBrightBlack
hi! link markdownOrderedListMarker SrceryBrightBlack
hi! link markdownRule SrceryBrightBlack
hi! link markdownHeadingRule SrceryBrightBlack

hi! link markdownUrlDelimiter SrceryBrightBlack
hi! link markdownLinkDelimiter SrceryBrightBlack
hi! link markdownLinkTextDelimiter SrceryBrightBlack

hi! link markdownHeadingDelimiter SrceryBrightBlack
hi! link markdownUrl SrceryBrightGreen
hi! link markdownUrlTitleDelimiter SrceryGreen

call srcery#helper#Highlight('markdownLinkText', s:bright_white, s:none, s:underline)
hi! link markdownIdDeclaration markdownLinkText

" }}}
