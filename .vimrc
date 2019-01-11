:cd ~/Documents/wd/
set nocompatible              " be iMproved, required
filetype off                  " required
set encoding=utf-8
set noerrorbells
set visualbell
set title
set backspace=indent,eol,start "Allow backspacing over indention, line breaks and insertion start.
set history=1000 "Increase the undo limit.

"colorscheme gotham
"https://github.com/whatyouhide/vim-gotham

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-sensible' "Sensible Vim Defaults
Plugin 'tpope/vim-vinegar' " vinegar.vim
Plugin 'miyakogi/conoline.vim' "Different Ln Hilights INSERT/NORMAL
let g:conoline_auto_enable = 1
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'jalvesaq/Nvim-R' "Nvim-R
Plugin 'jalvesaq/vimcmdline'
"Plugin 'tpope/vim-fugitive' "Git Wrapper Plugin
"""Plugin 'gaalcaras/ncm-R'
"""Plugin 'roxma/nvim-yarp'
"""Plugin 'roxma/vim-hug-neovim-rpc'
" NOTE: you need to install completion sources to get completions. Check
    " our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
"""Plugin 'ncm2/ncm2-bufword'
"""Plugin 'ncm2/ncm2-tmux'
"""Plugin 'ncm2/ncm2-path'
"colored bottombar
"Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline' "Powerline
Plugin 'vim-airline/vim-airline-themes' "Powerline Themes
let g:airline_theme='distinguished' "Colored Statusbar
Plugin 'felipec/notmuch-vim' "vim email client
"Plugin 'itchyny/lightline.vim'
"Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'whatyouhide/vim-gotham'
"Plugin 'jpalardy/vim-slime'
"Plugin 'chrisbra/csv.vim'
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
"Chris's Stuff"

"disable arrow keys
"noremap  <Up> ""
"noremap! <Up> <Esc>
"noremap  <Down> ""
"noremap! <Down> <Esc>
"noremap  <Left>:highlight CursorLine ctermbg=LightBlue ""
"noremap! <Left> <Esc>
"noremap  <Right> ""
"noremap! <Right> <Esc>

"Nvim-R remaps
noremap  _ ""
noremap! _ _
inoremap \= <-
inoremap =\ ->
inoremap \- <-
inoremap {{ <-
inoremap }} ->
inoremap -= <-

set number " show line numbers in vim
highlight LineNr ctermfg=black ctermbg=green
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
colorscheme distinguished2

"vim IDE instructions from http://mdzhang.com/posts/vim-tmux-rice-r/
"use system clipboard
set clipboard=unnamed
let g:slime_target = "tmux"

"let g:conoline_color_normal_dark = 'guibg=#333333 guifg=#dddddd'
"let g:conoline_color_insert_dark = 'guibg=black guifg=white'
"let g:conoline_color_normal_dark = 'guibg=#ff5f00' "conoline options (highlight line number insert/normal)
"let g:conoline_color_normal_nr_dark = 'guibg=#ff5f00'

"let g:conoline_color_insert_dark = 'guibg=#ff5f00'
"let g:conoline_color_insert_nr_dark = 'guibg=#ff5f00'
"let g:conoline_color_normal_light = "ctermbg=240"
"let g:conoline_color_normal_nr_light = "ctermbg=202 ctermfg=white"

"let g:conoline_color_insert_light = "ctermbg=black"
"let g:conoline_color_insert_nr_light = "ctermbg=143"
"let g:conoline_color_normal_dark = "ctermbg=240"
"let g:conoline_color_normal_nr_dark= "ctermbg=202 ctermfg=white"
"let g:conoline_color_insert_dark= "ctermbg=black"
"let g:conoline_color_insert_nr_dark = "ctermbg=143"



"vim-tmux-navigator: https://github.com/christoomey/vim-tmux-navigator
"
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

"vimfeatures - http://www.oualline.com/vim/10/vimrc.html
"Set the size of an indentation.
"
":set sw=4
"Have vim highlight the target of a search.
set hlsearch



augroup myvimrchooks
    au!
    autocmd bufwritepost .vimrc source ~/.vimrc
augroup END "vimrc autoreload

"I get a straight line, but my system encoding is UTF-8. You can also set whatever color you want for both foreground and background in your vimrc|init.vim Change line color:
hi VertSplit ctermbg=234 guibg=#1c1c1c ctermfg=234 guifg=#1c1c1c 
let R_assign = 0
let g:netrw_liststyle = 4 "Changing the directory view in netrw
:set mouse=a
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro rnu' "line numbering in netrw
:set relativenumber
:set rnu
:set macligatures

:set guifont=CourierNewCode\ Nerd\ Font:h12
autocmd InsertEnter * highlight CurserLineNr ctermfg=blue ctermbg=red
autocmd InsertLeave * highlight CurserLineNr ctermfg=red ctermbg=blue

"automatically save folds
"augroup AutoSaveFolds
  "autocmd!
  "autocmd BufWinLeave * mkview
  "autocmd BufWinEnter * silent loadview
"augroup END


"vim auto complete disabled commands
"autocmd BufEnter * call ncm2#enable_for_buffer()
"set completeopt=noinsert,menuone,noselect
