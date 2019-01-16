"+-------------------------------------+
"|              GENERAL                |
"+-------------------------------------+


:cd ~/Documents/wd/
set nocompatible              " be iMproved, required
filetype off                  " required
set encoding=utf-8
set noerrorbells
set visualbell
set title
set backspace=indent,eol,start "Allow backspacing over indention, line breaks and insertion start.
set history=1000 "Increase the undo limit.
set hlsearch
set showcmd

augroup myvimrchooks
	au!
	autocmd bufwritepost .vimrc source ~/.vimrc
augroup END "vimrc autoreload


"+-------------------------------------+
"|           VUNDLE SETTINGS           |
"+-------------------------------------+


set rtp+=~/.vim/bundle/Vundle.vim " set the runtime path to include Vundle and initialize
call vundle#begin() " alternatively, pass a path where Vundle should install plugins: 
"call vundle#begin('~/some/path/here') " uncomment line to change path
Plugin 'VundleVim/Vundle.vim' " let Vundle manage Vundle, required


"+-------------------------------------+
"|            T-POPE PLUGINS           |
"+-------------------------------------+


Plugin 'tpope/vim-sensible' " Sensible Vim Defaults
Plugin 'tpope/vim-vinegar' " vinegar.vim
"Plugin 'tpope/vim-fugitive' "Git Wrapper Plugin


"+-------------------------------------+
"|          N-NVIM - PLUGINS           |
"+-------------------------------------+


Plugin 'jalvesaq/Nvim-R' " Nvim-R
Plugin 'jalvesaq/vimcmdline'
Plugin 'ncm2/ncm2' " Completion Plugin
Plugin 'ncm-R' " R Completion source
Plugin 'roxma/nvim-yarp' " Yet Another Remote Plugin Framework

autocmd BufEnter * call ncm2#enable_for_buffer() " enable ncm2 for all buffers
set completeopt=noinsert,menuone,noselect " IMPORTANT: :help Ncm2PopupOpen for more information 

" NOTE: you need to install completion sources to get completions. Check
" our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
Plugin 'ncm2/ncm2-bufword'
Plugin 'ncm2/ncm2-path' " Needed for NCM2
if !has('nvim') " Vim 8 only
	Plugin 'roxma/vim-hug-neovim-rpc'
endif

Plugin 'sirver/UltiSnips' " Optional: for snippet support
Plugin 'ncm2/ncm2-ultisnips' " Further configuration might be required, read below
Plugin 'ncm2/ncm2-tmux'

"Plugin 'lervag/vimtex' " Optional: better Rnoweb support (LaTeX completion)

set shortmess+=c " suppress the annoying 'match x of y', 'The only match' and 'Pattern not " found' messages

" When the <Enter> key is pressed while the popup menu is visible, it only  hides the menu. 
" Use this mapping to close the menu and also start a new  line.
inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")

" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" wrap existing omnifunc
" Note that omnifunc does not run in background and may probably block the
" editor. If you don't want to be blocked by omnifunc too often, you could
" add 180ms delay before the omni wrapper:
"  'on_complete': ['ncm2#on_complete#delay', 180,
"               \ 'ncm2#on_complete#omni', 'csscomplete#CompleteCSS'],
au User Ncm2Plugin call ncm2#register_source({
	\ 'name' : 'css',
	\ 'priority': 9, 
	\ 'subscope_enable': 1,
	\ 'scope': ['css','scss'],
	\ 'mark': 'css',
	\ 'word_pattern': '[\w\-]+',
	\ 'complete_pattern': ':\s*',
	\ 'on_complete': ['ncm2#on_complete#omni', 'csscomplete#CompleteCSS'],
	\ })
"____________________________________________________________________________________________
"Vim YARP settings - Yet Another Remote Plugin Framework for Neovim

let g:pyenv_host_prog = '/usr/local/bin/pyenv'
let g:pip_host_prog = '/usr/local/bin/pip'
let g:python_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/Library/Frameworks/Python.framework/Versions/3.7/bin/python3'

let g:loaded_python_provider = 0
let g:loaded_python3_provider = 0

let $NVIM_PYTHON_LOG_FILE="/tmp/nvim_log"
let $NVIM_PYTHON_LOG_LEVEL="DEBUG"

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

let R_args_in_stline = 1 "show arguments in line
"inoremap <silent> <expr> <CR> ncm2_ultisnips#expand_or("\<CR>", 'n')
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<tab>"
"let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
"let g:UltiSnipsEditSplit="vertical"


"+-------------------------------------+
"|          THEME SETTINGS             |
"+-------------------------------------+

"colored bottombar
"Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline' "Powerline
Plugin 'vim-airline/vim-airline-themes' "Powerline Themes
"let g:airline_='distinguished' "Colored Statusbar
let g:airline_theme='distinguished' "Colored Statusbar
Plugin 'felipec/notmuch-vim' "vim email client
"Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'whatyouhide/vim-gotham'
"Plugin 'jpalardy/vim-slime'
"Plugin 'chrisbra/csv.vim'

Plugin 'miyakogi/conoline.vim' "Different Ln Hilights INSERT/NORMAL
let g:conoline_auto_enable = 1
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

"Plugin 'scrooloose/nerdtree'
"Plugin 'mattn/emmet-vim' "snippet expander
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
"Plugin 'vim-scripts/Vim-R-plugin'
" git repos on your local machine (i.e. when working on your own plugin)
" ->Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.

" Plugin 'ascenator/L9', {'name': 'newL9'}"Plugin 'vim-airline/vim-airline'
:set noshowmode


"-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



"+-------------------------------------+
"|               REMAPS                |
"+-------------------------------------+


noremap  _ ""
noremap! _ _
inoremap \= <-
inoremap =\ ->

inoremap <C-x><c-o> <C-n>


"+-------------------------------------+
"|          THEME SETTINGS             |
"+-------------------------------------+

:set wrap
set linebreak
set nolist  " list disables linebreak
set number " show line numbers in vim
highlight LineNr ctermfg=black ctermbg=white
set relativenumber " show relative numbers
"256 colors CHEATSHEAT!!!!!! - https://jonasjacek.github.io/colors/
""vim colors tutorial - https://alvinalexander.com/linux/vi-vim-editor-color-scheme-syntax
"highlight Normal ctermbg=Blue
"This highlight command can be read as “When using a color terminal (cterm), set the background terminal color (ctermbg) to Blue for the ‘Normal’ group.”

"Options
hi CursorLine cterm=NONE ctermbg=28
":hi CursorColumn cterm=NONE ctermbg=232

" -> cursor settings <- "
" Change cursor shape - http://vim.wikia.com/wiki/Change_cursor_shape_in_different_modes
let &t_SI.="\e[5 q"
let &t_SR.="\e[4 q"
let &t_EI.="\e[1 q"
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10
:set cursorline
set guioptions= "Remove MacVim Statusbar


syntax on
"colorscheme distinguished2
colorscheme blue

"I get a straight line, but my system encoding is UTF-8. You can also set whatever color you want for both foreground and background in your vimrc|init.vim Change line color:
hi VertSplit ctermbg=234 guibg=#1c1c1c ctermfg=234 guifg=#1c1c1c
let R_assign = 0
"let g:netrw_liststyle = 4 "Changing the directory view in netrw
:set mouse=a
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro rnu' "line numbering in netrw
:set relativenumber
:set rnu
set macligatures
":set macligatures

:set guifont=CourierNewCode\ Nerd\ Font:h12
"autocmd InsertEnter * :highlight CurserLineNr ctermfg= ctermbg=red
"autocmd InsertLeave * :highlight CurserLineNr ctermfg=white ctermbg=black


"colorscheme gotham
"https://github.com/whatyouhide/vim-gothamset showbreak=>\ \ |


"+-------------------------------------+
"|          T-MUX SETTINGS             |
"+-------------------------------------+


"vim-tmux-navigator: https://github.com/christoomey/vim-tmux-navigator
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> {Left-Mapping} :TmuxNavigateLeft<cr>
nnoremap <silent> {Down-Mapping} :TmuxNavigateDown<cr>
nnoremap <silent> {Up-Mapping} :TmuxNavigateUp<cr>
nnoremap <silent> {Right-Mapping} :TmuxNavigateRight<cr>
nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>

" first, enable status line always
set laststatus=2

" now set it up to change the status line based on mode
if version >= 700
	au InsertEnter * hi StatusLine term=reverse ctermbg=5 gui=undercurl guisp=Magenta
	au InsertLeave * hi StatusLine term=reverse ctermfg=0 ctermbg=2 gui=bold,reverse
endif

let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime_paste"

"vim IDE instructions from http://mdzhang.com/posts/vim-tmux-rice-r/
"use system clipboard
set clipboard=unnamed
let g:slime_target = "tmux"


"-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"


"vimfeatures - http://www.oualline.com/vim/10/vimrc.html
"Set the size of an indentation.
"
":set sw=4
"Have vim highlight the target of a search.

"automatically save folds
"augroup AutoSaveFolds
"autocmd!
"autocmd BufWinLeave * mkview
"autocmd BufWinEnter * silent loadview
"augroup END


"vim auto complete disabled commands
"autocmd BufEnter * call ncm2#enable_for_buffer()
"set completeopt=noinsert,menuone,noselect

" note trailing space at end of next line

au! BufNewFile,BufRead *.R,*.Rout,*.r,*.Rhistory,*.Rt,*.Rout.save,*.Rout.fail,*.RProfile* setf r


"+-------------------------------------+
"|               NOTES                 |
"+-------------------------------------+


"   Remove Trailing Characters - :%s/\s\+$//e
"   fix indents gg=G


"+-------------------------------------+
"|             UNORGANIZED             |
"+-------------------------------------+


let g:netrw_liststyle = 3 "set netrw to use a tree style listing
let g:netrw_browse_split = 4 "make it open the file in the previous window to the right of the project drawer
let g:netrw_altv = 1
let g:netrw_winsize = 25 "set the width of the window. The value is set in percent of the total window width
let g:netrw_banner = 0
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END "launch right after you’ve entered Vim
let g:netrw_list_hide = '.git,.sass-cache,.jpg,.png,.svg,.afphoto'

setglobal showcmd

