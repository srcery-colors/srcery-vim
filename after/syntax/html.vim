if srcery#helper#ShouldAbort('html')
  finish
endif

let s:none = g:srcery#palette.none
let s:black = g:srcery#palette.black
let s:bright_white = g:srcery#palette.bright_white

let s:bold = g:srcery#palette.bold
let s:italic = g:srcery#palette.italic
let s:underline = g:srcery#palette.underline

" HTML: {{{


hi! link htmlTagName SrceryBlue
hi! link htmlTag SrceryBrightBlack
hi! link htmlEndTag SrceryBrightBlack
hi! link htmlArg SrceryYellow

hi! link htmlScriptTag SrceryRed
hi! link htmlTagN SrceryBlue
hi! link htmlSpecialTagName SrceryBlue

hi! link javaScript Normal

call srcery#helper#Highlight('htmlLink', s:bright_white, s:none, s:underline)

hi! link htmlSpecialChar SrceryYellow

call srcery#helper#Highlight('htmlBold', s:bright_white, g:srcery_bg, s:bold)
call srcery#helper#Highlight('htmlBoldUnderline', s:bright_white, g:srcery_bg, s:bold . s:underline)
call srcery#helper#Highlight('htmlBoldItalic', s:bright_white, g:srcery_bg, s:bold . s:italic)
call srcery#helper#Highlight('htmlBoldUnderlineItalic', s:bright_white, g:srcery_bg, s:bold . s:underline . s:italic)
call srcery#helper#Highlight('htmlUnderline', s:bright_white, g:srcery_bg, s:underline)
call srcery#helper#Highlight('htmlUnderlineItalic', s:bright_white, g:srcery_bg, s:underline . s:italic)
call srcery#helper#Highlight('htmlItalic', s:bright_white, g:srcery_bg, s:italic)

" }}}
