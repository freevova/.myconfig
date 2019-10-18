"**************************************************************************
"                               VIM SETTINGS
"**************************************************************************

"**************************************************************************
" ### Plugins
"**************************************************************************

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

if has('nvim')
  NeoBundle 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }  " autocompletion plugin (NeoVim)
else
  NeoBundle 'Shougo/deoplete.nvim'
  NeoBundle 'roxma/nvim-yarp'
  NeoBundle 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

" Appearance
NeoBundle 'KeitaNakamura/neodark.vim'                " colorscheme & syntax highlighting
  let g:airline_theme='neodark'
NeoBundle 'altercation/vim-colors-solarized'         " colorscheme
NeoBundle 'Yggdroot/indentLine'                      " prints vertical lines at each indentation level
  let g:indentLine_char = '¦'
NeoBundle 'ntpeters/vim-better-whitespace'           " highlights trailing whitespaces
NeoBundle 'Raimondi/delimitMate'                     " automatic closing of quotes
NeoBundle 'rhysd/vim-grammarous'                     " grammar checker based on LanguageTool
NeoBundle 'Bling/vim-airline'                        " status-bar
  set laststatus=2
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#branch#enabled = 0
  let g:airline_powerline_fonts = 1
  let g:airline_theme='neodark'
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
NeoBundle 'Asheq/close-buffers.vim'                  " helpful plugin to work with buffers
nmap <leader>q :CloseBuffers<CR>
NeoBundle 'direnv/direnv.vim'
NeoBundle 'blueyed/vim-diminactive'                    " dim inactive windows
  " let g:diminactive_use_syntax = 1                     " dim inactive syntax
" NeoBundle 'ryanoasis/vim-devicons'                     " icons for files
  " let g:webdevicons_conceal_nerdtree_brackets = 1
  " let g:WebDevIconsNerdTreeAfterGlyphPadding = ''

" NeoBundle 'w0rp/ale'                                 " async linter
"   let g:ale_linters = {
"   \  'ruby':       ['ruby', 'reek', 'rubocop', 'brakeman', 'rails_best_practices'],
"   \  'elixir': ['credo', 'dialyxir', 'elixir-ls', 'mix'],
"   \  'javascript': ['eslint'],
"   \}
"   let g:ale_fixers = {
"   \  'elixir': ['mix_format'],
"   \}
"   nmap <C-M> <Plug>(ale_fix)
"   let g:ale_completion_enabled = 1
"   let g:airline#extensions#ale#enabled = 1
"   let g:ale_echo_msg_error_str = '☠'
"   let g:ale_echo_msg_warning_str = '♿'
"   let g:ale_sign_error = '☠'
"   let g:ale_sign_warning = '♿'
"   let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"   let g:ale_sign_column_always = 1
" " let g:ale_elixir_elixir_ls_release='/home/vova/.config/elixir-ls/release'

" General editing
NeoBundle 'tpope/vim-surround'                       " for manipulation with quotes :)
NeoBundle 'tomtom/tcomment_vim'                      " commenter
  nnoremap // :TComment<CR>
  vnoremap // :TComment<CR>
NeoBundle 'AndrewRadev/switch.vim'                   " useful switcher
  let g:switch_mapping = "-"
NeoBundle 'terryma/vim-multiple-cursors'             " ability to edit with multiple cursors
NeoBundle 'Chiel92/vim-autoformat'                   " install ruby-beautify gem
  noremap === :Autoformat<CR>
NeoBundle 'bkad/CamelCaseMotion'                     " uses CamelCase jumps
  map <silent> w <Plug>CamelCaseMotion_w
  map <silent> b <Plug>CamelCaseMotion_b
  map <silent> e <Plug>CamelCaseMotion_e
  map <silent> ge <Plug>CamelCaseMotion_ge
  sunmap w
  sunmap b
  sunmap e
  sunmap ge
NeoBundle 'kshenoy/vim-signature'                    " plugin to place, toggle and display marks.
NeoBundle 'Lokaltog/vim-easymotion'                  " number | letter motions for vim
  let g:EasyMotion_smartcase = 1
  map  / <Plug>(easymotion-sn)
  omap / <Plug>(easymotion-tn)
  map  n <Plug>(easymotion-next)
  map N <Plug>(easymotion-prev)
  " Type <Leader><Leader>w(<Plug>(easymotion-w)) to trigger the word motion
  " Type <Leader><Leader>fo(<Plug>(easymotion-w)) to trigger the word motion
NeoBundle 'junegunn/vim-easy-align'                  " align tool
  vmap <Enter> <Plug>(EasyAlign)                     " align on Enter
  nmap ga <Plug>(EasyAlign) "<Paste>                 " Start interactive EasyAlign for a motion/text object (e.g. gaip)
  xmap ga <Plug>(EasyAlign)                          " Start interactive EasyAlign in visual mode (e.g. vipga)
NeoBundle 'tpope/vim-endwise'                        " autocomplete end blocks
NeoBundle 'AndrewRadev/splitjoin.vim'                " brake code expression into multiple lines
NeoBundle 'majutsushi/tagbar'                        " shows tags
NeoBundle 'mmorearty/elixir-ctags'                   " shows tags for elixir
" NeoBundle 'jakedouglas/exuberant-ctags'

  " " Vim-Alchemist Configuration
  " let g:alchemist#elixir_erlang_src = "/Users/amacgregor/Projects/Github/alchemist-source"
  " let g:alchemist_tag_disable = 1

  " Elixir Tagbar Configuration
  let g:tagbar_type_elixir = {
      \ 'ctagstype' : 'elixir',
      \ 'kinds' : [
          \ 'f:functions',
          \ 'functions:functions',
          \ 'c:callbacks',
          \ 'd:delegates',
          \ 'e:exceptions',
          \ 'i:implementations',
          \ 'a:macros',
          \ 'o:operators',
          \ 'm:modules',
          \ 'p:protocols',
          \ 'r:records',
          \ 't:tests'
      \ ]
      \ }
  noremap tt :TagbarToggle<CR>

" Elixir
NeoBundle 'elixir-editors/vim-elixir'                " support for elixir
NeoBundle 'slashmili/alchemist.vim'                  " uses ElixirSense to give inside information about your elixir project
  let g:alchemist#elixir_erlang_src = "/usr/local/share/src"

NeoBundle 'janko/vim-test'                           " a Vim wrapper for running tests on different granularities.
  " these "Ctrl mappings" work well when Caps Lock is mapped to Ctrl
  nmap <silent> t<C-n> :TestNearest<CR>
  nmap <silent> t<C-f> :TestFile<CR>
  nmap <silent> t<C-s> :TestSuite<CR>
  nmap <silent> t<C-l> :TestLast<CR>
  nmap <silent> t<C-g> :TestVisit<CR>
  " let test#strategy = "vtr"
  let test#strategy = "tslime"

" TMUX
NeoBundle 'zaiste/tmux.vim'
NeoBundle 'jgdavey/tslime.vim'                       " runs test commands in a tmux pane you specify.
  let g:tslime_always_current_session = 1            " run in current session
NeoBundle 'christoomey/vim-tmux-navigator'           " allow you to move between Vim panes and tmux splits
" NeoBundle 'christoomey/vim-tmux-runner'              " command runner for sending commands from vim to tmux
NeoBundle 'benmills/vimux'                           " runs commands from vim in the tmux
" prompt for a command to run
  map <Leader>vp :VimuxPromptCommand<CR>

" Haskell
NeoBundle 'neovimhaskell/haskell-vim'

" Finders
NeoBundle 'rking/ag.vim'                             " search through the content
  if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor
    map <Leader>g :Ag<Space>
    let g:ag_prg='ag -S --nocolor --nogroup --column
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
      \ --ignore "db/schema*"
      \ --ignore "yarn.lock"'

      if !exists(":Ag")
        command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
        nnoremap \ :Ag<SPACE>
      endif
    endif
NeoBundle 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " search file by name
NeoBundle 'junegunn/fzf.vim'                                           " search files by name
  nnoremap <Leader>b :Buffers<CR>
  nnoremap <Leader>f :GFiles<CR>
  nnoremap <Leader>F :Files<CR>
  nnoremap <Leader>h :History<CR>
  nnoremap <Leader>H :Helptags!<CR>
  nnoremap <Leader>l :BLines<CR>
  nnoremap <Leader>L :Lines<CR>
  nnoremap <Leader>M :Maps<CR>
  nnoremap <Leader>t :BTags<CR>
  nnoremap <Leader>T :Tags<CR>
  nnoremap <Leader>' :Marks<CR>

  " Customize fzf colors to match your color scheme
  let g:fzf_colors =
  \ { 'fg':      ['fg', 'Normal'],
    \ 'bg':      ['bg', 'Normal'],
    \ 'hl':      ['fg', 'Comment'],
    \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
    \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
    \ 'hl+':     ['fg', 'Statement'],
    \ 'info':    ['fg', 'PreProc'],
    \ 'prompt':  ['fg', 'Conditional'],
    \ 'pointer': ['fg', 'Exception'],
    \ 'marker':  ['fg', 'Keyword'],
    \ 'spinner': ['fg', 'Label'],
    \ 'header':  ['fg', 'Comment'] }

" GIT
NeoBundle 'airblade/vim-gitgutter'                   " GIT commands
NeoBundle 'tpope/vim-fugitive'                       " the best Git wrapper

" File manager
NeoBundle 'scrooloose/nerdtree'                      " File manager
  map <C-p> :NERDTreeToggle<CR>
  map <C-f> :NERDTreeFind<CR>
  autocmd FileType nerdtree setlocal relativenumber  " make sure relative line numbers are used
  let NERDTreeShowLineNumbers=1                      " enable line numbers
  let NERDTreeCascadeSingleChildDir=0                " for folder embeding
  let NERDTreeShowHidden=1                           " show hidden files
NeoBundle 'Xuyuanp/nerdtree-git-plugin'
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

" " Ruby/Rails
" NeoBundle 'tpope/vim-rails'                          " for working with Ruby on Rails applications
" NeoBundle 'joker1007/vim-ruby-heredoc-syntax'        " highlights HEREDOC syntax
" NeoBundle 'vim-ruby/vim-ruby'
" NeoBundle 'thoughtbot/vim-rspec'
"   map <Leader>t :call RunCurrentSpecFile()<CR>
"   map <Leader>s :call RunNearestSpec()<CR>
"   map <Leader>l :call RunLastSpec()<CR>
"   map <Leader>a :call RunAllSpecs()<CR>
"   let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")' " command to run<Paste>
" NeoBundle 'victorfeijo/binding-pry-vim'

" JS, HTML, CSS
NeoBundle 'slime-lang/vim-slime-syntax'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'mxw/vim-jsx'
" NeoBundle 'gorodinskiy/vim-coloresque'               " shows colors by names(conflicts with alchemist)
" NeoBundle 'elzr/vim-json'
" NeoBundle 'Valloric/MatchTagAlways'                  " highlight XML/HTML tags that enclose your cursor location
"   let g:mta_filetypes = {
"       \ 'html'       : 1,
"       \ 'xhtml'      : 1,
"       \ 'xml'        : 1,
"       \ 'jinja'      : 1,
"       \ 'javascript' : 1,
"       \}

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

"**************************************************************************
" ### General configs
"**************************************************************************

syntax enable
colorscheme neodark
" set background=dark
" colorscheme solarized

" set shell=zsh              " set shell
set re=1                            " syntax highlighting enhancements
set nu                              " enable left numbers
set rnu                             " relative line numbers
set mouse=a                         " enable mouse support
set noswapfile                      " turn off swap files
set nobackup                        " turn off backup files
set nowritebackup                   " turn off backup files
set clipboard+=unnamedplus          " use system clipboard
set fillchars=vert:\                " disable vert div chars
set cursorline                      " highlight the cursor screen line #performance issues
" set cursorcolumn                    " highlight the cursor screen line
set scrolloff=3                     " minimal number of screen lines to keep above and below the cursor
set spell spelllang=en_us           " spellchecker
set colorcolumn=120                 " right margin

set ttyfast                         " Improve vim's scrolling speed
set splitbelow                      " split new horizontal tab bellow
set splitright                      " split new vertical tab right
set autoread                        " autoreload files (when change branch on git)
set encoding=utf-8                  " encoding
set nohlsearch                      " turn off highlighting
set title                           " show filename in title
set list                            " show spaces
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅ " customize spaces
set tabstop=2                       " auto indentation
set shiftwidth=2                    " auto indentation
set softtabstop=2                   " auto indentation
set expandtab                       " replace tabs to spaces
set smarttab                        " only even number of spaces (3 spaces + tab = 4 spaces, 2 spaces + tab = 4 spaces)
set backspace=2                     " make backspace work like most other apps
set fillchars+=vert:│               " sets vertical separator as it is in tmux
set hidden                          " hidden mode for buffers

" To speed vim
" set nocursorline
" set lazyredraw
" set synmaxcol=200

highlight Comment cterm=italic      " italic comments
let &showbreak='↪ '                 " break symbol

"**************************************************************************
" ### Key Settings
"**************************************************************************

let mapleader = ","
let g:mapleader = ","

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
" nnoremap <Tab> <C-w>w
"
" move between buffers by tab
nmap <Tab> :bnext<CR>
nmap <C-S-Tab> :bprev<CR>

" navigate between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" navigate through autocomplete menu ()
inoremap <C-k> <C-Up>
inoremap <C-j> <C-Down>

" open current file in browser
map <Leader>o :!open %<CR>

" jump to end of text you pasted
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" Toggle fold at current position.
" (Using s-tab to avoid collision between <tab> and <C-i>).
nnoremap <s-tab> za


" copy selected word into search input
vnoremap /s y/<C-R>"<CR>

" <Leader>r -- Cycle through relativenumber + number, number (only), and no
" numbering (mnemonic: relative).
" nnoremap <silent> <Leader>r :call Cycle_numbering()<CR>

" **************************************************************************
" ### Other settings
" **************************************************************************

" Remove trailing whitespaces
au BufWritePre * :%s/\s\+$//e

if has('folding')
  if has('windows')
    let &fillchars='vert: '           " less cluttered vertical window separators
  endif
  set foldmethod=indent               " not as cool as syntax, but faster
  set foldlevelstart=99               " start unfolded
endif

" Show proper termguicolors
if (has("termguicolors"))
  set termguicolors
endif

" Cycle through relativenumber + number, number (only), and no numbering.
function! Cycle_numbering() abort
  if exists('+relativenumber')
    execute {
          \ '00': 'set relativenumber   | set number',
          \ '01': 'set norelativenumber | set number',
          \ '10': 'set norelativenumber | set nonumber',
          \ '11': 'set norelativenumber | set number' }[&number . &relativenumber]
  else
    " No relative numbering, just toggle numbers on and off.
    set number!<CR>
  endif
endfunction

augroup BgHighlight
  autocmd!
  autocmd WinEnter * set number
  autocmd WinLeave * set nonumber
augroup END

" bufferline and statusline
hi ActiveBuffer  guifg=#f6f3e8  guibg=#2e8ccf  gui=NONE  ctermfg=NONE  ctermbg=NONE cterm=NONE
hi StatusNumbers guifg=#022b35  guibg=#83948f  gui=NONE  ctermfg=NONE  ctermbg=NONE cterm=NONE
hi StatusTime    guifg=#022b35  guibg=#a1aba8  gui=NONE  ctermfg=NONE  ctermbg=NONE cterm=NONE
hi StatusPercent guifg=#022b35  guibg=#798883  gui=NONE  ctermfg=NONE  ctermbg=NONE cterm=NONE

function! StatusNumbers()
  let min = 15
  let c = virtcol('.')
  let l = line('.')
  let t = line('$')
  let status = ' '.c.':'.l.' L'.t.' '
  let n = strlen(status)
  if min > n
      let status = repeat(' ', min - n) . status
  endif
  return status
endfunction

function! StatusTime()
  let ti = strftime("  %k:%M ")
  return ti
endfunction

" **************************************************************************
