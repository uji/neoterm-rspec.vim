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
change `g:neoterm_rspec_cmd` if change RSpec command
default is 'bin/rspec'

## Commands
- TermRSpecAll
Run RSpec command
- TermRSpecFile
Run RSpec command for current file
- TermRSpecLine
Run RSpec command for current line
- TermRspecFailers
Run RSpec command with --only-failers option
