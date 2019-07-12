filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab

" vim-plug setup
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'

" Nice color theme
Plug 'dracula/vim', { 'as': 'dracula' }

" More eye-popping statusline
Plug 'itchyny/lightline.vim'

" Multiple Cursors!
Plug 'terryma/vim-multiple-cursors'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Surroundings Editor
Plug 'tpope/vim-surround'

" Linting Engine
Plug 'w0rp/ale'

" Typescript Syntax Highlighting
Plug 'leafgarland/typescript-vim'

" Some useful bracket mappings
Plug 'tpope/vim-unimpaired'

" Typescript IDEification
Plug 'Quramy/tsuquyomi'
Plug 'vim-syntastic/syntastic'

" Golang IDEification
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Tabular alignment
Plug 'godlygeek/tabular'

" Indentation-level based text objects
Plug 'michaeljsmith/vim-indent-object'
call plug#end()

" Linter configuration
let g:ale_linters = {
\ 'javascript': ['eslint'],
\}

" Syntastic setup
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi'] " You shouldn't use 'tsc' checker.
let g:syntastic_javascript_checkers = ['eslint']

" Editor Appearance
syntax enable
set background=dark
let &colorcolumn="80,120"
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Define some mappings
map <C-n> :NERDTreeToggle<CR>
cnoremap <expr> %%  getcmdtype() == ':' ? expand('%:h').'/' : '%%'


" Open NERDTREE if vim started on a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
