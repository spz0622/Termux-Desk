syntax on
syntax enable

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
filetype indent on
filetype plugin on
set number
set cursorline
nnoremap j gj
nnoremap k gk

nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

nnoremap gV `[v`]

set showmatch
set nowrap
set laststatus=2
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent
nnoremap <space> za
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set hlsearch
nnoremap <leader><space> :nohlsearch<CR>
set lazyredraw

set showcmd
set wildmenu

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

set list
set listchars=tab:^\ ,trail:~

" PLUGIN MANAGER vim-plug

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'frazrepo/vim-rainbow'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
call plug#end()

colorscheme gruvbox
set background=dark

" Create default mappings  cs ci
let g:NERDCreateDefaultMappings = 1

"au FileType c,cpp,objc,objcpp call rainbow#load()
"or just this to enable it globally:
":RainbowToggle  --you can use it to toggle this plugin.
":RainbowLoad    --you can use it to load/reload this plugin.
let g:rainbow_active = 1
