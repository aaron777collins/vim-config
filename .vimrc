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


call plug#end()

set nocompatible              " be iMproved, required
filetype off                  " required
 
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

"Calling NERD tree automatically
function! StartUp()
    if 0 == argc()
        NERDTree
        "NERDTreeTabsOpen
    end
endfunction

autocmd VimEnter * call StartUp()
