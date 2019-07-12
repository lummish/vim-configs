" Key-mappings
" -----------------------------------------------------------------------------
let mapleader=" "

nmap <leader>q :NERDTreeToggle<CR>
nmap \ <leader>q
nmap <leader>w :TagbarToggle<CR>

" Theme-based mappings
nmap <leader>ee :Colors<CR>
nmap <leader>ea :AirlineTheme 
nmap <leader>e1 :call ColorDracula()<CR>
nmap <leader>e2 :call ColorSeoul256()<CR>
nmap <leader>e3 :call ColorForgotten()<CR>
nmap <leader>e4 :call ColorZazen()<CR>
nmap <leader>g :Goyo<CR>
nmap <leader>h :RainbowParentheses!!<CR>
nmap <leader>j :set filetype=journal<CR>
nmap <leader>k :ColorToggle<CR>
nmap <leader>l :Limelight!!<CR>
xmap <leader>l :Limelight!!<CR>

nmap <leader>r :so ~/.config/nvim/init.vim<CR>
nmap <leader>t :call TrimWhitespace()<CR>
xmap <leader>a gaip*
nmap <leader>a gaip*

" Terminal-related mappings
nmap <leader>s <C-w>s<C-w>j:terminal<CR>
nmap <leader>vs <C-w>v<C-w>l:terminal<CR>

nmap <leader>d <Plug>(pydocstring)
nmap <leader>f :Files<CR>

nmap <leader>o va{:s/\({\\|,\)\s\+/\0\r/g<CR>f<Space>s,<CR><ESC>:call TrimWhitespace()<CR>
nmap <leader>p va(:s/\((\\|,\)\s\+/\0\r/g<CR>f<Space>s,<CR><ESC>:call TrimWhitespace()<CR>

" nmap <leader>o va{:s/\v(\{|\,)\s*/\0\r/g<CR>f<Space>s,<CR><ESC>
autocmd FileType python nmap <leader>x :0,$!~/.config/nvim/env/bin/python -m yapf<CR>

nmap <silent> <leader><leader> :noh<CR>
nmap <Tab> :bnext<CR>
nmap <S-Tab> :bprevious<CR>
