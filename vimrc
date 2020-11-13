" Enable Pathogen package manager
execute pathogen#infect()

set encoding=utf-8
set t_Co=256  " 256 colors

" Show syntax and line numbers
syntax on
set number

filetype plugin indent on

"
" Some Pythonic settings from
" https://realpython.com/vim-and-python-a-match-made-in-heaven/
" 
let python_highlight_all=1

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za

" PEP line indentation
au BufRead,BufNewFile *.py
    \ set tabstop=4
au BufRead,BufNewFile *.py
    \ set softtabstop=4
au BufRead,BufNewFile *.py
    \ set shiftwidth=4
au BufRead,BufNewFile *.py
    \ set textwidth=119
au BufRead,BufNewFile *.py
    \ set autoindent
au BufRead,BufNewFile *.py
    \ set expandtab
au BufRead,BufNewFile *.py
    \ set fileformat=unix

"
" Some Fortran settings from
" https://stackoverflow.com/a/24166262
"
let fortran_free_source=1
let fortran_have_tabs=1
let fortran_more_precise=1
let fortran_do_enddo=1

" Flag unnecessary white space
au BufRead, BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Keyboard shortcuts
nmap <F6> :NERDTreeToggle<CR>
nmap <F8> :TagbarOpenAutoClose<CR>

" Statusline
set noshowmode  "Hide mode in the line below statusline
let g:airline#extensions#tabline#enabled = 1 "Show all buffers

" Syntastic Python syntax checking
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
