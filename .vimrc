set nobackup
set noswapfile
set wildmode=longest,list,full
filetype plugin indent on
set autoindent
set shiftwidth=2
set tabstop=2
set cursorline
set scrolloff=10

set ignorecase
set smartcase
set hlsearch
set incsearch

let mapleader=" "
syntax on
set number
set relativenumber
set signcolumn=yes
set conceallevel=1
set noerrorbells visualbell t_vb=
set foldmethod=syntax
set foldlevelstart=99

" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif

set termguicolors
set background=dark
set encoding=UTF-8
set undodir=~/vim/undodir
set	undofile
set noshowmode
set showcmd
colorscheme slate
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
let &fillchars ..=',eob: '
set fillchars+=vert:\ 


noremap <leader>e :NERDTreeToggle<CR>
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
noremap <leader>ff :Files<CR>
noremap <leader>fg :Gfiles<CR>
noremap <leader>fw :Rg<CR>
noremap <leader>t :TagbarToggle<CR>
noremap <leader>gb :<C-u>call gitblame#echo()<CR>
noremap <tab> gt
noremap <S-tab> gT

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/tagbar'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'airblade/vim-rooter'
Plug 'ap/vim-css-color'
Plug 'zivyangll/git-blame.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-speeddating'
Plug 'romainl/vim-cool'
Plug 'rstacruz/vim-closer'
Plug 'mhinz/vim-startify'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }
Plug 'jreybert/vimagit'
Plug 'godlygeek/tabular'
call plug#end()
