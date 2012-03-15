call pathogen#infect()
call pathogen#runtime_append_all_bundles() 
set nocp            "Disable compatibility Vi mode
set bs=2            "Set indent,oel,start for backspace 
set smartindent     "Do smart autoindenting when starting a new line
set ai              "Activate automatic indentation
set backup          "Make a backup before overwriting a file
set autoread        "Automatically re-read file when change outside of Vim
set autowrite       "Activate an automatic write of the file on some various commands
set ffs=unix,dos,mac    "Format to try for EOL
set showbreak="> "  "String to put at the start of lines that have been wrapped
set showmatch       "When a bracket is inserted, briefly jump to the matching one
set sidescrolloff=20    "The minimal number of screen columns to keep to the left and to the right of the cursor if 'nowrap' is set
set ignorecase smartcase       "Override the 'ignorecase' option if the search pattern contains upper case characters
set statusline=%<%f\ %h%m%r%y%=%b\ 0x%B\ \%-14.(%l,%c%V%)\ %P   "Set a status line giving various information
set statusline+=\ %{exists('g:loaded_fugitive')?fugitive#statusline():''}
"set cursorline      "Highlight the cursor line
set laststatus=2    "Last window get a status line
set wildmenu        "When 'wildmenu' is on, command-line completion operates in an enhanced mode
set scrolloff=2     "Minimal number of screen lines to keep above and below the cursor
set viminfo='20,\"50    "Read the viminfo file at startup 
set history=50      "Number of command/search to be remembered
set ruler           "Show the line and column number
syn on              "Activate syntax highlighting
set wmh=1           "The minimal height of a window when it's not the current window
filetype plugin on  "Activate auto plugin activation based on filetype
filetype indent on  "Activate auto indentation configuration associated with filetype
set tags=/home/slamon/.vim/ctags.db "Where is the ctags Database
let g:BASH_AuthorName   = 'Sylvain Lamontagne'
let g:BASH_Email        = 'sylvain.lamontagne@gmail.com'
let g:BASH_Company      = 'LamsSoft'
let MRU_Max_Entries = 200
set incsearch       "Show searched pattern while matched
set expandtab       "In insert mode use the proper number of space when pressing TAB
set tabstop=4       "Tabs mean 4 space
set shiftwidth=4    "Indent use 4 space
autocmd FileType make setlocal noexpandtab
" Press Space to turn off highlighting and clear any message already
" displayed.
noremap <silent> <Space> :silent noh<Bar>echo<CR>
" Press F4 to toggle highlighting on/off.
noremap <F4> :set hls!<CR>
set wildignore=*.o,*.obj,*.bak,*.exe
set number          "Display line number
set numberwidth=3   "Line number size
set mouse=a         "Mouse mode that help when selecting with mouse

"Tell new splits open below the active window, not above it:
set splitbelow 

"Tell new vertical open to the right of the active window:
set splitright 
autocmd VimEnter * NERDTree

"the sequence `\d` will delete the current buffer without killing the window
nmap <leader>d :bprevious<CR>:bdelete #<CR>

nmap <F8> :TagbarToggle<CR>

"NERDTreeIgnore
let NERDTreeIgnore=[]
let NERDTreeIgnore+=['.*\~$']
let NERDTreeIgnore+=['.*\.pyc$']

"setup NERDtree mapping
map <F2> :NERDTreeToggle<CR>


" this gives me convenient key mappings for window movement
"nnoremap <C-h> <C-w>h
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
"nnoremap <C-l> <C-w>l

"This allows you to hit Escape to unset the 'last search pattern' register 

:runtime! ftplugin/man.vim
