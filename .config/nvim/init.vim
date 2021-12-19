"-------------------------------------------------------------------------------
" General settings
"-------------------------------------------------------------------------------
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set number
set relativenumber
set syntax=on
set filetype=on
set scl=auto 
set showbreak=↪\ 
set scrolloff=8
set updatetime=300
"-------------------------------------------------------------------------------
" Keymaps
"-------------------------------------------------------------------------------
let mapleader = "\<space>"
 
" For modifying and reloading vim settings quickly
" ve = vim edit and vr = vim reload
nmap <leader>ve :edit ~/.config/nvim/init.vim
nmap <leader>vr :source ~/.config/nvim/init.vim

" Easy escape
imap jj <esc>

" Reselect visual selection after indenting
vnoremap < <gv
vnoremap > >gv

" Clear highlight with enter key after search
nnoremap <CR> :noh<CR><CR>

"-------------------------------------------------------------------------------
" Plugins
"-------------------------------------------------------------------------------
" https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin(stdpath('data') . '/plugged')

source ~/.config/nvim/plugins/fzf.vim
source ~/.config/nvim/plugins/nerdtree.vim
source ~/.config/nvim/plugins/coc.vim
source ~/.config/nvim/plugins/kotlin-vim.vim

call plug#end()
