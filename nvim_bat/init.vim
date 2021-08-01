" #########################################
" # Volodymyr Gula's VIM configuration
" ##########################################
" # Plugins
" ##########################################

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
  let g:deoplete#complete_method = "omnifunc"

" Appearance
NeoBundle 'nathanaelkane/vim-indent-guides'                           " prints vertical lines at each indentation level
  let g:indent_guides_enable_on_vim_startup = 1
  let g:indent_guides_guide_size = 1
  let g:indent_guides_start_level = 2
  let g:indent_guides_color_change_percent = 1
  let g:indent_guides_exclude_filetypes = ['help', 'startify', 'fzf', 'openterm', 'neoterm']
NeoBundle 'luochen1990/rainbow'                                       " shows diff level of parentheses in diff color
  let g:rainbow_active = 1
NeoBundle 'psliwka/vim-smoothie'                                      " nicer scrolling
NeoBundle 'camspiers/animate.vim'                                     " animation plugin
  let g:animate#easing_func = 'animate#ease_out_quad'
" NeoBundle 'camspiers/lens.vim'                                        " window resizing plugin
"   let g:lens#height_resize_min = 15
NeoBundle 'dhruvasagar/vim-table-mode'                                " better handling for tables in markdown
  let g:table_mode_corner = '|'
NeoBundle 'RRethy/vim-illuminate'                                     " underlines words matching cursor word
NeoBundle 'ntpeters/vim-better-whitespace'                            " highlights trailing whitespaces
" NeoBundle 'rhysd/vim-grammarous'                                      " grammar checker based on LanguageTool
NeoBundle 'Bling/vim-airline'                                         " status-bar
NeoBundle 'vim-airline/vim-airline-themes'
  set laststatus=2
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#branch#enabled = 0
  let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
  let g:airline_powerline_fonts = 1
  let g:airline_theme='neodark'
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
NeoBundle 'direnv/direnv.vim'
" NeoBundle 'blueyed/vim-diminactive'                                   " dim inactive windows
  " let g:diminactive_use_syntax = 1                                  " dim inactive syntax

NeoBundle 'dhruvasagar/vim-zoom'                                      " zooming vim window splits

" General editing
NeoBundle 'kassio/neoterm'                                            " REPL integration
  let g:neoterm_default_mod = 'botright'
  let g:neoterm_autojump = 1
  " Use gx{text-object} in normal mode
  nmap <Leader>tt <Plug>(neoterm-repl-send)
  " Send selected contents in visual mode.
  xmap <Leader>tt <Plug>(neoterm-repl-send)
NeoBundle 'itchyny/calendar.vim'                                      " nice calendar app
NeoBundle 'wsdjeg/vim-fetch'                                          " open files in file:line_number format from CLI
NeoBundle 'cohama/lexima.vim'                                         " automatic closing of quotes
NeoBundle 'Asheq/close-buffers.vim'                                   " helpful plugin to work with buffers
  nmap <leader>q :Bdelete menu<CR>
NeoBundle 'tomtom/tcomment_vim'                                       " commenter
  nnoremap // :TComment<CR>
  vnoremap // :TComment<CR>
NeoBundle 'Chiel92/vim-autoformat'                                    " install ruby-beautify gem
  noremap === :Autoformat<CR>
NeoBundle 'wellle/targets.vim'                                        " move text objects SURROUTD
NeoBundle 'tpope/vim-surround'                                        " for manipulation with quotes :)
NeoBundle 'AndrewRadev/switch.vim'                                    " useful switcher
  let g:switch_mapping = "-"
  let g:switch_custom_definitions =
        \ [
        \   ['required', 'optional'],
        \   ['assert', 'refute'],
        \   ['and', 'or']
        \ ]

NeoBundle 'mg979/vim-visual-multi', {'branch': 'master'}              " ability to edit with multiple cursors
NeoBundle 'bkad/CamelCaseMotion'                                      " uses CamelCase jumps
  map <silent> w <Plug>CamelCaseMotion_w
  map <silent> b <Plug>CamelCaseMotion_b
  map <silent> e <Plug>CamelCaseMotion_e
  map <silent> ge <Plug>CamelCaseMotion_ge
  sunmap w
  sunmap b
  sunmap e
  sunmap ge
NeoBundle 'kshenoy/vim-signature'                                     " plugin to place, toggle and display marks.
NeoBundle 'Lokaltog/vim-easymotion'                                   " number | letter motions for vim
  let g:EasyMotion_smartcase = 1
  map  / <Plug>(easymotion-sn)
  omap / <Plug>(easymotion-tn)
  map  n <Plug>(easymotion-next)
  map N <Plug>(easymotion-prev)
NeoBundle 'junegunn/vim-easy-align'                                   " align tool
  " align on Enter
  vmap <Enter> <Plug>(EasyAlign)
  " Start interactive EasyAlign in visual mode (e.g. vipga)
  xmap ga <Plug>(EasyAlign)
  " Start interactive EasyAlign for a motion/text object (e.g. gaip)
  nmap ga <Plug>(EasyAlign)
NeoBundle 'AndrewRadev/splitjoin.vim'                                 " brake code expression into multiple lines
" NeoBundle 'mmorearty/elixir-ctags'                                    " shows tags for elixir
NeoBundle 'majutsushi/tagbar'                                         " shows tags
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

" Finders
NeoBundle 'brooth/far.vim'                                            " find and replace text through multiple file
NeoBundle 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " search file by name
NeoBundle 'junegunn/fzf.vim'                                           " search files by name
  nnoremap <Leader>b :Buffers<CR>
  nnoremap <Leader>F :Files<CR>
  nnoremap <Leader>f :GFiles<CR>
  nnoremap <Leader>g :Rg<CR>
  nnoremap <Leader>h :History<CR>
  nnoremap <Leader>H :Helptags!<CR>
  nnoremap <Leader>l :BLines<CR>
  nnoremap <Leader>L :Lines<CR>
  nnoremap <Leader>M :Maps<CR>
  nnoremap <Leader>t :BTags<CR>
  nnoremap <Leader>T :Tags<CR>
  " nnoremap <Leader>' :Marks<CR>

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

NeoBundle 'rking/ag.vim'                                              " search through the content
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

" GIT
NeoBundle 'airblade/vim-gitgutter'                                   " GIT commands
NeoBundle 'tpope/vim-fugitive'                                       " the best Git wrapper
NeoBundle 'tpope/vim-rhubarb'                                        " for Gbrowse command
NeoBundle 'samoshkin/vim-mergetool'                                  " merge tool for git
  let g:mergetool_layout = 'bmr'
  let g:mergetool_prefer_revision = 'local'

" File manager
" NeoBundle 'scrooloose/nerdtree'                                      " File manager
NeoBundle 'preservim/nerdtree'                                       " File manager
  map <C-p> :NERDTreeToggle<CR>
  map <C-f> :NERDTreeFind<CR>
  let NERDTreeCascadeSingleChildDir=0                                " for folder embeding
  let NERDTreeShowHidden=1                                           " show hidden files
NeoBundle 'Xuyuanp/nerdtree-git-plugin'
  let g:NERDTreeGitStatusUseNerdFonts = 1
  let g:NERDTreeGitStatusIndicatorMapCustom = {
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

" TMUX
NeoBundle 'zaiste/tmux.vim'
NeoBundle 'jgdavey/tslime.vim'                                        " runs test commands in a tmux pane you specify.
  let g:tslime_always_current_session = 1                             " run in current session
NeoBundle 'christoomey/vim-tmux-navigator'                            " allow you to move between Vim panes and tmux splits
NeoBundle 'benmills/vimux'                                            " runs commands from vim in the tmux
" prompt for a command to run
  map <Leader>vp :VimuxPromptCommand<CR>

" Languages
NeoBundle 'vim-syntastic/syntastic'                                   " a syntax checking plugin
  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*
  let g:syntastic_auto_loc_list = 0
  let g:syntastic_check_on_open = 1
  let g:syntastic_check_on_wq = 0
  let g:syntastic_elixir_checkers = ['elixir']
  let g:syntastic_enable_elixir_checker = 0
NeoBundle 'MarcWeber/vim-addon-mw-utils'                              " support for textual snippets
NeoBundle 'tomtom/tlib_vim'                                           " support for textual snippets
NeoBundle 'garbas/vim-snipmate'                                       " support for textual snippets

NeoBundle 'elixir-editors/vim-elixir'                                 " support for elixir
NeoBundle 'slashmili/alchemist.vim'                                   " uses ElixirSense to give inside information about your elixir project
  let g:alchemist#elixir_erlang_src="/usr/local/share/src"
NeoBundle 'janko/vim-test'                                            " a Vim wrapper for running tests on different granularities.
  nmap <silent> t<C-n> :TestNearest<CR>
  nmap <silent> t<C-f> :TestFile<CR>
  nmap <silent> t<C-s> :TestSuite<CR>
  nmap <silent> t<C-l> :TestLast<CR>
  nmap <silent> t<C-g> :TestVisit<CR>
  let test#strategy = "tslime"
NeoBundle 'mhinz/vim-mix-format'                                      " introduced the formatter: mix format
  let g:mix_format_on_save = 1
NeoBundle 'neovimhaskell/haskell-vim'
  let g:haskell_classic_highlighting = 1
  let g:haskell_indent_if = 3
  let g:haskell_indent_case = 2
  let g:haskell_indent_let = 4
  let g:haskell_indent_where = 6
  let g:haskell_indent_before_where = 2
  let g:haskell_indent_after_bare_where = 2
  let g:haskell_indent_do = 3
  let g:haskell_indent_in = 1
  let g:haskell_indent_guard = 2
  let g:haskell_indent_case_alternative = 1
  let g:cabal_indent_section = 2
NeoBundle 'slime-lang/vim-slime-syntax'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'mxw/vim-jsx'
NeoBundle 'digitaltoad/vim-pug'
" NeoBundle 'elzr/vim-json'

" Themes
NeoBundle 'NLKNguyen/papercolor-theme'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'powerman/vim-plugin-AnsiEsc'
NeoBundle 'morhetz/gruvbox'
  let g:gruvbox_italic=1

NeoBundle 'AlessandroYorba/Sierra'
NeoBundle 'colepeters/spacemacs-theme.vim'
NeoBundle 'ajh17/Spacegray.vim'
NeoBundle 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
NeoBundle 'dracula/vim', { 'as': 'dracula' }
NeoBundle 'iCyMind/NeoSolarized'
NeoBundle 'KeitaNakamura/neodark.vim'
NeoBundle 'morhetz/gruvbox'
NeoBundle 'sjl/badwolf'

" This should be last
NeoBundle 'ryanoasis/vim-devicons'                                   " icons for files
  " let g:webdevicons_conceal_nerdtree_brackets = 1
  let g:DevIconsEnableFoldersOpenClose = 1
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck


" ##########################################
" # General configs
" ##########################################

" syntax enable
colorscheme gruvbox
set background=dark
highlight Comment cterm=italic gui=italic

set shell=zsh                       " set shell
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
set cursorcolumn                    " highlight the cursor screen line
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
set diffopt+=vertical               " split buffers vertically

" let &showbreak='↪ '                 " break symbol


" ##########################################
" # Key Settings
" ##########################################

let mapleader = ","
let g:mapleader = ","

" Remap arrows to resize
nnoremap <silent> <Up>    :call animate#window_delta_height(15)<CR>
nnoremap <silent> <Down>  :call animate#window_delta_height(-15)<CR>
nnoremap <silent> <Left>  :call animate#window_delta_width(30)<CR>
nnoremap <silent> <Right> :call animate#window_delta_width(-30)<CR>

" Map ESC
imap jj <ESC>
" move between splits by tab
" nnoremap <Tab> <C-w>w

" move between buffers by tab
nmap <Tab> :bnext<CR>
nmap <Space> :bprev<CR>

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


" ##########################################
" # Custom functions
" ##########################################

" Open lazygit
nnoremap <silent> <Leader>' :call openterm#horizontal('lazygit', 0.8)<CR>

" Cycle through relativenumber + number, number (only), and no numbering.
nnoremap <silent> <Leader>r :call Cycle_numbering()<CR>
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

 " Pomodoro timer, example: "25 5 25 5" will run a timer for 25mins, ding then
" 5mins, ding, then 25mins ding, then 5mins, ding
function! TogglePomodoro() abort
  call inputsave()
  let time = input("Units> ")
  call inputrestore()
  normal :<ESC>
  if time == ""
    silent execute "!vim-timer stop"
  else
    " Don't listen to hang up signal and background, basic daemonization
    call system("nohup vim-timer " . time . " &")
  endif
endfunction

" Create vsplit
nnoremap <silent> <Leader>\| :call Vsplit()<CR>
" Creates a vsplit in an animated fashion
function! Vsplit() abort
  vsplit
  call NaturalVerticalDrawer()
endfunction

" Create hsplit
nnoremap <silent> <Leader>- :call Split()<CR>
" Creates a split with animation
function! Split() abort
  split
  call NaturalDrawer()
endfunction

" Creates a drawer effect that respects the natural height
function! NaturalDrawer() abort
  let height = winheight(0)
  resize 1
  call animate#window_absolute_height(height)
endfunction

" Creates a drawer effect that respects the natural width
function! NaturalVerticalDrawer() abort
  let width = winwidth(0)
  vertical resize 1
  call animate#window_absolute_width(width)
endfunction

" " Opens calendar with animation
" function! OpenCalendar() abort
"   new | wincmd J | resize 1
"   call animate#window_percent_height(0.8)
"   call timer_start(300, {id -> execute('Calendar -position=here')})
" endfunction

" ##########################################
" # Other settings
" ##########################################

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

" Quit term buffer with ESC
augroup TermHandling
  autocmd!
  " Turn off line numbers, listchars, auto enter insert mode and map esc to
  " exit insert mode
  if has('nvim')
    autocmd TermOpen * setlocal listchars= nonumber norelativenumber nowrap winfixwidth laststatus=0 noshowmode noruler
    autocmd TermOpen * startinsert | autocmd BufLeave <buffer> set laststatus=2 showmode ruler
    autocmd TermOpen * let g:last_open_term_id = b:terminal_job_id
  endif
  " Define ESC to be SIGTERM
  autocmd! FileType fzf tnoremap <Esc> <c-c>
  autocmd! FileType neoterm wincmd J | call NaturalDrawer()
augroup END

" " To detect whether you're in merge mode now
" function! AirlineDiffmergePart()
"   if get(g:, 'mergetool_in_merge_mode', 0)
"     return '↸'
"   endif
"
"   if &diff
"     return '↹'
"   endif
"
"   return ''
" endfunction
"
" call airline#parts#define_function('_diffmerge', 'AirlineDiffmergePart')
" call airline#parts#define_accent('_diffmerge', 'bold')
"
" let g:airline_section_z = airline#section#create(['_diffmerge'])

" ##########################################
" # Auto Commands
" ##########################################
" Uncategorized autocmds
augroup General
  autocmd!
  autocmd! FileType markdown,txt silent TableModeEnable
  " Neoterm repl setup {{{
  autocmd FileType sh call neoterm#repl#set('sh')
  " }}}
augroup END
