" Absolute num for current line
" Relative num for others
set number 
set relativenumber

" Tabs occupy 4 letters, replaced by spaces
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

" If uppercase, then case sensitive
" If lowercase, then case insentitive
set ignorecase
set smartcase

set wrap
set linebreak

set showcmd

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
call plug#end()

autocmd VimEnter * if !argc()| NERDTree | endif
nnoremap <C-m> :NERDTreeToggle<CR>
