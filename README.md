# neoterm-rspec.vim
This is a wrapper of kassio/neoterm for run RSpec by Vim/Neovim terminal

# Installation
e.g using dein.vim
```
[[plugins]]
repo = 'kassio/neoterm'

[[plugins]]
repo = 'ujiprog/neoterm-rspec.vim'
on_ft = ['ruby']
```

# Usage
## settings
Change `g:neoterm_rspec_cmd` if change RSpec command

Default Value is `'bin/rspec'`

## Commands
Run RSpec command
```
:TermRSpecAll
```

Run RSpec command for current file
```
:TermRSpecFile
```

Run RSpec command for current line
```
:TermRSpecLine
```

Run RSpec command with --only-failures option
```
:TermRspecFailures
```
