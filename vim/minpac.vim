" For a paranoia.
" Normally `:set nocp` is not needed, because it is done automatically
" when .vimrc is found.
if &compatible
  " `:set nocp` has many side effects. Therefore this should be done
  " only when 'compatible' is set.
  set nocompatible
endif

if exists('*minpac#init')
  " minpac is loaded.
  call minpac#init()
  call minpac#add('k-takata/minpac', {'type': 'opt'})

  " ====================== SYNTAX HIGHLIGHT ==============
  call minpac#add('vim-jp/syntax-vim-ex')

  " need to configure properly
  call minpac#add('vim-syntastic/syntastic')
  let g:syntastic_ruby_checkers = ['rubocop']

  " ====================== NAVIGATION ====================
  call minpac#add('scrooloose/nerdtree')
  call minpac#add('xuyuanp/nerdtree-git-plugin')
  " call minpac#add('taiansu/nerdtree-ag')
  call minpac#add('ivalkeen/nerdtree-execute')
  call minpac#add('low-ghost/nerdtree-fugitive')
  call minpac#add('christoomey/vim-tmux-navigator')

  " ====================== SEARCH ========================
  call minpac#add('junegunn/fzf.vim')
  call minpac#add('ctrlpvim/ctrlp.vim')
  call minpac#add('vim-scripts/IndexedSearch')
  call minpac#add('nelstrom/vim-visual-star-search')
  call minpac#add('skwp/greplace.vim')
  call minpac#add('mileszs/ack.vim')

  " ====================== GIT ===========================
  call minpac#add('tpope/vim-fugitive')
  call minpac#add('tpope/vim-git')
  call minpac#add('airblade/vim-gitgutter')
  call minpac#add('junegunn/gv.vim')
  call minpac#add('gregsexton/gitv')

  " ===================== RAILS ==========================
  call minpac#add('tpope/vim-rails')
  call minpac#add('tpope/vim-rake')
  call minpac#add('tpope/vim-bundler')
  call minpac#add('tpope/vim-rbenv')
  call minpac#add('tpope/vim-endwise')
  call minpac#add('tpope/vim-ragtag')
  call minpac#add('majutsushi/tagbar')


  " ===================== TIM POPE =======================
  " I need to order it correctly
  call minpac#add('tpope/vim-surround')
  call minpac#add('tpope/vim-abolish')
  call minpac#add('tpope/vim-repeat')
  call minpac#add('tpope/vim-unimpaired')
  "====================== EDITION ========================
  call minpac#add('tomtom/tcomment_vim')

  " Auto complete
  call minpac#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call minpac#add('roxma/nvim-yarp')
    call minpac#add('roxma/vim-hug-neovim-rpc')
  endif

  let g:deoplete#enable_at_startup = 1
  autocmd FileType ruby compiler ruby

  " ====================== THEMES =================================
  " call minpac#add('frankier/neovim-colors-solarized-truecolor-only')
  " call minpac#add('trevordmiller/nova-vim')
  call minpac#add('morhetz/gruvbox')
  call minpac#add('vim-airline/vim-airline')
  call minpac#add('vim-airline/vim-airline-themes')
  call minpac#add('kshenoy/vim-signature')

  "================= ORGANIZE AND SELECT ================
  call minpac#add('godlygeek/tabular')
  call minpac#add('bkad/camelcasemotion')
  call minpac#add('rhysd/devdocs.vim')
  call minpac#add('vim-scripts/sudo.vim')
  call minpac#add('AndrewRadev/splitjoin.vim')

  " call minpac#add('terryma/vim-multiple-cursors')
  " call minpac#add('vim-scripts/matchit.zip.git')
  " call minpac#add('sjl/gundo.vim')
  " call minpac#add('skwp/YankRing.vim')
  " call minpac#add('vim-scripts/AutoTag.git')

  " call minpac#add('Raimondi/delimitMate')
  " call minpac#add('vim-scripts/AnsiEsc.vim.git')
endif

" Plugin settings here.

" Define user commands for updating/cleaning the plugins.
" Each of them loads minpac, reloads .vimrc to register the
" information of plugins, then performs the task.
command! PackUpdate packadd minpac | source $MYVIMRC | call minpac#update()
command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()
