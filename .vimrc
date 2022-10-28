" C++ compiler setup
set autowrite
nnoremap <C-c> :!g++ -std=c++11 % -Wall -g -o %.out && ./%.out<CR>

" vundle setup
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" add plugins here
Plugin 'thaerkh/vim-workspace'
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
" end adding plugins
call vundle#end()
filetype plugin indent on

" plugin options
let g:workspace_autocreate = 1 "automatically save VIM session file
 
"Screen shortcut for toggling NERDTree
nnoremap <C-t> :NERDTreeToggle<CR>

"Double-top ESC to save and quit
map <esc><esc> :wq<enter>
