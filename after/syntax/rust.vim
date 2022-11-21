if srcery#helper#ShouldAbort('rust')
  finish
endif

" Rust: {{{

"https://github.com/rust-lang/rust.vim/blob/master/syntax/rust.vim
hi! link rustCommentLineDoc SrceryGreen
hi! link rustModPathSep SrceryBrightBlack

" }}}
