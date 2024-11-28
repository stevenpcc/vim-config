set encoding=utf-8

set timeout timeoutlen=500 ttimeoutlen=100
let mapleader = "\<Space>"
nmap <leader>si :source ~/.vimrc<CR>
set nocompatible
map <leader>p  \"+p

" Add stty -ixon to bashrc for this to work
nmap <C-s> :w<cr>
imap <C-s> <esc>:w<cr>
nmap 0 ^ 
imap jk <esc>
set relativenumber
set number

" Map double-tap space to open CtrlP
nnoremap <silent> <leader><space> :ctrlp<cr>

" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Higlights line when inserting
autocmd InsertEnter,InsertLeave * set cul!

set splitbelow
set splitright

set modelines=0   " Disable modelines as a security precaution
set nomodeline

" Enable incremental search: highlights matches as you type a search pattern
set incsearch

colo smyck

nmap <Leader>gs :G<CR>
nmap <Leader>gj :diffget //3<CR>
nmap <Leader>gf :diffget //2<CR>

set ttyfast
set mouse=a
set ttymouse=sgr

function! ToggleMouseSettings()
    if &mouse != '' " Mouse is currently enabled
        set mouse=
        set ttymouse=
	set nonumber
	set norelativenumber
        echo "Mouse and ttymouse disabled"
    else
        set mouse=a
        set ttymouse=sgr
	set number
	set relativenumber
        echo "Mouse and ttymouse enabled"
    endif
endfunction

" Keymap to toggle mouse settings (using <leader>mt)
nmap <leader>mt :call ToggleMouseSettings()<CR>

" Cursor in terminal
  " https://vim.fandom.com/wiki/Configuring_the_cursor
  " 1 or 0 -> blinking block
  " 2 solid block
  " 3 -> blinking underscore
  " 4 solid underscore
  " Recent versions of xterm (282 or above) also support
  " 5 -> blinking vertical bar
  " 6 -> solid vertical bar
    
  if &term =~ '^xterm'
    " normal mode
    let &t_EI .= "\<Esc>[0 q"
    " insert mode
    let &t_SI .= "\<Esc>[6 q"
  endif

call plug#begin('~/.vim/plugged')

Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/machakann/vim-highlightedyank.git'
Plug 'https://github.com/tpope/vim-rails.git'
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plug 'vim-test/vim-test'
Plug 'https://github.com/tpope/vim-commentary.git'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'

call plug#end()
