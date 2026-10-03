" Capture resolved highlights and syntax IDs after loading a theme.
scriptencoding utf-8

let s:root = $SRCERY_LIGHT_ROOT
let s:names = json_decode(join(readfile($SRCERY_LIGHT_GROUPS), "\n"))

function! s:Highlight(name) abort
  let l:id = synIDtrans(hlID(a:name))
  let l:result = {'resolved': synIDattr(l:id, 'name')}
  for l:mode in ['gui', 'cterm']
    for l:attr in ['fg', 'bg', 'sp', 'reverse', 'bold', 'italic', 'underline', 'undercurl']
      let l:result[l:mode . l:attr] = synIDattr(l:id, l:attr, l:mode)
    endfor
  endfor
  return l:result
endfunction

let s:groups = {}
for s:name in s:names
  let s:groups[s:name] = s:Highlight(s:name)
endfor
let s:samples = []
for s:file in ['light.py', 'light.rs', 'light.ts', 'light.md']
  execute 'edit ' . fnameescape(s:root . '/tests/fixtures/' . s:file)
  filetype detect
  syntax sync fromstart
  let s:lines = []
  for s:lnum in range(1, line('$'))
    let s:parts = []
    let s:col = 1
    for s:char in split(getline(s:lnum), '\zs')
      let s:id = synIDtrans(synID(s:lnum, s:col, 1))
      let s:group = synIDattr(s:id, 'name')
      if empty(s:group)
        let s:group = 'Normal'
      endif
      let s:groups[s:group] = s:Highlight(s:group)
      if !empty(s:parts) && s:parts[-1].group ==# s:group
        let s:parts[-1].text .= s:char
      else
        call add(s:parts, {'text': s:char, 'group': s:group})
      endif
      let s:col += strlen(s:char)
    endfor
    call add(s:lines, s:parts)
  endfor
  call add(s:samples, {'name': s:file, 'filetype': &filetype, 'lines': s:lines})
  call assert_notequal('', &filetype, s:file . ' filetype')
  call assert_notequal('', &syntax, s:file . ' syntax')
endfor

if !empty(v:errors)
  call writefile(v:errors, $SRCERY_LIGHT_DUMP . '.errors')
  cquit
endif
call writefile([json_encode({'editor': has('nvim') ? 'nvim' : 'vim',
      \ 'version': execute('version'), 'groups': s:groups, 'samples': s:samples,
      \ 'theme': g:colors_name, 'assertions': 'passed', 'errors': v:errors})], $SRCERY_LIGHT_DUMP)
qa!
