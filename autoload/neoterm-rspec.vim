let s:save_cpo = &cpo
set cpo&vim

function! TermRSpecFile() abort
  let s:filename = expand('%')
  call neoterm#do({ 'cmd': join([g:neoterm_rspec_cmd, s:filename]) })
endfunction

function! TermRSpecLine() abort
  let s:filename = expand('%')
  let s:opt = join([s:filename, line('.')], ':')
  call neoterm#do({ 'cmd': join([g:neoterm_rspec_cmd, s:opt]) })
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
