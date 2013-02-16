call pathogen#infect()
call pathogen#runtime_append_all_bundles() 
call pathogen#helptags()

set nocp            "Disable compatibility Vi mode

" 256 colors
set t_Co=256
colorscheme molokai

syn on              "Activate syntax highlighting
filetype plugin on  "Activate auto plugin activation based on filetype
filetype indent on  "Activate auto indentation configuration associated with filetype

set completeopt=longest,menuone
set ofu=syntaxcomplete#Complete  "Activate Omni Completion

"Indentation and Tabs config
set ai              "Activate automatic indentation
set smartindent     "Do smart autoindenting when starting a new line
set expandtab       "In insert mode use the proper number of space when pressing TAB
set tabstop=4       "Tabs mean 4 space
set shiftwidth=4    "Indent use 4 space
set bs=2            "Set indent,oel,start for backspace 

autocmd FileType make setlocal noexpandtab

"Some informative settings
set statusline=%<%f\ %h%m%r%y%=%b\ 0x%B\ \%-14.(%l,%c%V%)\ %P   "Set a status line giving various information
set statusline+=\ %{exists('g:loaded_fugitive')?fugitive#statusline():''} "If available, give Git location in Statusline
"set cursorline      "Highlight the cursor line
set laststatus=2    "Last window get a status line
set viminfo='20,\"50    "Read the viminfo file at startup 
set history=100      "Number of command/search to be remembered
set ruler           "Show the line and column number
set number          "Display line number
set numberwidth=3   "Line number size

"Window/View Options
set splitbelow      "Tell new splits open below the active window, not above it:
set splitright      "Tell new vertical open to the right of the active window:
set scrolloff=2     "Minimal number of screen lines to keep above and below the cursor
set showbreak="> "  "String to put at the start of lines that have been wrapped
set sidescrolloff=20    "The minimal number of screen columns to keep to the left and to the right of the cursor if 'nowrap' is set
set wmh=1           "The minimal height of a window when it's not the current window

"File management settings
set backup          "Make a backup before overwriting a file
set backupdir=$HOME/.vim/tmp " keep backup files in one location
set autoread        "Automatically re-read file when change outside of Vim
set autowrite       "Activate an automatic write of the file on some various commands
set ffs=unix,dos,mac    "Format to try for EOL
"Special FileType .mod as PHP
au BufRead,BufNewFile *.mod set filetype=PHP
"Special FileType .pp (Puppet) as Ruby
au BufRead,BufNewFile *.pp set filetype=ruby

set showmatch       "When a bracket is inserted, briefly jump to the matching one
set wildmenu        "When 'wildmenu' is on, command-line completion operates in an enhanced mode

"Search related Options
set incsearch       "Show searched pattern while matched
set ignorecase smartcase       "Override the 'ignorecase' option if the search pattern contains upper case characters
" Press F4 to toggle highlighting on/off.
noremap <F4> :set hls!<CR>
" Press Space to turn off highlighting and clear any message already
" displayed.
noremap <silent> <Space> :silent noh<Bar>echo<CR>

"Misc Options
set wildignore=*.o,*.obj,*.bak,*.exe
set mouse=a         "Mouse mode that help when selecting with mouse
let mapleader = ","
"Toggle Paste mode
noremap <F5> :set paste!<CR>
" Add ignorance of whitespace to diff
set diffopt+=iwhite
set ttyfast         " for speed and better rendering
noremap <F9> :w !sudo tee %<CR>

"Buffer Options
nnoremap <tab> :bn<cr>
nnoremap <S-tab> :bp<cr>
nmap <leader>d :bd<cr>
nmap <leader>D :bufdo bd<cr>
"the sequence `,d` will delete the current buffer without killing the window
nmap <leader>d :bprevious<CR>:bdelete #<CR>

"Activate the tagbar Window
nmap <F8> :TagbarToggle<CR>
set tags=$HOME/ctags.db "Where is the ctags Database

""NERDTree Plugin's Setting
"autocmd VimEnter * NERDTree
"NERDTreeIgnore
let NERDTreeIgnore=[]
let NERDTreeIgnore+=['.*\~$']
let NERDTreeIgnore+=['.*\.pyc$']
"setup NERDtree mapping
map <F2> :NERDTreeToggle<CR>

"Some Configuration for Omni-Completion with python
"autocmd FileType python set omnifunc=pythoncomplete#Complete
"This should show the PyDoc and auto close it when cursor move
"autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif


"Options for MRU plugins
nmap <F3> :MRU<CR>
let MRU_Max_Entries = 200
let MRU_Exclude_Files = '^/tmp/.*\|^/var/tmp/.*'  " For Unix

"Some Gundo Options that can be used
nnoremap <F6> :GundoToggle<CR>
"let g:gundo_width = 60          "Set the horizontal width of the Gundo graph (and preview)
"let g:gundo_preview_height = 40 "Set the vertical height of the Gundo preview
let g:gundo_right = 1           "Set this to 1 to make the Gundo graph (and preview) open on the right side instead of the left. 
let g:gundo_preview_bottom = 1  "Force the preview window below current windows instead of below the graph. This gives the preview window more space to show the unified diff. 
"let g:gundo_help = 1            "Set this to 0 to disable the help text in the Gundo graph window.
"let g:gundo_disable = 0         "Set this to 1 to disable Gundo entirely.

"Special key for moving lines
nnoremap <C-j> :m+<CR>==
nnoremap <C-k> :m-2<CR>==
inoremap <C-j> <Esc>:m+<CR>==gi
inoremap <C-k> <Esc>:m-2<CR>==gi
vnoremap <C-j> :m'>+<CR>gv=gv
vnoremap <C-k> :m-2<CR>gv=gv

"Configuration for Ack
let g:ackprg="ack-grep -H --nocolor --nogroup --column"
nnoremap <leader>a :Ack

"Tab navigation
noremap <silent> <C-H> :tabp<CR>
noremap <silent> <C-L> :tabn<CR>

"Activate plugin RainbowParantheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
"Had to disable Chevrons since it conflicts with PHP Syntax
"au Syntax * RainbowParenthesesLoadChevrons

" load the matchit plugin.
runtime macros/matchit.vim

runtime ftplugin/man.vim
