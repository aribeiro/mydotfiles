" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.mydotfiles/vim/plugged')

" Themes
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kshenoy/vim-signature'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" NERD Tree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Fuzzy Finder
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'kien/ctrlp.vim'
Plug 'mileszs/ack.vim'

" Comments
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
		
" Syntax 
Plug 'ludovicchabant/vim-gutentags'
Plug 'slim-template/vim-slim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-endwise'
  
Plug 'mattn/emmet-vim'
Plug 'AndrewRadev/splitjoin.vim'

" Ruby on Rails
Plug 'tpope/vim-rails'

" Javascript / React
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'othree/yajs.vim'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'lepture/vim-jinja'


" Linters
Plug 'dense-analysis/ale'
Plug 'prettier/vim-prettier', { 'do': 'yarn install', 
\ 'for': [
    \ 'javascript',
    \ 'typescript',
    \ 'css',
    \ 'less',
    \ 'scss',
    \ 'json',
    \ 'graphql',
    \ 'markdown',
    \ 'vue',
    \ 'lua',
    \ 'php',
    \ 'python',
    \ 'ruby',
    \ 'html',
    \ 'swift' ] }

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

" GIT
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-git'
  Plug 'airblade/vim-gitgutter'
  Plug 'junegunn/gv.vim'
  Plug 'gregsexton/gitv'

call plug#end()
