" -----------------------------------------------------------------------------
" File: helper.vim
" Description: Srcery colorscheme helpers functions
" Authors: Daniel Berg <mail@roosta.sh>, Birger J. Nordolum  <contact+srcery@mindtooth.no>
" Last Modified: 2020-08-27
" -----------------------------------------------------------------------------

" Helper to get a source color defined in colorscheme
function! srcery#helper#GetColor(group, ...) abort
  " Arguments: group, what

  " optionally pass a 'what' argument, defaults to 'fg'
  if a:0 > 0
    let l:what = a:1
  else
    let l:what = 'fg'
  endif

  let l:gui_color = synIDattr(hlID(a:group), l:what, 'gui')
  let l:term_color = synIDattr(hlID(a:group), l:what, 'cterm')

  return [ l:gui_color, l:term_color ]
endfunction
