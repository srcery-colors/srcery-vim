" Headless validation and resolved-highlight capture for Srcery Light iterations.
scriptencoding utf-8

let s:root = $SRCERY_LIGHT_ROOT
execute 'set runtimepath^=' . fnameescape(s:root)
set termguicolors
syntax on
let s:palette_file = empty($SRCERY_LIGHT_PALETTE) ? s:root . '/tests/light-palette.json' : $SRCERY_LIGHT_PALETTE
let s:palette = json_decode(join(readfile(s:palette_file), "\n"))
let s:names = json_decode(join(readfile($SRCERY_LIGHT_GROUPS), "\n"))
let s:exceptions = json_decode($SRCERY_LIGHT_UI_FIXES)

function! s:CheckTheme() abort
  call assert_equal('light', &background)
  call assert_equal('srcery-light', g:colors_name)
  call assert_equal('#FCE8C3', toupper(synIDattr(hlID('Normal'), 'bg', 'gui')))
  call assert_equal(s:palette.bright_white.hex, toupper(synIDattr(hlID('Normal'), 'fg', 'gui')))
  " Check every direct palette mapping, preserving the reference relationships.
  for l:line in readfile(s:root . '/colors/srcery.vim')
    let l:m = matchlist(l:line, "^\s*call s:HL('\([^']\+\)',\s*s:\(\w\+\)")
    if empty(l:m) || !has_key(s:palette, l:m[2]) || (l:m[1] =~# '^@' && !has('nvim'))
      continue
    endif
    let l:id = synIDtrans(hlID(l:m[1]))
    let l:fg = synIDattr(l:id, 'fg', 'gui')
    let l:color = get(s:exceptions, l:m[1], l:m[2])
    if !empty(l:fg)
      call assert_equal(s:palette[l:color].hex, toupper(l:fg), l:m[1] . ' palette mapping')
      call assert_equal(string(s:palette[l:color].index), synIDattr(l:id, 'fg', 'cterm'), l:m[1] . ' xterm mapping')
    endif
  endfor
  call assert_equal(hlID('String'), synIDtrans(hlID('yamlPlainScalar')))
  call assert_equal(hlID('Function'), synIDtrans(hlID('luaFunc')))
  if has('nvim')
    call assert_equal(hlID('Variable'), synIDtrans(hlID('@variable')))
    call assert_equal(hlID('SrceryDiagError'), synIDtrans(hlID('DiagnosticError')))
  endif
endfunction

colorscheme srcery-light
call s:CheckTheme()
call assert_equal(0, g:srcery_light_normal_float)
" Dark/light defaults are isolated so order does not contaminate either palette.
colorscheme srcery
call assert_equal('dark', &background)
call assert_equal('#FCE8C3', toupper(synIDattr(hlID('Normal'), 'fg', 'gui')))
colorscheme srcery-light
call s:CheckTheme()
colorscheme srcery
call assert_equal('#EF2F27', toupper(synIDattr(hlID('Keyword'), 'fg', 'gui')))
colorscheme srcery-light

let g:srcery_light_bold = 0
let g:srcery_light_italic = 0
let g:srcery_light_inverse = 0
colorscheme srcery-light
call assert_equal('', synIDattr(hlID('Comment'), 'italic', 'gui'))
call assert_equal('', synIDattr(hlID('Todo'), 'bold', 'gui'))
call assert_equal('', synIDattr(hlID('Visual'), 'reverse', 'gui'))
let g:srcery_light_bold = 1
let g:srcery_light_italic = 1
let g:srcery_light_inverse = 1
let g:srcery_light_normal_float = 1
let g:srcery_light_red = '#AA0000'
colorscheme srcery-light
call assert_equal('#AA0000', toupper(synIDattr(hlID('Keyword'), 'fg', 'gui')))
let g:srcery_light_red = s:palette.red.hex
set notermguicolors
colorscheme srcery-light
call s:CheckTheme()
set termguicolors
colorscheme srcery-light
call s:CheckTheme()
call assert_equal('1', synIDattr(hlID('Visual'), 'reverse', 'gui'))
call assert_equal(s:palette.gray1.hex, toupper(synIDattr(hlID('NormalFloat'), 'bg', 'gui')))
if has_key(s:palette, 'error_red')
  call assert_equal('#EF2F27', toupper(synIDattr(hlID('Error'), 'bg', 'gui')))
  call assert_equal('#98BC37', toupper(synIDattr(hlID('PmenuSel'), 'bg', 'gui')))
  call assert_equal('', synIDattr(hlID('PmenuSel'), 'reverse', 'gui'))
  call assert_equal($SRCERY_LIGHT_SELECTION_UNDERLINE ==# '1' ? '1' : '',
        \ synIDattr(hlID('PmenuSel'), 'underline', 'gui'))
endif

let s:ansi = []
for s:name in ['black', 'red', 'green', 'yellow', 'blue', 'magenta', 'cyan', 'white',
      \ 'bright_black', 'bright_red', 'bright_green', 'bright_yellow', 'bright_blue',
      \ 'bright_magenta', 'bright_cyan', 'bright_white']
  call add(s:ansi, s:palette[s:name].hex)
endfor
if has('terminal')
  call assert_equal(s:ansi, g:terminal_ansi_colors)
endif
if has('nvim')
  for s:i in range(16)
    call assert_equal(s:ansi[s:i], get(g:, 'terminal_color_' . s:i))
  endfor
endif

execute 'source ' . fnameescape(s:root . '/tests/capture.vim')
