" Typescript-specific configurations
" -----------------------------------------------------------------------------
setlocal shiftwidth=2
setlocal tabstop=2
setlocal softtabstop=2

" Add some command aliases for ALE commands
augroup ft_typescript
    autocmd!
    command! -buffer Fix ALEFix
    command! -buffer GoToDef ALEGoToDefinition
    command! -buffer References ALEFindReferences
    command! -buffer Hover ALEHover
    command! -buffer SymbolSearch ALESymbolSearch
augroup END

let b:ale_linters = ['eslint']
let b:ale_linters_ignore = ['tslint']
