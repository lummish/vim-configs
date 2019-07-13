" Filetype-Specific Configurations
" -----------------------------------------------------------------------------

" HTML, XML, Jinja
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType xml setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType htmldjango setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType htmldjango inoremap {{ {{  }}<left><left><left>
autocmd FileType htmldjango inoremap {% {%  %}<left><left><left>
autocmd FileType htmldjango inoremap {# {#  #}<left><left><left>

" Markdown and Journal
autocmd FileType markdown setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType journal setlocal shiftwidth=2 tabstop=2 softtabstop=2

" JS and Typescript
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 expandtab

" Golang
au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4

" Internal Plugin Setting {{{
" -----------------------------------------------------------------------------

" Markdown {{{
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0

" Golang {{{
" Disable polyglot on go files
if exists('g:loaded_polyglot')
    let g:polyglot_disabled = ['go']
endif

" Highlighting
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1

" Auto imports
let g:go_fmt_command = "goimports"

let g:go_auto_type_info = 1

" Set path to gocode for deoplete
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'

" }}}
" Typescript {{{
" Allow use of import paths
let g:tsuquyomi_baseurl_import_path = 1

" }}}
" Javascript {{{
autocmd FileType js UltiSnipsAddFiletypes javascript-jasmine

" }}}
