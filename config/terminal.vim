" Terminal Configuration
" ----------------------------------------------------------------------------- 

if has('nvim')
    " Neovim :Terminal
    tmap <Esc> <C-\><C-n>
    tmap <C-w> <Esc><C-w>
    "tmap <C-d> <Esc>:q<CR>
    autocmd BufWinEnter,WinEnter term://* startinsert
    autocmd BufLeave term://* stopinsert
    " Add commands for opening terminals in splits
    command! -nargs=* T belowright new +resize15 terminal <args>
    command! -nargs=* VT belowright vsplit | terminal <args>
endif
