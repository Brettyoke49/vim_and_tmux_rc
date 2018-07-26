set nocompatible

set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set number
colo elflord
set hlsearch
set ic
set incsearch

" Set :! to behave like command prompt (recognize bash aliases)
let $BASH_ENV = "~/.bash_aliases"

" This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>

" For Pathogen plugins
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

" Move through each line of a wrap instead of past it
set wrap
nnoremap k gk
nnoremap j gj

" Store swp files in different dir to avoid accidentally adding to git
"set dir=~/.vim/swp//   @@@figure out error message resulting@@@

" Check syntax of current ruby file
let mapleader = ';'
nnoremap <leader>cr :!clear && ruby -w -c %<cr>

" Turn line numbering on and off
map <f1> :set invnumber<CR>

" Use f2 for YCM FixIt
map <f2> :YcmCompleter FixIt<cr>

" For YouCompleteMe plugin
let g:ycm_confirm_extra_conf = 0
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_seed_identifiers_with_syntax = 1
" Disable arrow key menu navigation
let g:ycm_key_list_select_completion = ['<TAB>']
let g:ycm_key_list_previous_completion = ['<S-TAB>']
let g:ycm_key_list_stop_completion = ['<C-y>', '<UP>', '<DOWN>']

