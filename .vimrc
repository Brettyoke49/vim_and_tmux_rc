set nocompatible

set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set number
colo elflord
set hlsearch
set ic

"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>

"For Pathogen plugins
call pathogen#infect()

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

set wrap
"Move through each line of a wrap instead of past it
nnoremap k gk
nnoremap j gj


" Store swp files in different dir to avoid accidentally adding to git
"set dir=~/.vim/swp//   @@@figure out error message resulting@@@

let mapleader = ';'
" check syntax of current ruby file
nnoremap <leader>cr :!clear && ruby -w -c %<cr>
map <f1> :set invnumber<CR>
