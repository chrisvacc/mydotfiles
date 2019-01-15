"-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
"--------------------------------------------------------------------------------------------   GENERAL SETTINGS   -------------------------------------------------------------------------------------"
"-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"


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
set showbreak=>\ \ |
:set wrap
:set linebreak
:set nolist  " list disables linebreak


"-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"

"colorscheme gotham
"https://github.com/whatyouhide/vim-gotham

"-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
"--------------------------------------------------------------------------------------------   VUNDLE SETTINGS   --------------------------------------------------------------------------------------"
"-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


"--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
"--------------------------------------------------------------------------------------------   T POPE PLUGIN   -----------------------------------------------------------------------------------------
"--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


Plugin 'tpope/vim-sensible' "Sensible Vim Defaults
Plugin 'tpope/vim-vinegar' " vinegar.vim


"--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



"--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
"-------------------------------------------------------------------------------------   NVIM R RELATED SETTINGS   -------------------------------------------------------------------------------------"
"-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"


Plugin 'jalvesaq/Nvim-R' "Nvim-R
Plugin 'jalvesaq/vimcmdline'
" NCM2:
" assuming you're using vim-plug: https://github.com/junegunn/vim-plug
Plugin 'ncm2/ncm2'
"Plugin 'roxma/nvim-yarp'
"Plugin 'jalvesaq/Nvim-R'
Plugin 'gaalcaras/ncm-R'
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme='distinguished' "Colored Statusbar
:set noshowmode
" Vim 8 only
if !has('nvim')
    Plugin 'roxma/vim-hug-neovim-rpc'
endif

" Optional: for snippet support
" Further configuration might be required, read below
Plugin 'sirver/UltiSnips'
Plugin 'ncm2/ncm2-ultisnips'

" Optional: better Rnoweb support (LaTeX completion)
Plugin 'lervag/vimtex'

Plugin 'roxma/nvim-yarp'
"Vim YARP settings - Yet Another Remote Plugin Framework for Neovim
"let g:python_host_prog = '/usr/local/opt/python@2/bin/python2.7'
"let g:python_host_prog = '/usr/local/Cellar/python@2/2.7.15/Frameworks/Python.framework/Versions/2.7/bin/python'
let g:pyenv_host_prog = '/usr/local/bin/pyenv'
let g:pip_host_prog = '/usr/local/bin/pip'
let g:python_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/Library/Frameworks/Python.framework/Versions/3.7/bin/python3'

let g:loaded_python_provider = 0
let g:loaded_python3_provider = 0

let $NVIM_PYTHON_LOG_FILE="/tmp/nvim_log"
let $NVIM_PYTHON_LOG_LEVEL="DEBUG"

" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

" NOTE: you need to install completion sources to get completions. Check
" our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
Plugin 'ncm2/ncm2-bufword'
Plugin 'ncm2/ncm2-tmux'
Plugin 'ncm2/ncm2-path'
"Plugin 'tpope/vim-fugitive' "Git Wrapper Plugin

"""Plugin 'gaalcaras/ncm-R'
"""Plugin 'roxma/nvim-yarp'
"""Plugin 'roxma/vim-hug-neovim-rpc'
" NOTE: you need to install completion sources to get completions. Check
    " our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
"""Plugin 'ncm2/ncm2-bufword'
"""Plugin 'ncm2/ncm2-stingtmux'
"""Plugin 'ncm2/ncm2-path'

let R_args_in_stline = 1 "show arguments in line


"--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

"-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
"----------------------------------------------------------------------------------------   THEME PLUGINS   --------------------------------------------------------------------------------------------"
"-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"


"colored bottombar
"Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline' "Powerline
Plugin 'vim-airline/vim-airline-themes' "Powerline Themes
let g:airline_='distinguished' "Colored Statusbar
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
" Plugin 'ascenator/L9', {'name': 'newL9'}


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


"-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
"----------------------------------------------------------------------------------------------   REMAPS   ---------------------------------------------------------------------------------------------"
"-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"


noremap  _ ""
noremap! _ _
inoremap \= <-
inoremap =\ ->

inoremap <C-x><c-o> <C-n>


"-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
"-------------------------------------------------------------------------------------------   END VUNDLE   --------------------------------------------------------------------------------------------"


"-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
"----------------------------------------------------------------------------------------   Theme Settings   -------------------------------------------------------------------------------------------"
"-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"


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


"-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"


"-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
"-------------------------------------------------------------------------------------------   T-MUX SETTINGS   ----------------------------------------------------------------------------------------"
"-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"

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

"vimfeatures - http://www.oualline.com/vim/10/vimrc.html
"Set the size of an indentation.
"
":set sw=4
"Have vim highlight the target of a search.



augroup myvimrchooks
    au!
    autocmd bufwritepost .vimrc source ~/.vimrc
augroup END "vimrc autoreload


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

















"-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
"---------------------------------------------------------------------------------------------   NOTES   -----------------------------------------------------------------------------------------------"
"-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"


"   Remove Trailing Characters - :%s/\s\+$//e


"-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"




