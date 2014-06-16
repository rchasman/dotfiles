"------------------------------------------------------------------------------
"     ___           ___           ___             ___     __     ___
"    /  /\         /  /\         /  /\           /__/|   / /\   /  /\
"   /  /::\       /  /::\       /  /:/_          | |:|  / /:/  /  /:/_
"  /  /:/\:\     /  /:/\:\     /  /:/ /\         | |:|  |_|/  /  /:/ /\
" /  /:/~/:/    /  /:/  \:\   /  /:/ /:/_        | |:|       /  /:/ /::\
"/__/:/ /:/___ /__/:/ \__\:\ /__/:/ /:/ /\  _____|_|:|      /__/:/ /:/\:\
"\  \:\/:::::/ \  \:\ /  /:/ \  \:\/:/ /:/ /  /::::::\      \  \:\/:/~/:/
" \  \::/~~~~   \  \:\  /:/   \  \::/ /:/  ~~~~~~~  \:\      \  \::/ /:/
"  \  \:\        \  \:\/:/     \  \:\/:/          \  \:\      \__\/ /:/
"   \  \:\        \  \::/       \  \::/            \  \:\       /__/:/
"    \__\/         \__\/         \__\/              \__\/       \__\/
"
"                     Zany Vim Run Configuration
"------------------------------------------------------------------------------

"--------------------------------Setup-----------------------------------------

filetype plugin indent on

if has('autocmd')
    augroup reload
        autocmd!
        au bufwritepost .vimrc source $MYVIMRC
    augroup END
endif

"--------------------------------Colors----------------------------------------

syntax on
"set t_Co=256
"color molokai
"colorscheme xoria
colorscheme jellybeans
"colorscheme solarized
"let g:solarized_termcolors=256
"set background=dark
"colorscheme desert

"---------------------------Vundle Bundles-------------------------------------

"Type :BundleInstall after putting in new Bundles :)

"------------------------------------------------------------------------------

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

"a.vim - switches between header file and src file
Bundle 'vim-scripts/a.vim'

"Better C colors
Bundle 'justinmk/vim-syntax-extra'

"Surround
"Example - cs`' to change `Hello` to 'Hello'
Bundle 'tpope/vim-surround'

"Powerline
Bundle 'Lokaltog/vim-powerline'
let g:Powerline_symbols = 'fancy'
set fillchars+=stl:\ ,stlnc:\

"Gundo
Bundle 'sjl/gundo.vim'
nnoremap <F5> :GundoToggle<cr>

"Vim-Fugitive
Bundle 'tpope/vim-fugitive'

"Syntastic
Bundle 'scrooloose/syntastic'

"Rainbow Parens
Bundle 'kien/rainbow_parentheses.vim'
augroup RainbowParens
    autocmd!
    au VimEnter * RainbowParenthesesToggle
    au VimEnter * RainbowParenthesesLoadRound
    au VimEnter * RainbowParenthesesLoadSquare
    au VimEnter * RainbowParenthesesLoadBraces
augroup END

"Vim/Tmux Navigator
Bundle 'christoomey/vim-tmux-navigator'

"Git Gutter
Bundle 'airblade/vim-gitgutter'

"Funcoo library
"Bundle 'rizzatti/funcoo.vim'

"Dash
"Bundle 'rizzatti/dash.vim'

"NERDTree
"Bundle 'scrooloose/nerdtree'

"--------------------------------Settings--------------------------------------

set nocompatible                  " give me vim, not vi
set encoding=utf-8                " encoding of the people
set undofile                      " make my undos persistent
set modelines=0                   " no exploits plox
set noeb vb t_vb=                 " disables beeps, dings and flashes
set scrolloff=5                   " start scrolling before the bottom is hit
set hidden                        " lets us know about all buffers
set ttyfast                       " fast terminal = moar characters sent
set laststatus=2                  " always have a status line
set backspace=indent,eol,start    " delete anything
set gdefault                      " replace everything on a line by default
set incsearch                     " search incrementally
set hlsearch                      " highlight search matches
set showmatch                     " jump to matching brackets

set autoindent                    " give me some indent
set smartindent                   " make good indentation choices
set expandtab                     " space indents instead of tabs
set tabstop=4                     " four space indent
set softtabstop=4                 " four space indent
set shiftwidth=4                  " four space indents when using << or >>
set shiftround                    " round spaces to a multiple of shiftwidth

set showmode                      " show working mode
set showcmd                       " more detailed commands
set ignorecase                    " ignore case when searching
set smartcase                     " unless I mix case
set wildmenu                      " show us all completions
set wildmode=list:longest         " long menu lists
set wrap                          " wrap lines past width
set nu                            " show line numbers automatically

set ruler                         " show line and column of current position
set textwidth=79                  " max width is 79 characters
set colorcolumn=+1                " highlight the column after textwidth

set omnifunc=syntaxcomplete#Complete "Omni Complete ON

"------------------------------Abbreviations-----------------------------------

ab sop System.out.println(
ab printf printf("");
ab cl console.log("

"------------------------------Filetypes---------------------------------------

augroup Filetypes
    autocmd!
    au Filetype pl set syntax=prolog
augroup END

"------------------------------Fomatting---------------------------------------

set formatoptions=qrn1 " r = insert comment character,
                       " q = format comments with gq,
                       " n1 = recognize formatted lists

" annoying error red highlighting when past 79 chars per line
" call matchadd('ErrorMsg', '\%>79v.\+')

" highlight whitespace
hi ExtraWhitespace ctermbg=yellow guibg=yellow

" color things
augroup Formatting
    autocmd!
    autocmd ColorScheme * hi ColorColumn ctermbg=darkgrey guibg=darkgrey
    autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
    autocmd InsertLeave * match ExtraWhitespace /\s\+$/
augroup END

" better line numbers
augroup LineNumbers
    autocmd!
    au InsertEnter * :set rnu
    au InsertLeave * :set rnu!
augroup END

"----------------------------Leader Commands-----------------------------------

" make , the <leader> instead of \
let mapleader = ","

" ', ' clears out highlighting
nnoremap <leader><space> :noh<cr>

" ',W' strips trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" ',ev' opens .vimrc in a new buffer
"nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

" ,w makes a new window and switches to it
"nnoremap <leader>w <C-w>v<C-w>l

"--------------------------------Remaps----------------------------------------

" use ; for commands instead of :
nnoremap ; :

" jj for escape
inoremap jj <ESC>

" make tab match bracket pairs
nnoremap <tab> %
vnoremap <tab> %

" no arrow keys for hardcore vimmers
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

"change windows with <C-movement>
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
map <C-j> <C-w>j<C-w>_
map <C-k> <C-w>k<C-w>_

"au FocusLost * :wa    " save on losing focus

"sane regexes, like perl and python
nnoremap / /\v
vnoremap / /\v

"----------------------------------Fixes---------------------------------------

" makes the delete key work better
fixdel

" fix file lines vs. editor lines
nnoremap j gj
nnoremap k gk

" fixes for vim-latex
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
