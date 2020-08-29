" vim-airline-srcery theme
" vim: expandtab shiftwidth=2 tabstop=2 :


" Srcery Palette {{{

" Normal Colors
let s:black          = srcery#helper#GetColor('SrceryBlack')
let s:red            = srcery#helper#GetColor('SrceryRed')
let s:green          = srcery#helper#GetColor('SrceryGreen')
let s:yellow         = srcery#helper#GetColor('SrceryYellow')
let s:blue           = srcery#helper#GetColor('SrceryBlue')
let s:magenta        = srcery#helper#GetColor('SrceryMagenta')
let s:cyan           = srcery#helper#GetColor('SrceryCyan')
let s:white          = srcery#helper#GetColor('SrceryWhite')

" Bright Colors
let s:bright_black   = srcery#helper#GetColor('SrceryBrightBlack')
let s:bright_red     = srcery#helper#GetColor('SrceryBrightRed')
let s:bright_green   = srcery#helper#GetColor('SrceryBrightGreen')
let s:bright_yellow  = srcery#helper#GetColor('SrceryBrightYellow')
let s:bright_blue    = srcery#helper#GetColor('SrceryBrightBlue')
let s:bright_magenta = srcery#helper#GetColor('SrceryBrightMagenta')
let s:bright_cyan    = srcery#helper#GetColor('SrceryBrightCyan')
let s:bright_white   = srcery#helper#GetColor('SrceryBrightWhite')

" Extra Colors
let s:orange         = srcery#helper#GetColor('SrceryOrange')
let s:bright_orange  = srcery#helper#GetColor('SrceryBrightOrange')
let s:hard_black     = srcery#helper#GetColor('SrceryHardBlack')
let s:xgray1         = srcery#helper#GetColor('SrceryXgray1')
let s:xgray2         = srcery#helper#GetColor('SrceryXgray2')
let s:xgray3         = srcery#helper#GetColor('SrceryXgray3')
let s:xgray4         = srcery#helper#GetColor('SrceryXgray4')
let s:xgray5         = srcery#helper#GetColor('SrceryXgray5')
let s:xgray6         = srcery#helper#GetColor('SrceryXgray6')

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
