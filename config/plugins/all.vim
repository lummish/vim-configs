""" Plugin Configurations
" -----------------------------------------------------------------------------

" AutoPairs
let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', '`':'`' }

" Airline
let g:airline_powerline_fonts = 1
let g:airline_section_z = ' %{strftime("%-I:%M %p")}'
let g:airline_section_warning = ''
"let g:airline#extensions#tabline#enabled = 1

" }}}

" Supertab {{{
let g:SuperTabDefaultCompletionType = "<C-n>"

" }}}
" Ultisnips {{{
let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"
let g:UltiSnipsSnippetDirectories=[$VIMPATH."/UltiSnips", "UltiSnips"]

" }}}
" EasyAlign {{{
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" }}}
" indentLine {{{
let g:indentLine_char = '▏'
let g:indentLine_color_gui = '#363949'

" }}}
" TagBar {{{
let g:tagbar_width = 30
let g:tagbar_iconchars = ['↠', '↡']

" }}}
" fzf-vim
let g:fzf_action = {
  \ 'ctrl-p': { lines -> append(line('.'), lines) },
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'Type'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Character'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" }}}
" ale {{{
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'

" Define fixers
let g:ale_fixers = {
    \'*': ['remove_trailing_lines', 'trim_whitespace'],
    \'javascript': ['eslint'],
    \'typescript': ['eslint'],
\}

" Fix files on save
let g:ale_fix_on_save = 1

" Disable linting except on save
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0

" }}}
" airline {{{
let g:airline#extensions#ale#enabled = 1

" }}}
" indentline {{{
let g:indentLine_enabled = 1
let g:indentLine_faster = 1

" }}}
" coc.nvim {{{
let g:coc_global_extensions = [
    \'coc-json',
    \'coc-tsserver',
    \'coc-gocode',
    \'coc-snippets',
\]

" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" }}}
