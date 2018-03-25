"{{{                     VIM SETTINGS
"**************************************************************************

"{{{                     General functions
"**************************************************************************

" autosave view
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
if &term =~ '256color'
    " disable Background Color Erase (BCE) so that color schemes
    " render properly when inside 256-color tmux and GNU screen.
    " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
    set t_ut=
endif

" Auto resizing of focuesed window
let &winwidth = &columns * 6 / 10

au BufWritePre * :%s/\s\+$//e       " trailing whitespaces

"}}}***********************************************************************
"{{{                     General configs
"**************************************************************************

" set shell=/usr/bin/fish
" set runtimepath+=~/.config/nvim/bundle/Plug.vim/
set mouse=a                         " enable mouse support
set noswapfile                      " turn off swap files
set nobackup                        " turn off backup files
set nowritebackup                   " turn off backup files
set clipboard=unnamed,unnamedplus   " use system clipboard
set tags+=gems.tags                 " ctags
set nu                              " enable left numbers
set fillchars=vert:\                " disable vert div chars
set nocompatible                    " be iMproved, required
set cursorline                      " highlight the cursor screen line #performance issues
" set cursorcolumn                    " highlight the cursor screen line
set scrolloff=5                     " minimal number of screen lines to keep above and below the cursor
set spell spelllang=en_us           " spellchecker
set colorcolumn=120                 " right margin
set lazyredraw                      " increase rendering speed
set splitbelow                      " split new horizontal tab bellow
set splitright                      " split new vertical tab right
set autoread                        " autoreload files (when change branch on git)
set encoding=utf-8
set nohlsearch                      " turn off highlighting

set title " show filename in title
" ?set history=1000
" ?set nowrap " disable wrapping strings (when they very long)
" ?set undofile " undo changes between sessions

" " show spaces and tabs
" ?set list
" ?set listchars=tab:▷⋅,trail:⋅,nbsp:⋅

" Auto indentation
" ?set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab " replace tabs to spaces
" ?set smarttab " only even number of spaces (3 spaces + tab = 4 spaces, 2 spaces + tab = 4 spaces)
set backspace=2 " make backspace work like most other apps

highlight Comment cterm=italic      " italic comments
let &showbreak='↪ '

"}}}***********************************************************************
"{{{                     Plugins
"**************************************************************************

call plug#begin('~/.vim/plugged')
  Plug 'Valloric/YouCompleteMe'
  Plug 'gmarik/Vundle.vim'                " setup Vundle

" Navigation
  Plug 'bkad/CamelCaseMotion'
  Plug 'Lokaltog/vim-easymotion'          " number | letter motions for vim
  Plug 'scrooloose/nerdtree'              " Nerdtree panel
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'ctrlpvim/ctrlp.vim'               " search through the files
  Plug 'rking/ag.vim'                     " search through the content
  Plug 'majutsushi/tagbar'                " you can set tags for lines
  Plug 'matze/vim-move'                   " move selected code lines
  " Plug 'Shougo/deoplete.nvim'   " autocompletion plugin (NeoVim)
  " Plug 'Shougo/neco-vim'        "  search in source for deoplete
  " Plug 'Shougo/neoinclude.vim'  " search in included files for deoplete
  " Plug 'Shougo/neco-syntax'     " search in syntax for deoplete
  " Plug 'junegunn/fzf'           " fuzzy finder

  " Correction
  Plug 'w0rp/ale'                         " async linter
  Plug 'Valloric/YouCompleteMe', { 'do': './install.py' } " fast fuzzy-search code completion engine
  Plug 'junegunn/vim-easy-align'          " align tool
  Plug 'ntpeters/vim-better-whitespace'   " highlights trailing whitespaces
  Plug 'Raimondi/delimitMate'             " automatic closing of quotes
  Plug 'Valloric/MatchTagAlways'          " highlight XML/HTML tags that enclose your cursor location
Plug 'rhysd/vim-grammarous'             " grammar checker based on LanguageTool
Plug 'haya14busa/vim-open-googletranslate' " translates text in the google
  Plug 'tyru/open-browser.vim'            " dependency for vim-open-googletranslate
  " Plug 'ryanoasis/vim-devicons'         " Custom icons for vim

  " Appearance
  Plug 'airblade/vim-gitgutter'           " GIT commands
  Plug 'kshenoy/vim-signature'            " plugin to place, toggle and display marks.
  Plug 'Bling/vim-airline'                " status-bar
  Plug 'gorodinskiy/vim-coloresque'       " shows colors by names
  Plug 'tpope/vim-fugitive'               " the best Git wrapper
  Plug 'tpope/vim-rhubarb'
  " ?Plug 'direnv/direnv.vim'                " integration Direnv and Vim
  Plug 'mhinz/vim-startify'               " provides a start screen for Vim

  " General editing
  Plug 'tpope/vim-surround'               " for manipulation with quotes :)
  Plug 'tomtom/tcomment_vim'              " commenter
  Plug 'AndrewRadev/switch.vim'           " useful switcher
  Plug 'Yggdroot/indentLine'              " prints vertical lines at each indentation level
  Plug 'terryma/vim-multiple-cursors'     " ability to edit with multiple cursors

  " Ruby/Rails
  Plug 'tpope/vim-endwise'                " autocomplete ruby blocks
  Plug 'tpope/vim-rails'                  " for working with Ruby on Rails applications
  Plug 'vim-ruby/vim-ruby'
  Plug 'thoughtbot/vim-rspec'
  Plug 'victorfeijo/binding-pry-vim'
" Plug 'Chiel92/vim-autoformat' " + install ruby-beautify gem

  " Elixir
  Plug 'elixir-lang/vim-elixir'           " support for elixir
  Plug 'slashmili/alchemist.vim'          " uses ElixirSense to give inside information about your elixir project

  " Languages
  Plug 'slim-template/vim-slim'
  Plug 'kchmck/vim-coffee-script'
  Plug 'zaiste/tmux.vim'
  Plug 'elzr/vim-json'
  Plug 'TAKAyukiatkwsk/vim-mongoid-syntax'
  Plug 'pangloss/vim-javascript'
  Plug 'plasticboy/vim-markdown'
  Plug 'lilydjwg/colorizer'                " highlight colors in css files
  Plug 'joker1007/vim-ruby-heredoc-syntax' " highlights HEREDOC syntax

" JavaScript
  Plug 'mxw/vim-jsx'

  " Send commands to TMUX
  Plug 'jgdavey/tslime.vim'
  let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")'

" Colorschemes
  " Plug 'railscasts'
  " Plug 'iCyMind/NeoSolarized'
  " Plug 'KeitaNakamura/neodark.vim'
  " Plug 'reewr/vim-monokai-phoenix'
  " Plug 'dracula/vim'

  call plug#end()

"}}}***********************************************************************
"{{{                     Color schemes
"**************************************************************************


" NeoSolarized
set termguicolors
colorscheme NeoSolarized
set background=dark
let g:neosolarized_vertSplitBgTrans = 1

" Railscasts
" colorscheme railscasts

" colorscheme monokai-phoenix

" colorscheme neodark
" let g:neodark#terminal_transparent = 1
" let g:neodark#use_custom_terminal_theme = 1


"}}}***********************************************************************
"{{{                     Key Settings
"**************************************************************************

let g:multi_cursor_next_key='<C-d>'



" Turn off arrow keys (this might not be a good idea for beginners,
" but it is
" the best way to ween yourself of arrow keys on to hjkl)
" http://yehudakatz.com/2010/07/29/everyone-who-tried-to-convince-me-to-use-vim-was-wrong/
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>"
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Map ESC
imap jj <ESC>
" move between splits by tab
nnoremap <Tab> <C-w>w

" navigate between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" open selected text in browser
vnoremap <leader>t :OpenGoogleTranslate<CR>

" navigate through autocomplete menu (Deoplete)
inoremap <C-k> <C-Up>
inoremap <C-j> <C-Down>

" turn search highlight off
" ?nnoremap <Leader><space> :noh<cr>
nnoremap <Leader><space> :noh<CR> :IndentLinesReset <CR> :redraw <CR>

" ctags
map <Leader>z :CtrlPTag<CR>

" rails
map <Leader>h :AV<CR>

" open current file in browser
map <Leader>o :!open %<CR>

" rspec
" map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e

" jump to end of text you pasted
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" no comment :)
" ?noremap === :Autoformat<CR>

"}}}***********************************************************************
"{{{                     Mappings | Plugin settings
"**************************************************************************

" set leader button
let mapleader = ","
let g:mapleader = ","

" easymotion
let g:EasyMotion_smartcase = 1
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)


" set airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'
set laststatus=2

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

let g:ale_completion_enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_echo_msg_error_str = '☠ '
let g:ale_echo_msg_warning_str = '♿ '
let g:ale_sign_error = '☠ '
let g:ale_sign_warning = '♿ '
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_column_always = 1

" vim jsx
 let g:jsx_ext_required = 0 " Allow JSX in normal JS files

" move
let g:move_key_modifien = 'C'

" switch on -
let g:switch_mapping = "-"

" IndentLine
let g:indentLine_char = '¦'
" let g:indentLine_color_term = 239
" map <C-i> :IndentLinesToggle<CR>
" let g:indentLine_enabled = 1
" let g:indentLine_concealcursor=""

" YouCompleteMe
let g:ycm_keep_logfiles = 1
let g:ycm_log_level = 'debug'
let g:EclimCompletionMethod = 'omnifunc'

" nerd tree
map <C-n> :NERDTreeToggle<CR>
map <C-f> :NERDTreeFind<CR>
let NERDTreeShowHidden=1

" nerd-tree-git
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
" ale config
let g:ale_linters = {
\   'ruby': ['ruby', 'reek', 'rubocop', 'brakeman', 'rails_best_practices'],
\   'elixir': ['credo'],
\   'graphql': ['eslint']
\}

" add tags highlighting to js
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'javascript' : 1,
    \}

" ctrl P
let g:ctrlp_show_hidden = 1
map <Leader>c :CtrlP<CR>
set wildignore+=*/tmp/*,*.so,*.swp,*.log,*/vendor/*,*/public/*,*/coverage/*,*tags,*/bin/*
set wildignore+=*/node_modules/**/*

if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_use_caching = 0
  let g:ctrlp_user_command = 'ag %s -l --nocolor --nogroup --column -g ""
    \ --ignore-dir "bin"
    \ --ignore-dir "coverage"
    \ --ignore-dir "data"
    \ --ignore-dir "design"
    \ --ignore-dir "doc"
    \ --ignore-dir "log"
    \ --ignore-dir "public"
    \ --ignore-dir "spec_old"
    \ --ignore-dir "studios"
    \ --ignore-dir "template"
    \ --ignore-dir "tmp"
    \ --ignore-dir "vendor"
    \ --ignore-dir "vendor"
    \ --ignore-dir "verificator"
    \ --ignore "*.log"
    \ --ignore "*tags"
    \ --ignore "db/schema*"'

  " AG
  map <Leader>g :Ag<SPACE>
  let g:ag_prg='ag -S --nocolor --nogroup --column
    \ --ignore-dir "bin"
    \ --ignore-dir "coverage"
    \ --ignore-dir "data"
    \ --ignore-dir "design"
    \ --ignore-dir "doc"
    \ --ignore-dir "lib"
    \ --ignore-dir "log"
    \ --ignore-dir "public"
    \ --ignore-dir "spec_old"
    \ --ignore-dir "studios"
    \ --ignore-dir "template"
    \ --ignore-dir "tmp"
    \ --ignore-dir "vendor"
    \ --ignore-dir "vendor"
    \ --ignore-dir "verificator"
    \ --ignore "*.log"
    \ --ignore "*tags"
    \ --ignore "db/schema*"'
endif

" use system languagetool instead of downloading new
" let g:grammarous#languagetool_cmd = 'languagetool'
"

" set default working directory, don't enable if you want to
" use alchemist.vim
" " shortkey for fuzzy finder
" nnoremap z :FZF<CR>
" setun preview window for fuzzy finder
" let $FZF_DEFAULT_OPTS='--preview "[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (highlight -O ansi -l {} || coderay {} || rougify {} || cat {}) 2> /dev/null | head -500"'


" cd ~/Documents/programming/work/linksquares-v2/

"}}}***********************************************************************
