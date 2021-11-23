syntax on

set ignorecase
set autoindent
set relativenumber

"Tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4

" detect file type and load indent plugin
filetype plugin indent on

command Jake echo "Hello Jake!\n"


call plug#begin('~/.config/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
call plug#end()


let mapleader = " "

map <Leader>p :edit $MYVIMRC<CR> 
map <Leader>f :NERDTreeToggle<CR> 


" tab completion coc
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
