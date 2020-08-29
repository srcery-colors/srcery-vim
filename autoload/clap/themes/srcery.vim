" Author: Birger J. Nordolum  <contact+srcery@mindtooth.no>

" Description: Clap theme based on the Srcery color scheme.  The theme
" require some tweaks to make it work.  If you plan on copying or
" building upon this code for your own colorscheme, make sure that you
" are aware of the additional tweaks for Srcery.


let s:save_cpo = &cpoptions
set cpoptions&vim


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

let s:palette.display = { 'ctermbg': s:xgray2[1], 'guibg': s:xgray2[0], 'ctermfg': 'NONE', }

" Let ClapInput, ClapSpinner and ClapSearchText use the same backgound.
let s:bg0 = { 'ctermbg': s:xgray5[1], 'guibg': s:xgray5[0] }
let s:palette.input = s:bg0
let s:palette.spinner = extend({ 'ctermfg': s:bright_orange[1], 'guifg': s:bright_orange[0], 'cterm': 'bold', 'gui': 'bold'}, s:bg0)
let s:palette.search_text = extend({ 'ctermfg': s:bright_white[1], 'guifg': s:bright_white[0], 'cterm': 'bold', 'gui': 'bold' }, s:bg0)

let s:palette.preview = { 'ctermbg': s:xgray4[1], 'guibg': s:xgray4[0] }

let s:palette.current_selection = { 'ctermbg': s:xgray3[1], 'guibg': s:xgray3[0], 'cterm': 'bold', 'gui': 'bold' }
let s:palette.current_selection_sign = { 'ctermfg': s:red[1], 'guifg': s:red[0], 'ctermbg': s:xgray3[1], 'guibg': s:xgray3[0]}

let s:palette.selected = { 'ctermfg': 'NONE', 'guifg': s:bright_blue[0], 'ctermbg': s:xgray3[1], 'guibg': s:xgray3[0] }
let s:palette.selected_sign = { 'ctermfg': s:green[1], 'guifg': s:green[0], 'ctermbg': s:xgray3[1], 'guibg': s:xgray3[0] }

let g:clap#themes#srcery#palette = s:palette

" }}}


let &cpoptions = s:save_cpo
unlet s:save_cpo
