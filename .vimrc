" Vundle stuff

set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
""""""" Plugins
" Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-syntastic/syntastic'
"Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'lambdalisue/vim-findent'
"Plugin 'reedes/vim-pencil'
Plugin 'jamessan/vim-gnupg'
Plugin 'vim-scripts/bash-support.vim'
Plugin 'iago-lito/vim-visualMarks'
Plugin 'xuhdev/vim-latex-live-preview'
"Plugin 'vim-python/python-syntax'
Plugin 'davidhalter/jedi-vim'
"Plugin 'szymonmaszke/vimpyter'
"Plugin 'vim-airline/vim-airline'
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" some basics
set encoding=utf-8
set term=xterm-256color
set autoread
set ignorecase smartcase
set ai
set si
set wrap
"set tw=100
"set linebreak
set showcmd
syntax on
set backspace=2
set noautochdir
filetype plugin on
filetype on
set number norelativenumber
set cursorline
" color definitions
colorscheme ron
hi SpellBad ctermbg=124 ctermfg=016
let mapleader=" "
" hi Cursor guibg=white guifg=grey
" do not change directory to current file:
" folds
set foldenable
set foldmethod=manual
set shiftwidth=2
" some usefull remaps from lukesmith
" Shortcutting split navigation, saving a keypress:
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l
" Enable autocompletion:
	set wildmode=longest,list,full
" Disables automatic commenting on newline:
" autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
"set formatoptions=

"guardar y cargar folds.
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 
autocmd BufLeave *.* mkview
autocmd BufEnter *.* silent loadview 

" set bash to be the default shell

let g:is_bash = 1
"(default, no syntax folding) 
""(enable function folding)
"(enable heredoc folding)
"(enable if/do/for folding)
let g:sh_fold_enabled= 3     " function heredoc folding
" Bash support personalization
let g:BASH_AuthorName   = 'Mariano Forti'     
let g:BASH_AuthorRef    = 'MF'                         
let g:BASH_Email        = 'mfotri@cnea.gov.ar'
let g:BASH_Company      = 'Comisión Nacional de Energía Atómica'    
"let g:BASH_AlsoBash = [ '*.SlackBuild' , 'rc.*','/tmp/*','*config/*','*.conf','.retrieve','.send','send','retrieve'] 
let g:BASH_MapLeader = ","

" Fortran specific commands
let fortran_fold=1
let fortran_fold_conditionals=1
let fortran_fold_multilinecomments=1
au! BufRead,BufNewFile *.f90 let b:fortran_do_enddo=1
au! BufRead,BufNewFile *.f90 set expandtab

" completion for ycm:
" let g:ycm_filepath_completion_use_working_dir = 0

" set big font
set gfn=Monospace\ 12

" set vim syntax for vimrc
autocmd BufEnter ~/.vimrc  set syntax=vim
autocmd BufEnter ~/.config/vifm/vifmrc  set syntax=vim
"source vimrc whenever modified
autocmd Bufleave ~/.vimrc source ~/.vimrc 

"Some maps obtained from lukesmith
" Spell-check set to <leader>o, 'o' for 'orthography':
map <leader>en :setlocal spell! spelllang=en_us<CR>|:syntax spell toplevel
map <leader>es :setlocal spell! spelllang=es<CR>|: syntax spell toplevel
" otros maps convenientes
map <leader>pdf  :w\| !okular %<.pdf &<CR>
map <leader>w :w<CR>
map <leader>q :q<CR>
" comando para abrir y redimensionar lista de tareas
map <leader>tdl :vsplit ~/Bitacoras/2020/ListaDeTareas2020.md <CR>
autocmd BufRead,BufWinEnter,BufWrite ListaDeTareas*.md :vertical resize 50 <CR>
" buffers
set wildchar=<tab> wildmenu wildmode=full 
set wildcharm=<C-z>

nnoremap <tab> :b <C-z>
nnoremap <F10> :bd<CR>

"comando para compilar markdown con pandoc
"let g:python_highlight_space_errors = 0
"let g:python_highlight_space_errors = 0
"let g:python_highlight_all = 1
"autocmd BufRead, BufNewFile, BufNewFile *.py set filetype=python
autocmd BufRead, BufNewFile, BufNewFile *.ipynb set filetype=json
autocmd BufRead,BufNewFile,BufWrite *.md set filetype=md
autocmd BufRead,BufNewFile,BufWrite *.md set syntax=markdown
autocmd BufEnter,BufNewFile TODAY.md,report_*.md  map <leader>w  :w\| !pandoc --template=/home/mariano/Bitacoras/2020/template.tex -V fancytitle=yes -V geometry="margin=1cm" "%:p" -o "%:p:r".pdf --pdf-engine=pdflatex <CR><CR>
autocmd BufEnter,BufNewFile ListaDeTareas2020.md map <leader>w  :w\| !pandoc --template=/home/mariano/Bitacoras/2020/ListaTemplate.tex -V fancytitle=yes "%:p" -o "%:p:r".pdf --pdf-engine=xelatex <CR><CR>

" Syntastic
let g:syntastic_python_checkers=['flake8 --ignore=E225,E501,E302,E261,E262,E701,E241,E126,E127,E128,W801','python3']

" snippets de ejecucion externa.
source ~/.vim/autocmds/exec.vim 

"some snippets of my own for vim 
source ~/.vim/autocmds/latex.vim 

" algunos registros predefinidos
source ~/.vim/autocmds/registers.vim 

" mappings para escribir mas rapido, abreviaturas. 
source ~/.vim/autocmds/abbrev.vim 

"jedi - vim commands"
source ~/.vim/jediopts.vim
