set nocompatible

set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set number
set hlsearch
set ic
set incsearch

" Set :! to behave like command prompt (recognize bash aliases)
let $BASH_ENV = "~/.bash_aliases"

" This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>

" Highlight trailing whitespace in red
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
augroup vimrc_autocmd
" Highlight trailing white space
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
" Autoremove trailing white space
autocmd BufWinLeave * call clearmatches()
autocmd BufWritePre * %s/\s\+$//e
augroup END

" Move through each line of a wrap instead of past it
set wrap
nnoremap k gk
nnoremap j gj

" Turn line numbering on and off
map <f1> :set invnumber<CR>
