" Plugin Installation
" ------------------------------------------------------------------------------

" Auto install vim-plug
if empty(glob($VIMPATH.'/autoload/plug.vim'))
  silent exec '!curl -fLo'.$VIMPATH.'/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  if has('nvim')
      autocmd VimEnter * PlugInstall --sync | source $VIMPATH.'/init.vim'
  else
      autocmd VimEnter * PlugInstall --sync | source $VIMPATH.'/vimrc'
  endif
endif

call plug#begin($VIMPATH.'/plugged')

" Aesthetics - Main
Plug 'dracula/vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-journal'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'nightsense/forgotten'
Plug 'zaki/zazen'

" Aesthetics - Additional
Plug 'nightsense/nemo'
Plug 'yuttie/hydrangea-vim'
Plug 'chriskempson/tomorrow-theme', { 'rtp': 'vim' }
Plug 'rhysd/vim-color-spring-night'

" Golang Stuff
Plug 'fatih/vim-go'

" Functionalities
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'

" For Denite features
Plug 'Shougo/denite.nvim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-abolish'
Plug 'Yggdroot/indentLine'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'chrisbra/Colorizer'
Plug 'vim-scripts/loremipsum'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'metakirby5/codi.vim'

" JS Object Utilities
Plug 'tpope/vim-jdaddy'

" Typescript syntax
Plug 'HerringtonDarkholme/yats.vim'

" Yaml syntax
Plug 'stephpy/vim-yaml'

Plug 'zchee/deoplete-go', { 'do': 'make'} " Go auto completion

" Linting
Plug 'w0rp/ale'

" nvim specific
if has('nvim')
    " Typescript tooling
    Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
else
    Plug 'Quramy/tsuquyomi'
endif

call plug#end()
