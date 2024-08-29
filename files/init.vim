:set number
:set mouse=a

" call plug#begin()

" Plug 'https://github.com/vim-airline/vim-airline'
" Plug 'https://github.com/preservim/nerdtree' " NerdTree
" Plug 'https://github.com/tpope/vim-commentary'
" Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
" Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
" Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
" Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
" Plug 'vim-airline/vim-airline-themes'


set encoding=UTF-8

" call plug#end()



nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>


let mapleader = "\<space>"
nnoremap <C-L> :nohl<CR><C-L>
inoremap jk <esc>
vnoremap jk <esc>
nnoremap <Leader>w :w<cr>
nnoremap <Leader>q :q<cr>
nnoremap <Leader>wq :wq<cr>
nnoremap <Leader>o '0<cr>

set shiftwidth=4
set softtabstop=4
set expandtab

set listchars=space:· list
highlight SpecialKey ctermfg=DarkGray guifg=DarkGray

"
" air-line
let g:airline_theme='onedark'
" let g:airline_powerline_fonts = 0

" if !exists('g:airline_symbols')
    " let g:airline_symbols = {}i
" endif

" airline symbols
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
" let g:airline_symbols.branch = ''
" let g:airline_symbols.readonly = ''
" let g:airline_symbols.linenr = ''
