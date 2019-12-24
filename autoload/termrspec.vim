let s:save_cpo = &cpo
set cpo&vim

function! termrspec#filespec() abort
    let s:filename = expand('%')
    call neoterm#do({ 'cmd': join([g:neoterm_rspec_cmd, s:filename]) })
endfunction

function! termrspec#linespec() abort
    let s:filename = expand('%')
    let s:opt = join([s:filename, line('.')], ':')
    call neoterm#do({ 'cmd': join([g:neoterm_rspec_cmd, s:opt]) })
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
