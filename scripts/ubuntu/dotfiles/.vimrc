colorscheme monokai-phoenix

highlight Comment cterm=italic " italic comments

set lazyredraw

"------------------- Vim settings -----------------------
" autosave view
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

au BufWritePre * :%s/\s\+$//e       " trailing whitespaces

set shell=/bin/bash
set clipboard=unnamed,unnamedplus   " use system clipboard
set tags+=gems.tags                 " ctags
set nu                              " enable left numbers
set rnu
set fillchars=vert:\                " disable vert div chars
set nocompatible                    " be iMproved, required
set cursorline                      " highlight the cursor screen line "
set cursorcolumn                      " highlight the cursor screen line "
set scrolloff=5                     " minimal number of screen lines to keep above and below the cursor "
set spell spelllang=en_us           " spellchecker
set colorcolumn=80                  " right margin

" Auto indentation
set expandtab
set shiftwidth=2
set softtabstop=2

" String to put at the start of lines that have been wrapped "
let &showbreak='↪ '

" jump to end of text you pasted
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" add new line without entering insert mode

nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

" leader
let mapleader=","

"---------------- Plugins -------------------
call plug#begin('~/.vim/plugged')

  Plug 'gmarik/Vundle.vim'

" Navigation

  Plug 'bkad/CamelCaseMotion'
  Plug 'Lokaltog/vim-easymotion'
  Plug 'scrooloose/nerdtree'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'rking/ag.vim'
  Plug 'majutsushi/tagbar'
  Plug 'matze/vim-move'

  " Correction
  Plug 'scrooloose/syntastic'
  Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
  Plug 'junegunn/vim-easy-align'
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'Raimondi/delimitMate'

" Appearance

  Plug 'airblade/vim-gitgutter'
  Plug 'kshenoy/vim-signature'
  Plug 'Bling/vim-airline'
  Plug 'gorodinskiy/vim-coloresque'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'

" General editing
  Plug 'tpope/vim-surround'
  Plug 'tomtom/tcomment_vim'
  Plug 'junegunn/vim-easy-align'

" Ruby/Rails
  Plug 'tpope/vim-endwise'
  Plug 'tpope/vim-rails'
  Plug 'vim-ruby/vim-ruby'
  Plug 'thoughtbot/vim-rspec'

" Languages
  Plug 'slim-template/vim-slim'
  Plug 'kchmck/vim-coffee-script'
  Plug 'zaiste/tmux.vim'
  Plug 'elzr/vim-json'
  Plug 'TAKAyukiatkwsk/vim-mongoid-syntax'
  Plug 'pangloss/vim-javascript'
  Plug 'plasticboy/vim-markdown'

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
let NERDTreeShowHidden=1

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_aggregate_errors = 1
let g:syntastic_mode_map = { 'mode': 'passive' }
nnoremap <Leader>e :SyntasticCheck<CR>

let g:syntastic_enable_signs=1
let g:syntastic_error_symbol='☠'
let g:syntastic_warning_symbol='☣'
let g:syntastic_style_error_symbol='྾'
let g:syntastic_style_warning_symbol='♿'

let g:syntastic_enable_ruby_checker = 1
let g:syntastic_enable_coffee_checker = 1
let g:syntastic_enable_css_checker = 1
let g:syntastic_enable_haml_checker = 1
let g:syntastic_enable_javascript_checker = 1
let g:syntastic_enable_markdown_checker = 1
let g:syntastic_enable_sass_checker = 1
let g:syntastic_enable_scss_checker = 1
let g:syntastic_enable_sh_checker = 1
let g:syntastic_enable_slim_checker = 1
let g:syntastic_enable_yaml_checker = 1
let g:syntastic_coffee_checkers = ['coffee', 'coffeelint']
let g:syntastic_css_checkers = ['csslint', 'phpcs', 'prettycss', 'recess', 'stylelint']
let g:syntastic_haml_checkers = ['haml', 'haml_lint']
let g:syntastic_html_checkers = ['jshint', 'tidy', 'validator', 'w3*']
let g:syntastic_javascript_checkers = ['closurecompiler', 'gjslint', 'standard']
let g:syntastic_ruby_checkers = ['mri', 'reek', 'rubocop', 'flog']
let g:syntastic_sass_checkers = ['sass', 'sassc']
let g:syntastic_scss_checkers = ['sass', 'sassc', 'scss_lint']
let g:syntastic_sh_checkers = ['bashate', 'checkbashisms', 'sh', 'shellcheck']
let g:syntastic_slim_checkers = ['slimrb']
let g:syntastic_spec_checkers = ['rpmlint']
let g:syntastic_yaml_checkers = ['jsyaml', 'yamlxs']" camel case


map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e


nmap <C-t> :TagbarToggle<CR>

" rspec
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" ctrl P
map <Leader>c :CtrlP<CR>
set wildignore+=*/tmp/*,*.so,*.swp,*.log,*/vendor/*,*/public/*,*/coverage/*,*tags,*/bin/*

if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

" rails
map <Leader>h :AV<CR>

" AG
map <Leader>g :Ag<SPACE>
let g:ag_prg='ag -S --nocolor --nogroup --column
\ --ignore "./public/**"
\ --ignore "./data/**"
\ --ignore "./vendor/**"
\ --ignore "./tmp/**"
\ --ignore "./coverage/**"
\ --ignore "./lib/**"
\ --ignore "*.log"
\ --ignore "./db/migrate/**"
\ --ignore "./spec_old/**"
\ --ignore "./db/schema.rb"
\ --ignore "*tags"'

" youcompleteme
let g:EclimCompletionMethod = 'omnifunc'

" ctags
map <Leader>z :CtrlPTag<CR>

" move
let g:move_key_modifier = 'C'


map <Leader>.s :Gstatus<CR>
map <Leader>.b :Gblame<CR>
map <Leader>.w :Gbrowse<CR>
"---------------------- End -----------------------------
