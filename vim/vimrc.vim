set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" -----------------------------------------------------------------------------
" PLUGINS
Plugin 'preservim/nerdtree'   " https://github.com/gosukiwi/vim-atom-dark
Plugin 'davidhalter/jedi-vim' " https://github.com/davidhalter/jedi-vim

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Put your non-Plugin stuff after this line
" -----------------------------------------------------------------------------
" GENERAL

" General key mappings
inoremap jj <ESC>
inoremap jk <ESC>

" NERDTree settings
nmap <C-n> :NERDTreeToggle<CR>

" Tabs
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <silent> <A-t> :tabnew<CR>
nnoremap <silent> <A-1> :tabmore -<CR>
nnoremap <silent> <A-2> :tabmove +<CR>

" Split resizing
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" Split movement
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Split opening
set splitbelow splitright

" UTF-8 encoding
set encoding=utf-8

" enable syntax highlighting
syntax enable

colorscheme atom-dark-256

" these two lines fix the problem with themes when running vim inside tmux
set background=dark
set t_Co=256

" show line numbers
set number

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1
