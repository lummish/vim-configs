" Terminal Configuration
" ----------------------------------------------------------------------------- 

if has('nvim')
    " Neovim :Terminal
    tnoremap <leader><Esc> <Esc>
    tnoremap <Esc> <C-\><C-n>
    tnoremap <C-w> <C-\><C-n><C-w>
    "tmap <C-d> <Esc>:q<CR>
    autocmd BufWinEnter,WinEnter term://* startinsert
    autocmd BufLeave term://* stopinsert
    " Add commands for opening terminals in splits
    command! -nargs=* T belowright new +resize15 terminal <args>
    command! -nargs=* VT belowright vsplit | terminal <args>
endif
