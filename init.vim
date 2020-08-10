call plug#begin('~/.vim/plugged')
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-commentary'
  Plug 'mattn/emmet-vim'
	Plug 'junegunn/fzf'
 	Plug 'matze/vim-move'
	Plug 'terryma/vim-multiple-cursors'
	Plug 'scrooloose/nerdtree'     
	Plug 'morhetz/gruvbox'    
	Plug 'itchyny/lightline.vim'
	Plug 'sainnhe/edge'
	Plug 'mattn/emmet-vim'
	Plug 'andrewradev/splitjoin.vim'
  Plug 'AndrewRadev/sideways.vim'
  Plug 'AndrewRadev/tagalong.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

"colorscheme monokai
colorscheme gruvbox 

" NERDTree opts
autocmd vimenter * NERDTree
map <C-t> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:NERDTreeDirArrows=0


function! SuperCleverTab()
    if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
        return "\<Tab>"
    else
        return "\<C-p>"
    endif
endfunction

inoremap <Tab> <C-R>=SuperCleverTab()<cr>

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
set ma

:CocInstall coc-tsserver coc-json
