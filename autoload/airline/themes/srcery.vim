" vim-airline-srcery theme

" Srcery Palette {{{

" Normal Colors
let s:black          = [g:srcery_black, 0]
let s:red            = [g:srcery_red, 1]
let s:green          = [g:srcery_green, 2]
let s:yellow         = [g:srcery_yellow, 3]
let s:blue           = [g:srcery_blue, 4]
let s:magenta        = [g:srcery_magenta, 5]
let s:cyan           = [g:srcery_cyan, 6]
let s:white          = [g:srcery_white, 7]
let s:bright_black   = [g:srcery_bright_black, 8]
let s:bright_red     = [g:srcery_bright_red, 9]
let s:bright_green   = [g:srcery_bright_green, 10]
let s:bright_yellow  = [g:srcery_bright_yellow, 11]
let s:bright_blue    = [g:srcery_bright_blue, 12]
let s:bright_magenta = [g:srcery_bright_magenta, 13]
let s:bright_cyan    = [g:srcery_bright_cyan, 14]
let s:bright_white   = [g:srcery_bright_white, 15]

" xterm colors
let s:orange         = [g:srcery_orange, g:srcery_orange_cterm]
let s:bright_orange  = [g:srcery_bright_orange, g:srcery_bright_orange_cterm]
let s:hard_black     = [g:srcery_hard_black, g:srcery_hard_black_cterm]
let s:gray1          = [g:srcery_gray1, g:srcery_gray1_cterm]
let s:gray2          = [g:srcery_gray2, g:srcery_gray2_cterm]
let s:gray3          = [g:srcery_gray3, g:srcery_gray3_cterm]
let s:gray4          = [g:srcery_gray4, g:srcery_gray4_cterm]
let s:gray5          = [g:srcery_gray5, g:srcery_gray5_cterm]
let s:gray6          = [g:srcery_gray6, g:srcery_gray6_cterm]

"}}}
" Theme Initializing {{{
 
let g:airline#themes#srcery#palette = {}
let s:modified = { 'airline_c': [ s:orange[0] , '' , s:orange[1] , '' , '' ] }

" }}}
" Mode Config {{{

" Command Mode
let s:c1 = [s:black[0], s:bright_white[0], s:black[1], s:bright_white[1]]
let s:c2 = [s:bright_white[0], s:gray3[0], s:bright_white[1], s:gray3[1]]
let s:c3 = [s:bright_white[0], s:gray1[0], s:bright_white[1], s:gray1[1]]
let g:airline#themes#srcery#palette.commandline = airline#themes#generate_color_map(s:c1, s:c2, s:c3)
let g:airline#themes#srcery#palette.commandline_modified = s:modified
let g:airline#themes#srcery#palette.commandline_paste = s:modified

" Normal Mode
let s:n1 = [s:bright_white[0], s:gray4[0], s:bright_white[1], s:gray4[1]]
let s:n2 = [s:bright_white[0], s:gray3[0], s:bright_white[1], s:gray3[1]]
let s:n3 = [s:bright_white[0], s:gray1[0], s:bright_white[1], s:gray1[1]]
let g:airline#themes#srcery#palette.normal = airline#themes#generate_color_map(s:n1, s:n2, s:n3)
let g:airline#themes#srcery#palette.normal_modified = s:modified
let g:airline#themes#srcery#palette.normal_paste = s:modified

" Inactive Mode
let s:in1 = [s:gray6[0], s:gray4[0], s:bright_black[1], s:gray4[1]]
let s:in2 = [s:gray6[0], s:gray3[0], s:bright_black[1], s:gray3[1]]
let s:in3 = [s:gray6[0], s:gray2[0], s:bright_black[1], s:gray2[1]]
let g:airline#themes#srcery#palette.inactive = airline#themes#generate_color_map(s:in1, s:in2, s:in3)
let g:airline#themes#srcery#palette.inactive_modified = s:modified

" Insert Mode
let s:i1 = [s:black[0], s:bright_white[0], s:black[1], s:bright_white[1]]
let s:i2 = [s:black[0], s:bright_black[0], s:black[1], s:bright_black[1]]
let s:i3 = [s:bright_white[0], s:gray1[0], s:bright_white[1] ,s:gray1[1]]
let g:airline#themes#srcery#palette.insert = airline#themes#generate_color_map(s:i1, s:i2, s:i3)
let g:airline#themes#srcery#palette.insert_modified = s:modified

" Replace Mode
let s:r1 = [s:bright_white[0], s:bright_red[0], s:bright_white[1], s:bright_red[1]]
let s:r2 = [s:black[0], s:bright_black[0], s:black[1], s:bright_black[1]]
let s:r3 = [s:bright_white[0], s:gray1[0], s:bright_white[1], s:gray1[1]]
let g:airline#themes#srcery#palette.replace = airline#themes#generate_color_map(s:r1, s:r2, s:r3)
let g:airline#themes#srcery#palette.replace_modified = s:modified

" Terminal Mode
let s:t1 = [s:black[0], s:yellow[0], s:black[1], s:yellow[1]]
let s:t2 = [s:bright_white[0], s:gray3[0], s:bright_white[1], s:gray3[1]]
let s:t3 = [s:bright_white[0], s:gray1[0], s:bright_white[1], s:gray1[1]]
let g:airline#themes#srcery#palette.terminal = airline#themes#generate_color_map(s:t1, s:t2, s:t3)
let g:airline#themes#srcery#palette.terminal.airline_term = s:t3

" Visual Mode
let s:v1 = [s:black[0], s:cyan[0], s:black[1], s:cyan[1]]
let s:v2 = [s:bright_white[0], s:gray5[0], s:bright_white[1], s:gray5[1]]
let s:v3 = [s:bright_white[0], s:gray1[0], s:bright_white[1], s:gray1[1]]
let g:airline#themes#srcery#palette.visual = airline#themes#generate_color_map(s:v1, s:v2, s:v3)
let g:airline#themes#srcery#palette.visual_modified = s:modified

" }}}
" Plugin Settings {{{

" ctrlp.vim
if get(g:, 'loaded_ctrlp', 0)
  let s:cp1 = [s:bright_white[0], s:gray2[0], s:bright_white[1], s:gray2[1]]
  let s:cp2 = [s:bright_white[0], s:gray5[0], s:bright_white[1], s:gray5[1]]
  let s:cp3 = [s:bright_white[0], s:gray3[0], s:bright_white[1], s:gray3[1]]
  let g:airline#themes#srcery#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(s:cp1, s:cp2, s:cp3)
endif

" }}}

" vim: set ts=2 sw=2 tw=78 fdm=marker et :
