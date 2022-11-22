"         _
" __    _(_)_ __ ___  _ __ ___
" \ \  / / | ´_ ` _ \| '__/ __|
"  \ \/ /| | | | | | | | | (__
"   \__/ |_|_| |_| |_|_|  \___|


let mapleader = " "

"---------- Plugins ---------- 
call plug#begin('~/.vim/plugged')

" Plug 'dylanaraps/wal.vim'
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/goyo.vim'

" markdown
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'

"Plug 'vim-scripts/AutoComplPop' " Buit in 
Plug 'lifepillar/vim-mucomplete' " mucomplete 

call plug#end()

"---------- Goyo ---------- 

function! s:goyo_enter()
	set linebreak 
	set spell
endfunction

function! s:goyo_leave()
	set nolinebreak
	set nospell
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()


"---------- color schemes ----------
" colorscheme from pywal (only use if color scheme not working by default)
" colorscheme wal

" airline theme
let g:airline_theme='pywal_vim_airline'


"---------- Key bindings and Shortcuts -----------
"Enable/disable auto comment
map <leader>c :setlocal formatoptions-=cro<CR>
map <leader>C :setlocal formatoptions=cro<CR>
setlocal fo-=cro

" Enable spell checking
map <leader>se :setlocal spell! spelllang=en_us<CR>
map <leader>sp :setlocal spell! spelllang=pt_pt<CR>
map <leader>sa :setlocal spell! spelllang=en_us,pt_pt<CR>

" Complete menu (built in) 
" inoremap <expr> <Right> pumvisible() ? "<C-y>" : "<Right>"
" inoremap <expr> <Tab> pumvisible() ? "<C-y>" : "<Tab>"

" Shotcuts		
nmap <C-f> :NERDTreeToggle<CR>
nmap <leader>s :w<CR>

nmap <leader>o :tabnew
nmap <leader>1 1gt
nmap <leader>2 2gt 
nmap <leader>3 3gt 
nmap <leader>4 4gt 
nmap <leader>5 5gt 
nmap <leader>q :tabc<CR> 

"------------ Basic settings ----------
syntax on
set number relativenumber
set formatoptions-=cro
set mouse=a

" spell check (highlight erros)
set spelllang=pt_pt,en_us
" set spell "(enable spell highlight)

" Use system clipboear
set clipboard=unnamedplus

" completion Built in
" set complete+=kspell " for built in completion
set completeopt+=menuone,noselect 
set completeopt-=preview
set shortmess+=c
imap <expr> <down> mucomplete#extend_fwd("\<down>") " complete sentensces

" search
set hlsearch

" :help mucomplete-customization
let g:mucomplete#enable_auto_at_startup = 1
let g:mucomplete#alway_use_completeopt = 1
let g:mucomplete#minimum_prefix_length = 1
let g:mucomplete#spel#good_words = 1
let g:mucomplete#spel#max = 10
let g:mucomplete#tab_when_no_results = 1
let g:mucomplete#cycle_all = 1

" hexokinase
" let g:Hexokinase_highlighters = ['virtual']

" Markdown
set conceallevel=2

