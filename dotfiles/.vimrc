set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
set encoding=utf-8

call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'mcchrish/nnn.vim'
    Plugin 'ycm-core/YouCompleteMe'
	Plugin 'nanotech/jellybeans.vim'
	Plugin 'tpope/vim-fugitive'
	Plugin 'tpope/vim-rhubarb'
	Plugin 'othree/html5.vim'
	Plugin 'ap/vim-css-color'
	Plugin 'jeetsukumaran/vim-buffergator'
    Plugin 'kaarmu/typst.vim'
call vundle#end()
filetype plugin indent on

syntax on
let mapleader=","
let g:nnn#layout= { 'window': { 'width': 0.9, 'height': 0.6, 'highlight': 'Debug' } }
let g:ycm_global_extra_conf = '/usr/share/ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_filetype_blacklist = { 'nroff': 1, 'verilog': 1 }
colorscheme jellybeans
set nowrap
set incsearch
set hlsearch
set nobackup
set nowritebackup
set number
set nowrapscan
set showcmd
set expandtab
set laststatus=2
set tabstop=4
set shiftwidth=4

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

nmap <leader>tn   :tabnew<CR>
nmap <leader>tp   :tabnext<CR>
nmap <leader>td   :tabclose<CR>
"nmap <leader>bn   :bNext<CR>
"nmap <leader>bp   :bprevious<CR>
"nmap <leader>bd   :bdelete<CR>
nmap <leader>w    :w<CR>
nmap <leader>yf   :YcmCompleter FixIt<CR>
nmap <leader>yd   :YcmCompleter GoToDefinition<CR>
nmap <leader>yi   :YcmCompleter GoToInclude<CR>
cmap <leader>yr   YcmCompleter RefactorRename

set winheight=5
