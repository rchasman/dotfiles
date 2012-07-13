" Basic .vimrc to make vim more usable
" install it by copying it into vim and typing
" :sav $HOME/.vimrc
" :so %
" (don't type the "'s they are comment symbols)

" not necessary unless you install pathogen
"filetype off
"call pathogen#infect()        " PATHOGEN om nom nom
filetype plugin indent on     " load file type plugins + indentation

"--------------------------------Colors---------------------------------------
"
set t_Co=256
"color molokai
colorscheme xoria

"----------------------------Vundle Bundles-----------------------------------
"Vundle Setup
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

"NERDTree
Bundle 'scrooloose/nerdtree'

"Surround
Bundle 'tpope/vim-surround'
"
"Powerline
Bundle 'Lokaltog/vim-powerline'
let g:Powerline_symbols = 'fancy'
set fillchars+=stl:\ ,stlnc:\

"Rainbow Parens
Bundle 'kien/rainbow_parentheses.vim'
au VimEnter * RainbowParenthesesToggle
au VimEnter * RainbowParenthesesLoadRound
au VimEnter * RainbowParenthesesLoadSquare
au VimEnter * RainbowParenthesesLoadBraces

"-------------------------------Settings--------------------------------------

set nocompatible                  " give me vim, not vi
set modelines=0                   " no exploits plox
set tabstop=4                     " four space indent
set shiftwidth=4
set softtabstop=4
set expandtab                     " I want spaces, not tabs
set shiftround                    " round my spaces to a multiple of shiftwidth
set showcmd                       " display incomplete commands
set encoding=utf-8                " encoding of the people
set scrolloff=3                   " start scrolling before I hit the bottom
set autoindent                    " give me some indent
set smartindent                   " make good indentation choices
"set showmode                      " tell me what mode I'm working in
set showcmd                       " tells us useful thing about what we are doing
set hidden                        " lets us know about all buffers
set wildmenu                      " show us all completions
set wildmode=list:longest
"set ttyfast                       " fast terminal = moar characters sent
"set ruler                         " show line and column of current position
set backspace=indent,eol,start    " delete anything
set laststatus=2                  " always have a status line
set undofile                      " make my undos persistent

let mapleader = ","     " make , the <leader> instead of \
                        " leader is useful for custom commands

"sane regexes, like perl and python
nnoremap / /\v
vnoremap / /\v

set ignorecase  " ignore case when searching
set smartcase   " unless I mix case
set gdefault    " replace everything on a line by default
set incsearch   " search incrementally
set hlsearch    " highlight search matches
set showmatch   " jump to matching brackets

"clear out highlighting by hitting ', '
nnoremap <leader><space> :noh<cr>

"make tab match bracket pairs
nnoremap <tab> %
vnoremap <tab> %

set wrap               " wrap lines
set textwidth=80       " max width is 80 characters
set formatoptions=qrn1 " r = insert comment character,
                       " q = format comments with gq,
                       " n1 = recognize formatted lists
"set colorcolumn=+1     " highlight the column after textwidth
highlight ExtraWhitespace ctermbg=yellow guibg=yellow
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=yellow guibg=yellow
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
"call matchadd('ErrorMsg', '\%>79v.\+')

" If you want to make sure not to use arrow keys,
" uncomment the following lines.
 nnoremap <up> <nop>
 nnoremap <down> <nop>
 nnoremap <left> <nop>
 nnoremap <right> <nop>
 inoremap <up> <nop>
 inoremap <down> <nop>
 inoremap <left> <nop>
 inoremap <right> <nop>

" This line tells vim that clj files are clojure files
au BufRead,BufNewFile *.clj set filetype=clojure

" fix file lines vs. editor lines
nnoremap j gj
nnoremap k gk

syntax enable     " enable syntax highlighting
syntax on

" use ; for commands instead of :
nnoremap ; :

au FocusLost * :wa    " save on losing focus

" ,W strips trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" ,ev will edit your vimrc
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

" jj for escape
inoremap jj <ESC>

" ,w makes a new window and switches to it
nnoremap <leader>w <C-w>v<C-w>l

"change windows with <C-movement>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" abbreviation
ab sop System.out.println(

" nothing should beep or flash
set noeb vb t_vb=

" makes the delete key work better
fixdel

"better line numbers
set rnu
au InsertEnter * :set nu
au InsertLeave * :set rnu
au FocusGained * :set rnu
au FocusLost * :set nu
