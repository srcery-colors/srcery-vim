" vim-airline-srcery theme
" vim: expandtab shiftwidth=2 tabstop=2 :


" Helper Functions {{{

function! s:GetHighlightColor(group, type) abort
  if a:type ==? 'fg'
    let l:gui_color = synIDattr(hlID(a:group), 'fg', 'gui')
    let l:term_color = synIDattr(hlID(a:group), 'fg', 'cterm')
  elseif a:type ==? 'bg'
    let l:gui_color = synIDattr(hlID(a:group), 'bg', 'gui')
    let l:term_color = synIDattr(hlID(a:group), 'bg', 'cterm')
  endif

  return [ l:gui_color, l:term_color ]
endfunction

 " }}}
" Srcery Palette {{{

" Normal Colors
let s:black          = s:GetHighlightColor('SrceryBlack', 'fg')
let s:red            = s:GetHighlightColor('SrceryRed', 'fg')
let s:green          = s:GetHighlightColor('SrceryGreen', 'fg')
let s:yellow         = s:GetHighlightColor('SrceryYellow', 'fg')
let s:blue           = s:GetHighlightColor('SrceryBlue', 'fg')
let s:magenta        = s:GetHighlightColor('SrceryMagenta', 'fg')
let s:cyan           = s:GetHighlightColor('SrceryCyan', 'fg')
let s:white          = s:GetHighlightColor('SrceryWhite', 'fg')

" Bright Colors
let s:bright_black   = s:GetHighlightColor('SrceryBrightBlack', 'fg')
let s:bright_red     = s:GetHighlightColor('SrceryBrightRed', 'fg')
let s:bright_green   = s:GetHighlightColor('SrceryBrightGreen', 'fg')
let s:bright_yellow  = s:GetHighlightColor('SrceryBrightYellow', 'fg')
let s:bright_blue    = s:GetHighlightColor('SrceryBrightBlue', 'fg')
let s:bright_magenta = s:GetHighlightColor('SrceryBrightMagenta', 'fg')
let s:bright_cyan    = s:GetHighlightColor('SrceryBrightCyan', 'fg')
let s:bright_white   = s:GetHighlightColor('SrceryBrightWhite', 'fg')

" Extra Colors
let s:orange         = s:GetHighlightColor('SrceryOrange', 'fg')
let s:bright_orange  = s:GetHighlightColor('SrceryBrightOrange', 'fg')
let s:hard_black     = s:GetHighlightColor('SrceryHardBlack', 'fg')
let s:xgray1         = s:GetHighlightColor('SrceryXgray1', 'fg')
let s:xgray2         = s:GetHighlightColor('SrceryXgray2', 'fg')
let s:xgray3         = s:GetHighlightColor('SrceryXgray3', 'fg')
let s:xgray4         = s:GetHighlightColor('SrceryXgray4', 'fg')
let s:xgray5         = s:GetHighlightColor('SrceryXgray5', 'fg')
let s:xgray6         = s:GetHighlightColor('SrceryXgray6', 'fg')

"}}}


" Theme Initializing {{{
let g:airline#themes#srcery#palette = {}
let s:modified = { 'airline_c': [ s:orange[0] , '' , s:orange[1] , '' , '' ] }

" }}}


" Mode Config {{{

" Command Mode
let s:c1 = [ s:black[0]        , s:bright_white[0] , s:black[1]        , s:bright_white[1] ]
let s:c2 = [ s:bright_white[0] , s:xgray3[0]       , s:bright_white[1] , s:xgray3[1]       ]
let s:c3 = [ s:bright_white[0] , s:xgray1[0] , s:bright_white[1] , s:xgray1[1] ]
let g:airline#themes#srcery#palette.commandline = airline#themes#generate_color_map(s:c1, s:c2, s:c3)
let g:airline#themes#srcery#palette.commandline_modified = s:modified
let g:airline#themes#srcery#palette.commandline_paste = s:modified

" Normal Mode
let s:n1 = [ s:bright_white[0] , s:xgray4[0]       , s:bright_white[1] , s:xgray4[1]       ]
let s:n2 = [ s:bright_white[0] , s:xgray3[0]       , s:bright_white[1] , s:xgray3[1]       ]
let s:n3 = [ s:bright_white[0] , s:xgray1[0] , s:bright_white[1] , s:xgray1[1] ]
let g:airline#themes#srcery#palette.normal = airline#themes#generate_color_map(s:n1, s:n2, s:n3)
let g:airline#themes#srcery#palette.normal_modified = s:modified
let g:airline#themes#srcery#palette.normal_paste = s:modified

" Inactive Mode
let s:in1 = [ s:xgray6[0] , s:xgray4[0] , s:bright_black[1] , s:xgray4[1] ]
let s:in2 = [ s:xgray6[0] , s:xgray3[0] , s:bright_black[1] , s:xgray3[1] ]
let s:in3 = [ s:xgray6[0] , s:xgray2[0] , s:bright_black[1] , s:xgray2[1] ]
let g:airline#themes#srcery#palette.inactive = airline#themes#generate_color_map(s:in1, s:in2, s:in3)
let g:airline#themes#srcery#palette.inactive_modified = s:modified

" Insert Mode
let s:i1 = [ s:black[0]        , s:bright_white[0] , s:black[1]        , s:bright_white[1] ]
let s:i2 = [ s:black[0]        , s:bright_black[0]        , s:black[1]        , s:bright_black[1]        ]
let s:i3 = [ s:bright_white[0] , s:xgray1[0] , s:bright_white[1] , s:xgray1[1] ]
let g:airline#themes#srcery#palette.insert = airline#themes#generate_color_map(s:i1, s:i2, s:i3)
let g:airline#themes#srcery#palette.insert_modified = s:modified

" Replace Mode
let s:r1  = [ s:bright_white[0] , s:bright_red[0]   , s:bright_white[1] , s:bright_red[1]   ]
let s:r2  = [ s:black[0]        , s:bright_black[0]        , s:black[1]        , s:bright_black[1]        ]
let s:r3  = [ s:bright_white[0] , s:xgray1[0] , s:bright_white[1] , s:xgray1[1] ]
let g:airline#themes#srcery#palette.replace = airline#themes#generate_color_map(s:r1, s:r2, s:r3)
let g:airline#themes#srcery#palette.replace_modified = s:modified

" Terminal Mode
let s:t1 = [ s:black[0]        , s:yellow[0]       , s:black[1]        , s:yellow[1]       ]
let s:t2 = [ s:bright_white[0] , s:xgray3[0]       , s:bright_white[1] , s:xgray3[1]       ]
let s:t3 = [ s:bright_white[0] , s:xgray1[0] , s:bright_white[1] , s:xgray1[1] ]
let g:airline#themes#srcery#palette.terminal = airline#themes#generate_color_map(s:t1, s:t2, s:t3)
let g:airline#themes#srcery#palette.terminal.airline_term = s:t3

" Visual Mode
let s:v1  = [ s:black[0]        , s:cyan[0]         , s:black[1]        , s:cyan[1]         ]
let s:v2  = [ s:bright_white[0] , s:xgray5[0]       , s:bright_white[1] , s:xgray5[1]       ]
let s:v3  = [ s:bright_white[0] , s:xgray1[0] , s:bright_white[1] , s:xgray1[1] ]
let g:airline#themes#srcery#palette.visual = airline#themes#generate_color_map(s:v1, s:v2, s:v3)
let g:airline#themes#srcery#palette.visual_modified = s:modified

" }}}


" Plugin Settings {{{

" ctrlp.vim
if get(g:, 'loaded_ctrlp', 0)
  let s:cp1 = [ s:bright_white[0] , s:xgray2[0] , s:bright_white[1] , s:xgray2[1] ]
  let s:cp2 = [ s:bright_white[0] , s:xgray5[0] , s:bright_white[1] , s:xgray5[1] ]
  let s:cp3 = [ s:bright_white[0] , s:xgray3[0] , s:bright_white[1] , s:xgray3[1] ]

  let g:airline#themes#srcery#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(s:cp1, s:cp2, s:cp3)
endif

" }}}
