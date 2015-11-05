" Must come first because it changes other options
set nocompatible

" [vim-plug] Load plugins
call plug#begin()
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'bling/vim-airline'
Plug 'janko-m/vim-test'
Plug 'rking/ag.vim'
Plug 'airblade/vim-gitgutter'
Plug 'ervandew/supertab'
Plug 'tomtom/tlib_vim' | Plug 'MarcWeber/vim-addon-mw-utils' | Plug 'garbas/vim-snipmate' | Plug 'honza/vim-snippets'
call plug#end()

" [vim-airline] Status bar settings
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" [seoul256] Color theme settings
let g:seoul256_background = 235
color seoul256

" [vim-test] Test runner settings
let test#strategy = 'dispatch'
let test#ruby#minitest#file_pattern = 'test_.*\.rb'
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

" Personal settings
set cc=80                         " Set rule to 80 columns
set showmode                      " Display the mode you're in
set hidden                        " Handle multiple buffers better
set wildmode=list:longest         " Complete files like a shell
set ignorecase                    " Case-insensitive searching
set smartcase                     " But case-sensitive if expression contains a capital letter
set number                        " Show absolute line numbers (cf. relativenumber)
set hlsearch                      " Highlight matches
set list                          " Highlight unwanted spaces
set wrap                          " Turn on line wrapping
set shiftwidth=2                  "
set tabstop=2                     " Tabs and spaces
set expandtab                     "
set visualbell                    " No beeping
set nobackup                      " No backups
set nowritebackup                 " No backups
set noswapfile                    " No swap files; more hassle than they're worth
set undofile                      " Set persistent undo
set undodir=~/.vim/undo           " Set .un~ files directory
set tildeop                       " Make tilde command behave like an operator
set shortmess=atI                 " Avoid unnecessary hit-enter prompts
set noequalalways                 " Resize windows as little as possible
set notimeout                     " Don't time out partially entered mapped key sequences
set ttimeout                      " But do time out key codes
set tags=.git/tags,tags           " Look for tags in .git/
set clipboard=unnamed             " Use OS clipboard by default
set cpo+=J                        " Two spaces delimit my sentences

" Remove trailing white space on write
autocmd BufWritePre * :%s/\s\+$//e

" Clear the search buffer when hitting return
nnoremap <CR> :nohlsearch<CR>
