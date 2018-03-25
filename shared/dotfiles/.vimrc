colorscheme monokai-phoenix
highlight Comment cterm=italic " italic comments

if &term =~ '256color'
    " disable Background Color Erase (BCE) so that color schemes
    " render properly when inside 256-color tmux and GNU screen.
    " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
    set t_ut=
endif

set mouse=a " enable mouse support

"------------------- Vim settings -----------------------
" autosave view
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

au BufWritePre * :%s/\s\+$//e       " trailing whitespaces
" set shell=/usr/bin/fish
set noswapfile                      " turn off swap file
set clipboard=unnamed,unnamedplus   " use system clipboard
set tags+=gems.tags                 " ctags
set nu                              " enable left numbers
set fillchars=vert:\                " disable vert div chars
set nocompatible                    " be iMproved, required
set cursorline                      " highlight the cursor screen line # performance issues
" set cursorcolumn                    " highlight the cursor screen line
set scrolloff=5                     " minimal number of screen lines to keep above and below the cursor "
set spell spelllang=en_us           " spellchecker
set colorcolumn=120                 " right margin
set lazyredraw                      " increase rendering speed
set splitbelow                      " split new horizontal tab bellow
set splitright                      " split new vertical tab right
set encoding=utf-8

highlight Comment cterm=italic

" Auto indentation
set expandtab
set shiftwidth=2
set softtabstop=2
set backspace=2 " make backspace work like most other apps


" String to put at the start of lines that have been wrapped "
let &showbreak='↪ '

" jump to end of text you pasted
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" leader
let mapleader=","

" Auto resizing of focuesed window
let &winwidth = &columns * 6 / 10



"---------------- Plugins -------------------
call plug#begin('~/.vim/plugged')

  Plug 'Valloric/YouCompleteMe'
  Plug 'gmarik/Vundle.vim'

" Navigation

  Plug 'bkad/CamelCaseMotion'
  Plug 'Lokaltog/vim-easymotion'
  Plug 'scrooloose/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'rking/ag.vim'
  Plug 'majutsushi/tagbar'
  Plug 'matze/vim-move'

  " Correction
  Plug 'w0rp/ale'
  Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
  Plug 'junegunn/vim-easy-align'
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'Raimondi/delimitMate'                   " automatic closing of quotes

" Appearance

  Plug 'airblade/vim-gitgutter'
  Plug 'kshenoy/vim-signature'
  Plug 'Bling/vim-airline'                      " status-bar
  Plug 'gorodinskiy/vim-coloresque'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'

" General editing
  Plug 'tpope/vim-surround'                     " for manipulation with quotes :)
  Plug 'tomtom/tcomment_vim'                    " commenter
  Plug 'AndrewRadev/switch.vim'                 " useful switcher
  Plug 'junegunn/vim-easy-align'
  " Plug 'raghur/vim-ghost', {'do': ':GhostInstall'}
  Plug 'Yggdroot/indentLine'           " Prints vertical lines at each indentation level

" Ruby/Rails
  Plug 'tpope/vim-endwise'
  Plug 'tpope/vim-rails'
  Plug 'vim-ruby/vim-ruby'
  Plug 'thoughtbot/vim-rspec'
  Plug 'victorfeijo/binding-pry-vim'

" Languages

  Plug 'slim-template/vim-slim'
  Plug 'kchmck/vim-coffee-script'
  Plug 'zaiste/tmux.vim'
  Plug 'elzr/vim-json'
  Plug 'TAKAyukiatkwsk/vim-mongoid-syntax'
  Plug 'pangloss/vim-javascript'
  Plug 'plasticboy/vim-markdown'

" JavaScript

  Plug 'mxw/vim-jsx'

" Send commands to TMUX

  Plug 'jgdavey/tslime.vim'


  let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")'



call plug#end()
"-------------- Plugins Settings--------------


" easy align
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" easymotin
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
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
" ale config
let g:ale_linters = {
\   'ruby': ['ruby', 'reek', 'rubocop', 'brakeman', 'rails_best_practices'],
\   'elixir': ['credo'],
\   'graphql': ['eslint']
\}

let g:ale_completion_enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_echo_msg_error_str = '☠ '
let g:ale_echo_msg_warning_str = '♿'
let g:ale_sign_error = '☠ '
let g:ale_sign_warning = '♿'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_column_always = 1

" vim jsx

let g:jsx_ext_required = 0 " Allow JSX in normal JS files

map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e

" rspec
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

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


" rails
map <Leader>h :AV<CR>

" open current file in browser
map <Leader>o :!open %<CR>

" AG

" youcompleteme
let g:EclimCompletionMethod = 'omnifunc'

" ctags
map <Leader>z :CtrlPTag<CR>

" move
let g:move_key_modifien = 'C'

" switch on -
let g:switch_mapping = "-"

" IndentLine
let g:indentLine_char = '¦'
let g:indentLine_color_term = 239
map <C-i> :IndentLinesToggle<CR>
let g:indentLine_enabled = 1


" Turn off arrow keys (this might not be a good idea for beginners, but it is
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
" vnoremap <leader>t :OpenGoogleTranslate<CR>

" navigate through autocomplete menu (Deoplete)
inoremap <C-k> <C-Up>
inoremap <C-j> <C-Down>


let g:ycm_keep_logfiles = 1
let g:ycm_log_level = 'debug'

"---------------------- Ent -----------------------------
