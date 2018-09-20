" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.mydotfiles/vim/plugged')

" ====================== SYNTAX HIGHLIGHT ==============
  Plug 'vim-jp/syntax-vim-ex'
  
  " Make sure you use single quotes
  function! DoRemote(arg)
    UpdateRemotePlugins
  endfunction
  Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
  Plug 'fishbullet/deoplete-ruby'

  Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
  let g:deoplete#enable_at_startup = 1

  " Plug 'vim-syntastic/syntastic'
  "
  " set statusline+=%#warningmsg#
  " set statusline+=%{SyntasticStatuslineFlag()}
  " set statusline+=%*
  "
  " syntax on
  " let g:syntastic_always_populate_loc_list = 1
  " let g:syntastic_auto_loc_list = 1
  " let g:syntastic_check_on_open = 1
  " let g:syntastic_check_on_wq = 0
  " let g:syntastic_ruby_checkers = ['rubocop', 'mri']
  " let g:syntastic_javascript_checkers=['eslint']

  Plug 'w0rp/ale'
  Plug 'skywind3000/asyncrun.vim'
  
  let g:ale_sign_error = '✖'
  let g:ale_sign_warning = '⚠'
  " let g:ale_warn_about_trailing_whitespace = 0
  let g:ale_linters = {'html': [], 'javascript': ['eslint', 'prettier'], 'ruby': ['mri','rubocop']}

  let g:airline#extensions#ale#enabled = 1 
  " autocmd BufWritePost *.js AsyncRun -post=checktime eslint --fix %
  " autocmd BufWritePost *.rb AsyncRun -post=checktime rubocop %
  "
  " ====================== NAVIGATION ====================
  " Plug 'scrooloose/nerdtree'
  Plug 'scrooloose/nerdtree'
  Plug 'xuyuanp/nerdtree-git-plugin'
  " Plug 'taiansu/nerdtree-ag'
  Plug 'ivalkeen/nerdtree-execute'
  Plug 'low-ghost/nerdtree-fugitive'
  Plug 'christoomey/vim-tmux-navigator'

  " ====================== SEARCH ========================
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'vim-scripts/IndexedSearch'
  Plug 'nelstrom/vim-visual-star-search'
  Plug 'skwp/greplace.vim'
  Plug 'mileszs/ack.vim'

  " ====================== GIT ===========================
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-git'
  Plug 'airblade/vim-gitgutter'
  Plug 'junegunn/gv.vim'
  Plug 'gregsexton/gitv'

  " ===================== RAILS ==========================
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-rake'
  Plug 'tpope/vim-bundler'
  Plug 'tpope/vim-rbenv'
  Plug 'tpope/vim-endwise'
  Plug 'tpope/vim-ragtag'
  Plug 'majutsushi/tagbar'

  " ==================== JAVASCRIPT ======================
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'

  " ===================== TIM POPE =======================
  " I need to order it correctly
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-abolish'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-unimpaired'
  "====================== EDITION ========================
  Plug 'tomtom/tcomment_vim'
  Plug 'mattn/emmet-vim'
  Plug 'AndrewRadev/splitjoin.vim' 

  " Plug 'townk/vim-autoclose' " kind of annoying
  autocmd FileType ruby compiler ruby

  " ====================== THEMES =================================
  " Plug 'frankier/neovim-colors-solarized-truecolor-only'
  " Plug 'trevordmiller/nova-vim'
  Plug 'morhetz/gruvbox'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'kshenoy/vim-signature'

  "================= ORGANIZE AND SELECT ================
  Plug 'godlygeek/tabular'
  Plug 'bkad/camelcasemotion'
  Plug 'rhysd/devdocs.vim'
  Plug 'vim-scripts/sudo.vim'
  Plug 'AndrewRadev/splitjoin.vim'

  " Plug 'terryma/vim-multiple-cursors'
  " Plug 'vim-scripts/matchit.zip.git'
  " Plug 'sjl/gundo.vim'
  " Plug 'skwp/YankRing.vim'
  " Plug 'vim-scripts/AutoTag.git'

  " Plug 'Raimondi/delimitMate'
  " Plug 'vim-scripts/AnsiEsc.vim.git'

  Plug 'mhinz/vim-startify'
  " Plug 'ryanoasis/vim-devicons'
  " set guifont=DroidSansMono\ Nerd\ Font\ 11
  
  " Initialize plugin system
call plug#end()
