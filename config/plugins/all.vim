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
" Deoplete {{{
let g:deoplete#enable_at_startup = 1

" Add custom deoplete sources for different file types
call deoplete#custom#source('ale', 'rank', 999)

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
