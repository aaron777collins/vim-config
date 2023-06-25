call plug#begin()
 
Plug 'tyru/open-browser.vim' " opens url in browser
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'sheerun/vim-polyglot' " For colouring
Plug 'https://github.com/preservim/nerdtree', { 'on': 'NERDTreeToggle' } " For exploring files
Plug 'LunarWatcher/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'dense-analysis/ale'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'rhysd/vim-lsp-ale'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

call plug#end()

set nocompatible              " be iMproved, required
filetype off                  " required

" ALE config
"set completeopt=menu,menuone,preview,noselect,noinsert
let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1
set omnifunc=ale#completion#OmniFunc
"let g:ale_linters = {'python': ['flake8']}
let g:ale_linters = {'python': ['pylint']}
"let g:ale_fixers = {'python': ['autopep8', 'autoimport']}

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect
" Use <Tab> and <S-Tab> to navigate through popup menu and use the right arrow
" to autocomplete when navigating with arrow keys
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <Right> pumvisible() ? "\<C-y>" : "\<Right>"
" Use <Tab to autocomplete the current line
"inoremap <expr> <Tab> pumvisible() ? "\<C-y>" : "\<Tab>"

 
" set the runtime path to include Vundle and initialize Vundle
" The directory should be changed in case you downloaded in case you download it somewhere else
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
 
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
 
" To Install Plugin from a repository
" Plugin <Repository-Link>
 
Plugin 'git://git.wincent.com/command-t.git'
 
" If you are installing from Github you can write a simpler alias
 
Plugin 'tpope/vim-fugitive'

Plugin 'tomasr/molokai'

Plugin 'christoomey/vim-tmux-navigator'

Bundle 'jistr/vim-nerdtree-tabs'

"Image viewer
"Plugin 'ashisha/image.vim' I forked this to make it work with python3
Plugin 'aaron777collins/python3-image.vim'

" All the plugins to be installed are to be mentioned here
" inside the vundle#begin and vundle#end
 
call vundle#end()            " required
filetype plugin indent on    " required

" Enable/Disable syntax
if has("syntax")
  syntax on
endif

windo if &filetype != 'nerdtree' && &filetype != 'tagbar' | set number | endif


"Key binds
let g:AutoPairsShortcutToggle = '<C-P>'
nmap <F6> :NERDTreeToggle<CR>

"Enabling Mouse Support
:set mouse=a

" theme
let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai

let g:nerdtree_tabs_open_on_console_startup = 1

nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==
inoremap <leader>j <Esc>:m .+1<CR>==gi
inoremap <leader>k <Esc>:m .-2<CR>==gi
vnoremap <leader>j :m '>+1<CR>gv=gv
vnoremap <leader>k :m '<-2<CR>gv=gv

"Calling NERD tree automatically
function! StartUp()
    if 0 == argc()
        NERDTree
        "NERDTreeTabsOpen
    end
endfunction

autocmd VimEnter * call StartUp()
