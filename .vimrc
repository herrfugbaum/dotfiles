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

" Call vim-plug to end vim-plug configuration
call plug#end()

" activate line numbers
set number

" activate syntax highlighting
syntax on
colorscheme onedark

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

" Show the current mode
set showmode