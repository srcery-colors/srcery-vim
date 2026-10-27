" Capture the unchanged Srcery dark reference for comparison specimens.
scriptencoding utf-8

let s:root = $SRCERY_LIGHT_ROOT
execute 'set runtimepath^=' . fnameescape(s:root)
set termguicolors
syntax on
let g:srcery_normal_float = 1
colorscheme srcery
call assert_equal('dark', &background)
call assert_equal('srcery', g:colors_name)
call assert_equal('#121110', toupper(synIDattr(hlID('Normal'), 'bg', 'gui')))
call assert_equal('#FCE8C3', toupper(synIDattr(hlID('Normal'), 'fg', 'gui')))
execute 'source ' . fnameescape(s:root . '/tests/capture.vim')
