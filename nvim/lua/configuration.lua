-------------------- HELPERS -------------------------------
local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-------------------- OPTIONS -------------------------------
vim.g.mapleader = ","                        -- leader key
vim.g.maplocalleader = "\\"                        -- leader key
vim.o.mouse = "a"                            -- mouse support
vim.wo.colorcolumn = "120"                   -- shows vertical bar
vim.o.shell ="/bin/zsh"

vim.opt.clipboard = "unnamedplus"            -- use global clipboard
vim.opt.undofile = true                      -- save undo changes between sessions
vim.opt.backup = false                       -- does not make a backup before overwriting a file
vim.opt.writebackup = false                  -- does not make a backup before overwriting a file
vim.opt.swapfile = false                     -- does not use swapfile for the buffer
vim.opt.autoread = true                      -- autoreload files (when change git branch)
vim.opt.title = true                         -- show filename in title
vim.opt.scrolloff = 3                        -- minimum indentation from top/bottom of screen to highlighted result on searching
vim.opt.number = true                        -- print the line number in front of each line
vim.opt.rnu = true                           -- print relative line numbers
vim.opt.history = 1000                       -- size of the saved command-lines in a history table
vim.opt.wrap = false                         -- disable wrapping strings (when they are very long)
vim.opt.list = true                          -- show tabs as CTRL-I is displayed
vim.opt.listchars = "tab:▷⋅,trail:⋅,nbsp:⋅"  -- strings to use in 'list' mode
vim.opt.splitbelow = true                    -- open split window below
vim.opt.splitright = true                    -- open split window right
vim.opt.hidden = true                        -- allow hidden files
vim.opt.cursorline = true                    -- highlights whole line under cursor
vim.opt.tabstop = 2                          -- number of spaces for tab
vim.opt.shiftwidth = 2                       -- number of spaces to use for each step of (auto)indent
vim.opt.softtabstop = 2                      -- number of spaces that a <Tab> counts for while performing editing operations
vim.opt.expandtab = true                     -- use the appropriate number of spaces to insert a <Tab> in the insert mode
vim.opt.smarttab = true                      --  only even number of spaces (3 spaces + tab = 4 spaces, 2 spaces + tab = 4 spaces)
vim.opt.ignorecase = true                    -- ignore case in search patterns
vim.opt.smartcase = true                     -- override the 'ignorecase' option if the search pattern contains upper case characters
vim.opt.fillchars = "vert:▏"                 -- characters to fill the statuslines and vertical separators
vim.opt.diffopt = "filler,internal,algorithm:histogram,indent-heuristic" -- option settings for diff mode
vim.opt.signcolumn = "yes"                   -- reserve a column for language client/gitgutter notifications even if nothing to show
vim.opt.modeline = true                      -- https://www.cs.swarthmore.edu/oldhelp/vim/modelines.html
vim.opt.modelines = 5                        -- sets the number of lines (at the beginning and end of each file) vim checks for initializations

-------------------- MAPPINGS ------------------------------
map("i", "jj", "<ESC>", {noremap = true})         -- alias for exit
map("n", "<s-tab>", "za<CR>", {noremap = true})   -- toggle fold at current position.

-------------------- API -------------------------------
vim.api.wildmenu = true       -- command-mode completion
vim.api.wildignorecase = true -- wildmenu ignores case

-- navigate between splits
map("n", "<C-J>", "<C-W><C-J>", {noremap = true})
map("n", "<C-K>", "<C-W><C-K>", {noremap = true})
map("n", "<C-L>", "<C-W><C-L>", {noremap = true})
map("n", "<C-H>", "<C-W><C-H>", {noremap = true})
map("n", "|", ":vsplit<CR>", {noremap = true})
map("n", "_", ":split<CR>", {noremap = true})
--
-- turn search off
map("n", "<leader><space>", ":noh<CR>", {noremap = true})
-- replace default search with search by regex
map("n", "/", "/\\v", {noremap = true})
map("v", "/", "/\\v", {noremap = true})



-- vim.cmd("au BufWritePre * :%s/s+$/e") -- Remove trailing whitespaces

-- folding
vim.cmd([[
  if has('folding')
    if has('windows')
      let &fillchars='vert: '           " less cluttered vertical window separators
    endif
    set foldmethod=indent               " not as cool as syntax, but faster
    set foldlevelstart=99               " start unfolded
  endif
]])

-- if vim.o.termguicolors then
--   -- nvim.err_writeln("&termguicolors must be set")
--   vim.opt.termguicolors = true
--   return
-- end

-- Show proper termguicolors
vim.cmd([[
  if (has("termguicolors"))
    set termguicolors
  endif
]])

--" Cycle through relativenumber + number, number (only), and no numbering.
vim.cmd([[
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
]])

map("n", "<leader>r", ":call Cycle_numbering()<CR>", {noremap = true})

-- set spell spelllang=en_us           " spellchecker
--
-- TODO:
-- " Remap arrows to resize
-- nnoremap <silent> <Up>    :call animate#window_delta_height(15)<CR>
-- nnoremap <silent> <Down>  :call animate#window_delta_height(-15)<CR>
-- nnoremap <silent> <Left>  :call animate#window_delta_width(30)<CR>
-- nnoremap <silent> <Right> :call animate#window_delta_width(-30)<CR>
