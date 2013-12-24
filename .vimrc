" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim72/vimrc_example.vim or the vim manual
" and configure vim to your own liking!
set number
syntax on
set showcmd
set mouse=a

filetype plugin indent on
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"

if has('gui_running')
	colorscheme Tomorrow
else
	set background=dark
	colo peachpuff
endif

set guioptions-=T
set guioptions-=r
set guioptions-=L

set guifont=DejaVu\ Sans\ Mono\ 8

set guicursor=n-v-c:block-Cursor
set guicursor+=i:block-Cursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkon0

" Pour que la powerline fonctionne
let $PYTHONPATH="/usr/lib/python3.3/site-packages"

set laststatus=2
