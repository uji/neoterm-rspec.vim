let s:save_cpo = &cpo
set cpo&vim

scriptencoding utf-8

if exists('g:loaded_neoterm-rspec') || !exists('g:neoterm_loaded')
    finish
endif

let g:loaded_neoterm_rspec = 1

let g:neoterm_rspec_cmd='bin/rspec'

command! TermRSpecAll call neoterm#do({ 'cmd': g:neoterm_rspec_cmd })
command! -bar TermRSpecFile call termrspec#filespec()
command! -bar TermRSpecLine call termrspec#linespec()

let &cpo = s:save_cpo
unlet s:save_cpo
