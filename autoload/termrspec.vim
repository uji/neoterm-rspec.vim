let s:save_cpo = &cpo
set cpo&vim

function! termrspec#file() abort
    let l:filename = expand('%')
    call neoterm#do({ 'cmd': join([g:neoterm_rspec_cmd, l:filename]) })
endfunction

function! termrspec#line() abort
    let l:filename = expand('%')
    let l:opt = join([l:filename, line('.')], ':')
    call neoterm#do({ 'cmd': join([g:neoterm_rspec_cmd, l:opt]) })
endfunction

function! termrspec#failures() abort
    let l:opt = '--only-failures'
    call neoterm#do({ 'cmd': join([g:neoterm_rspec_cmd, l:opt]) })
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
