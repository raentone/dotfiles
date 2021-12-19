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
" this needs to be tested later
set scl=auto 
" why is this not working?
set showbreak=↪\ 
" why is this not working?
set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨
set scrolloff=8
"-------------------------------------------------------------------------------
" Keymaps
"-------------------------------------------------------------------------------
let mapleader = "\<space>"
nmap <leader>ve :edit ~/.config/nvim/init.vim
nmap <leader>vr :source ~/.config/nvim/init.vim
imap jj <esc>

" Reselect visual selection after indenting
vnoremap < <gv
vnoremap > >gv
"-------------------------------------------------------------------------------
" Plugins
"-------------------------------------------------------------------------------
