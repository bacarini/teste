 scriptencoding utf-8
 set encoding=utf-8
 set hlsearch
 set incsearch
 set nocompatible               " be iMproved
 filetype off                   " required!

 set shell=/bin/bash " fix rvm-ruby inside VIM
 " set shell=/bin/zsh " fix rvm-ruby inside VIM

 let mapleader = ","
 set laststatus=2
 set backspace=2
 set autoindent
 set smarttab
 set number
 set ruler
 set relativenumber
 set mouse=a
 set cursorline cursorcolumn
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()

 " Softtabs, 2 spaces
 set tabstop=2
 set shiftwidth=2
 set expandtab

 " Display extra whitespace
 set list listchars=tab:»·,trail:·

 " let Vundle manage Vundle
 " required!
 Plugin 'gmarik/Vundle.vim'

 Plugin 'tpope/vim-fugitive'
 Plugin 'Lokaltog/vim-easymotion'
 Plugin 'L9'
 Plugin 'FuzzyFinder'
 Plugin 'mileszs/ack.vim'
 Plugin 'kien/ctrlp.vim'
 Plugin 'editorconfig/editorconfig-vim'
 Plugin 'bling/vim-airline'
 Plugin 'thoughtbot/vim-rspec'
 Plugin 'scrooloose/nerdtree'
 Plugin 'airblade/vim-gitgutter'
 Plugin 'jnurmine/Zenburn'
" Plugin 'altercation/vim-colors-solarized'
 Plugin 'scrooloose/nerdcommenter'
 Plugin 'elixir-lang/vim-elixir'
 Plugin 'tpope/vim-rails.git'
 Plugin 'terryma/vim-multiple-cursors'
 call vundle#end()

 " Buffers
 nnoremap <Leader>l :ls<CR>
 nnoremap <Leader>b :bp<CR>
 nnoremap <Leader>f :bn<CR>
 nnoremap <Leader>g :e#<CR>
 nnoremap <Leader>1 :1b<CR>
 nnoremap <Leader>2 :2b<CR>
 nnoremap <Leader>3 :3b<CR>
 nnoremap <Leader>4 :4b<CR>
 nnoremap <Leader>5 :5b<CR>
 nnoremap <Leader>6 :6b<CR>
 nnoremap <Leader>7 :7b<CR>
 nnoremap <Leader>8 :8b<CR>
 nnoremap <Leader>9 :9b<CR>
 nnoremap <Leader>0 :10b<CR>

 " RSpec.vim mappings
 map <Leader>t :call RunCurrentSpecFile()<CR>
 map <Leader>s :call RunNearestSpec()<CR>
 map <Leader>a :call RunAllSpecs()<CR>

 " vim-multiple-cursors
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

 " color
 set t_Co=256
 set guifont=Inconsolata:h18:cANSI
 syntax enable
 set background=dark
 "colorscheme solarized
 colorscheme zenburn

 filetype plugin indent on     " required!

 map <C-a> :NERDTreeToggle<CR>

 let g:NERDTreeDirArrows=0
 let g:NERDChristmasTree=1
 let g:NERDTreeMinimalUI=1

 set wildignore+=*/.git/*,*/.hg/*,*/.svn/*i,*/vendor/*,*/bin/*
 let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|bin|vendor)$'
 let g:ctrlp_show_hidden = 0

