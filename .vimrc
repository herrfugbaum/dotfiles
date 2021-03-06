" automatically install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" Call vim-plug to start vim-plug configuration
call plug#begin('~/.vim/plugged')

" define the vim-plug plugins
Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Call vim-plug to end vim-plug configuration
call plug#end()

" activate line numbers
set number

" activate syntax highlighting
syntax on
" use italics
let g:onedark_terminal_italics=1
" use onedark colorscheme
colorscheme onedark
" use and configure lightline and use onedark theme for it
set laststatus=2
let g:lightline = {
        \ 'colorscheme': 'onedark',
        \ }

" configure NERDTree
let NERDTreeShowHidden=1
" close vim if the only window left open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" highlight current line
set cursorline

" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list

" show the filename in the window titlebar
set title

" Make tabs as wide as two spaces
set tabstop=2

" Show the cursor position
set ruler

" Hide the current mode, since it's already shown by lightline
set noshowmode