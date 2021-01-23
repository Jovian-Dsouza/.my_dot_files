syntax on 

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set colorcolumn=80
highlight ColorColumn  ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox' " theme
Plug 'jremmen/vim-ripgrep' " Fast Grep
Plug 'tpope/vim-fugitive' " git blame and awesome stuff
Plug 'leafgarland/typescript-vim' " nice coloring
Plug 'vim-utils/vim-man' 
Plug 'lyuts/vim-rtags' " for c++
Plug 'mbbill/undotree'
Plug 'ctrlpvim/ctrlp.vim'
" Plug 'taketwo/vim-ros'

call plug#end()

colorscheme gruvbox
set background=dark

" To start the search from root
if executable('rg')
    let g:rg_derive_root='true'
endif

" Ignore shit u dont wanna search 
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let mapleader = " "

" For the file tree
let g:netrw_browse_split=2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:ctrlp_use_caching = 0

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <Leader>ps :Rg<SPACE>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>
