" Author: Birger J. Nordolum  <contact+srcery@mindtooth.no>

" Description: Clap theme based on the Srcery color scheme.  The theme
" require some tweaks to make it work.  If you plan on copying or
" building upon this code for your own colorscheme, make sure that you
" are aware of the additional tweaks for Srcery.

let s:save_cpo = &cpoptions
set cpoptions&vim

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
" Srcery Tweaks {{{

" The following tweaks are done to make sure that the theme works
" properly. Because Srcery has a transparent background as an option,
" some additional actions were taken to ensure that the clap colors look
" right regardless of this setting.

" We need to tweak both the SignColumn and ClapSymbol to set the colors
" correctly. When using the transparent option, we explicitly need to
" change the symbol color.

" Save original SignColumn
let s:original_signcolumn_bg_color = srcery#helper#GetColor('SignColumn', 'bg')


" We use an augroup to load/unload tweaks needed for the theme. Clap
" includes some triggers that we can hook onto.

function! ClapSrceryLoad() abort
	" Set column color to NONE so that clap can control this.
	" Note!  This changes also the normal SignColumn color of the
	" main window.  Might result in unexpected changes.
	highlight SignColumn ctermbg=NONE guibg=NONE

	" Only execute the color change when the variable
	" `g:srcery_transparent_background` set to 1. This is for
	" making the rounded corners display correctly.  Clap read the
	" `Normal` highlight color, but in this case it's not enough,
	" and hence the explicit change.
	if exists('g:srcery_transparent_background')
		let l:clap_symbol_style = 'ctermbg=' .s:black[1]. ' guibg=' .s:black[0]

		execute 'highlight ClapSymbol ' . l:clap_symbol_style
	endif
endfunction

function! ClapSrceryUnload() abort
	" Revert the change made to SignColumn..
	let l:signcolumn = 'ctermbg=' .
		\ (s:original_signcolumn_bg_color[1] ? s:original_signcolumn_bg_color[1] : 'NONE') .
		\' guibg=' .
		\ (s:original_signcolumn_bg_color[0] ? s:original_signcolumn_bg_color[0] : 'NONE')

	execute 'highlight SignColumn ' . l:signcolumn
endfunction

augroup ClapSrcery
  autocmd!

  autocmd User ClapOnEnter   call ClapSrceryLoad()
  autocmd User ClapOnExit    call ClapSrceryUnload()
augroup END

" }}}
" Clap Theme {{{

" The tweaks below is copied from the upstream code, but tweaked to use
" Srcery's colors.
" Upstream: https://github.com/liuchengxu/vim-clap/blob/master/autoload/clap/themes/material_design_dark.vim

let s:palette = {}

let s:palette.display = { 'ctermbg': s:gray2[1], 'guibg': s:gray2[0], 'ctermfg': 'NONE', }

" Let ClapInput, ClapSpinner and ClapSearchText use the same backgound.
let s:bg0 = { 'ctermbg': s:gray5[1], 'guibg': s:gray5[0] }
let s:palette.input = s:bg0
let s:palette.spinner = extend({ 'ctermfg': s:bright_orange[1], 'guifg': s:bright_orange[0], 'cterm': 'bold', 'gui': 'bold'}, s:bg0)
let s:palette.search_text = extend({ 'ctermfg': s:bright_white[1], 'guifg': s:bright_white[0], 'cterm': 'bold', 'gui': 'bold' }, s:bg0)

let s:palette.preview = { 'ctermbg': s:gray4[1], 'guibg': s:gray4[0] }

let s:palette.current_selection = { 'ctermbg': s:gray3[1], 'guibg': s:gray3[0], 'cterm': 'bold', 'gui': 'bold' }
let s:palette.current_selection_sign = { 'ctermfg': s:red[1], 'guifg': s:red[0], 'ctermbg': s:gray3[1], 'guibg': s:gray3[0]}

let s:palette.selected = { 'ctermfg': 'NONE', 'guifg': s:bright_blue[0], 'ctermbg': s:gray3[1], 'guibg': s:gray3[0] }
let s:palette.selected_sign = { 'ctermfg': s:green[1], 'guifg': s:green[0], 'ctermbg': s:gray3[1], 'guibg': s:gray3[0] }

let g:clap#themes#srcery#palette = s:palette

" }}}

let &cpoptions = s:save_cpo
unlet s:save_cpo

" vim: set ts=2 sw=2 tw=78 fdm=marker et :
