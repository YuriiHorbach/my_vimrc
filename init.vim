call plug#begin('~/.vim/plugged')
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-commentary'
  Plug 'mattn/emmet-vim'
	Plug 'neoclide/coc.nvim'
	Plug 'junegunn/fzf'
 	Plug 'matze/vim-move'
	Plug 'terryma/vim-multiple-cursors'
	Plug 'scrooloose/nerdtree'     
	Plug 'morhetz/gruvbox'    
	Plug 'itchyny/lightline.vim'
	Plug 'sainnhe/edge'
	Plug 'mattn/emmet-vim'
	Plug 'neoclide/coc.nvim'

call plug#end()

"colorscheme monokai
colorscheme gruvbox 

" NERDTree opts
autocmd vimenter * NERDTree
map <C-t> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

set mouse=a
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set paste
set smartindent
" highlight searche
set hlsearch
" case insensitive search
set ignorecase
set smartcase
" ask to save
set confirm
"set number
syntax on

" display lightline
set laststatus=2
set noshowmode
set ruler
set number

