runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

" Force messages to be in English
language message en

" Forget being compatible with good ol' vi
set nocompatible

if has("autocmd")
    " Turn on indent
	filetype plugin indent on
    " Add syntax for VB files
	au BufNewFile,BufRead *.cls,*.frm set filetype=vb
endif

" Turn on syntax highlight
if &t_Co > 2 || has("gui_running")
	syntax on
endif

" Allow to leave an unsaved buffer
set hidden

" Tabstops are 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

" Don't update the display while executing macros
set lazyredraw

" At least let yourself know what mode you're in
set showmode

" Enable enhanced command-line completion. Presumes you have compiled
" with +wildmenu.  See :help 'wildmenu'
set wildmenu

" Set command lie two lines high
set ch=2

" Config for line status
set stl=%f\ %m\ %r\ Line:\ %l/%L[%p%%]\ Col:\ %c\ Buf:\ #%n\ [%b][0x%B]

" tell Vim to always put a status line in, even if there is only one
" window
set laststatus=2

" Allow the cursor to go in to "invalid" places
set virtualedit=all

"set line numers
set number
"set no line wrapping
set nowrap

" Set default file encoding to UTF-8 and, if not possible, latin1
set fileencodings=utf-8,latin1

" Backspace through end of line start of line and indentation
set backspace=indent,eol,start

" Incremental search
set incsearch

" Set leader
let mapleader=","

" Edit Vimrc and Source Vimrc for quick changes
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Quick buffer delete
nnoremap <leader>bd :bd<cr>

" Quick switch between windows
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l

"ESC under tripple leader
noremap <Leader><Leader><Leader> <Esc>

"BuffExplorer settings
let g:bufExplorerSplitBelow=1
let g:bufExplorerHorzSize=8

"Gundo settings
nnoremap <silent> <F5> :GundoToggle<CR>

"NERDTree settings
nnoremap <silent> <C-t> :NERDTreeToggle<CR>

"tagbar settings
nnoremap <silent> <F6> :TagbarToggle<CR>