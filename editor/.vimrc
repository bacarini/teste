 
 scriptencoding utf-8
 set encoding=utf-8
 set nocompatible               " be iMproved
 filetype off                   " required!

 set shell=/bin/bash " fix rvm-ruby inside VIM 

 let mapleader = ","
 set laststatus=2
 set backspace=2
 set autoindent
 set smarttab
 set number
 set ruler
 set relativenumber 
 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " Softtabs, 2 spaces
 set tabstop=2
 set shiftwidth=2
 set expandtab
 
 " Display extra whitespace
 set list listchars=tab:»·,trail:·
 
 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'
 Bundle 'tpope/vim-fugitive'
 Bundle 'Lokaltog/vim-easymotion'
 Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
 Bundle 'tpope/vim-rails.git'
 Bundle 'L9'
 Bundle 'FuzzyFinder'
 Bundle 'mileszs/ack.vim'
 Bundle 'kien/ctrlp.vim'
 Bundle 'editorconfig/editorconfig-vim'
 Bundle 'wincent/Command-T'
 Bundle 'bling/vim-airline'
 Bundle 'thoughtbot/vim-rspec'
 Bundle 'scrooloose/nerdtree'
 Bundle 'airblade/vim-gitgutter'
 Bundle 'majutsushi/tagbar'
 Bundle 'jnurmine/Zenburn'

 " RSpec.vim mappings
 map <Leader>t :call RunCurrentSpecFile()<CR>
 map <Leader>s :call RunNearestSpec()<CR>
 map <Leader>l :call RunLastSpec()<CR>
 map <Leader>a :call RunAllSpecs()<CR>
 
 " color
 " set background=dark
 set t_Co=256
 colorscheme zenburn
 set guifont=Inconsolata:h18:cANSI
 syntax on

 filetype plugin indent on     " required!
 
 map <F8> :TagbarToggle<CR>
 map <C-n> :NERDTreeToggle<CR>
 
 let g:NERDTreeDirArrows=0

 set wildignore+=*/.git/*,*/.hg/*,*/.svn/*i,*/vendor/*,*/bin/*
 let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|bin|vendor)$'
 let g:ctrlp_show_hidden = 0
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..
