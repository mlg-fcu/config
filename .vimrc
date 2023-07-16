call plug#begin('~/.vim/plugged')

if !has('gui_running')
  set t_Co=256
endif
 
call plug#end()

let g:ale_set_highlights = 0
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:NERDTreeWinSize=20
let mapleader = " "
" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif
set timeoutlen=1000
set ttimeoutlen=0
set laststatus=2
set nocompatible
set noswapfile
set bs=2
set number
set incsearch
set background=dark
set columns=80
set colorcolumn=80
set tabstop=4
set wrapmargin=4
set shiftwidth=4
set nobk
syntax on
set expandtab
set cindent
set cursorline
set autoindent
set clipboard=unnamedplus
set ruler
set showmatch
set ignorecase

set spelllang=nl,en_gb

" tab show as error
match Error /\t/

if executable('rg')
    let g:rg_derive_root='true'
endif

map <leader>d :"_d
map <leader>yy "*y
map <leader>pp "*p
" toggle word case
map <leader>uu <esc> viwg~
map <leader>e :g/^$/d<CR>
map <leader>b :buffers<CR>
map <leader>cc <esc>`<i/* <Esc>`>a */<Esc>
"toggle spell check
map <leader>s :setlocal spell!<cr>

map <leader>j :wincmd h<CR>
map <leader>i :wincmd k<CR>
map <leader>k :wincmd j<CR>

noremap j h
noremap k j
noremap i k
noremap , i

export OPENAI_KEY="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"

export PATH=${PATH}:/Users/mlg/Documents/A-project/AI/GapitaCLI

