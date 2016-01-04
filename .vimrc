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

"---------------------------Vundle Plugins-------------------------------------

"Type :PluginInstall after putting in new Plugins :)

"------------------------------------------------------------------------------

set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

"a.vim - switches between header file and src file
"Plugin 'vim-scripts/a.vim'

"Better Javascript
Plugin 'pangloss/vim-javascript'
let g:javascript_conceal_function   = "ƒ"
let g:javascript_conceal_null       = "ø"
let g:javascript_conceal_this       = "@"
let g:javascript_conceal_return     = "⇚"
let g:javascript_conceal_undefined  = "¿"
let g:javascript_conceal_NaN        = "ℕ"
let g:javascript_conceal_prototype  = "¶"
let g:javascript_enable_domhtmlcss  = 1

"Better JSX
let g:jsx_ext_required = 0

"Better C colors
"Plugin 'justinmk/vim-syntax-extra'

"Surround
"Example - cs`' to change `Hello` to 'Hello'
Plugin 'tpope/vim-surround'

"Powerline
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

"Gundo
Plugin 'sjl/gundo.vim'
nnoremap <F5> :GundoToggle<cr>

"Vim-Fugitive
Plugin 'tpope/vim-fugitive'

"Syntastic
Plugin 'scrooloose/syntastic'
let g:syntastic_ruby_checkers = ['rubocop', 'mri']
let g:syntastic_quiet_messages = {'level': 'warnings'}
let g:loaded_syntastic_ruby_rubocop_checker = 1

"Rainbow Parens
Plugin 'kien/rainbow_parentheses.vim'
augroup RainbowParens
    autocmd!
    au VimEnter * RainbowParenthesesToggle
    au VimEnter * RainbowParenthesesLoadRound
    au VimEnter * RainbowParenthesesLoadSquare
    au VimEnter * RainbowParenthesesLoadBraces
augroup END

"Vim/Tmux Navigator
"Plugin 'christoomey/vim-tmux-navigator'

"Git Gutter
Plugin 'airblade/vim-gitgutter'

"Funcoo library
"Plugin 'rizzatti/funcoo.vim'

"Dash
"Plugin 'rizzatti/dash.vim'

"NERDTree
Plugin 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

call vundle#end()
filetype plugin indent on

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
set tabstop=2                     " four space indent
set softtabstop=2                 " four space indent
set shiftwidth=2                  " four space indents when using << or >>
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
    au BufNewFile,BufRead *.jsx.erb set filetype=javascript
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
