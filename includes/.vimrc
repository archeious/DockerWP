" This must be first, because it changes other options as side effect
set nocompatible

" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
"call pathogen#helptags()
"call pathogen#runtime_append_all_bundles()

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Vundle Plugins
Plugin 'bling/vim-airline'

" End Vundle plugins

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase, case-sensitive otherwise
set visualbell           " don't beep
set noerrorbells         " don't beep
set title                " change the terminal's title
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set number        " show line numbers
set expandtab     " insert space characters when tab is pressed
set tabstop=4     " insert n spaces when tab is pressed
set shiftwidth=4  " insert n spaces when indenting
set bg=light      " set background/color scheme brightness. ex: light and dark
set scrolloff=3   " Makes scrolling down suck less

"if &t_Co >= 256 || has("gui_running")
"  " colorscheme darkblue
"endif

"if &t_Co > 2 || has("gui_running")
   " switch syntax highlighting on, when the terminal has colors
   syntax on
"endif

"set list
"set listchars=tab:>.,trail:.,extends:#,nbsp:.
"autocmd filetype html,xml set listchars-=tab:>.

"set mouse=a
"nmap <silent> ,/ :nohlsearch<CR>

" make lines longer than 120 characters errors (including newline)
autocmd FileType perl match ErrorMsg /\%>119v.\+/

" Stop doing the annoying 'Ex mode' when hitting shift+Q
nmap Q <Nop>
map <D-PageUp> <Esc>:tabp<CR>
map <D-PageDown> <Esc>:tabn<CR>
nmap tq <Esc>:q<CR>
nmap tp <Esc>:tabp<CR>
nmap tn <Esc>:tabn<CR>
nmap tm <Esc>:tabm
nmap te <Esc>:tabe |
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
nmap <C-Up> [e
nmap <C-Down> ]e

" Fix parenthesis cursor highlighting
"hi MatchParen cterm=none ctermbg=green ctermfg=blue
"hi MatchParen cterm=bold ctermbg=none ctermfg=magenta

" Air-line settings
set laststatus=2
