-------------------- HELPERS -------------------------------
function map(mode, lhs, rhs, opts)
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
vim.opt.scrolloff = 4                        -- minimum indentation from top/bottom of screen to highlighted result on searching
vim.opt.sidescrolloff = 8                    -- Columns of context
vim.opt.number = true                        -- print the line number in front of each line
vim.opt.rnu = true                           -- print relative line numbers
vim.opt.history = 1000                       -- size of the saved command-lines in a history table
vim.opt.wrap = false                         -- disable wrapping strings (when they are very long)
vim.opt.list = true                          -- show tabs as CTRL-I is displayed
vim.opt.listchars = "tab:▷⋅,trail:⋅,nbsp:⋅"  -- strings to use in 'list' mode
vim.opt.splitbelow = true                    -- open split window below
vim.opt.splitright = true                    -- open split window right
vim.opt.hidden = true                        -- allow hidden files
vim.opt.cursorcolumn = true                  -- highlights whole column under cursor
vim.opt.cursorline = true                    -- highlights whole line under cursor
vim.opt.tabstop = 2                          -- number of spaces for tab
vim.opt.shiftwidth = 2                       -- number of spaces to use for each step of (auto)indent
vim.opt.shiftround = true                    -- Round indent
vim.opt.smartindent = true                   -- Insert indents automatically
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
vim.opt.encoding = "utf-8"                   -- set default encoding to utf-8
vim.opt.spelllang = { "en_gb" }              -- set spell languages
vim.opt.hlsearch = true                      -- Highlight found searches
vim.opt.incsearch = true                     -- Shows the match while typing
vim.opt.joinspaces = false                   -- No double spaces with join
vim.opt.linebreak = true                     -- Stop words being broken on wrap
vim.opt.showmode = false                     -- Don't display mode
vim.o.whichwrap = vim.o.whichwrap .. "<,>,h,l" -- Wrap movement between lines in edit mode with arrows
vim.opt.guicursor = "n-v-c-sm:block-blinkwait50-blinkon50-blinkoff50,i-ci-ve:ver25-Cursor-blinkon100-blinkoff100,r-cr-o:hor20" -- sets blinking guicursor
vim.opt.foldmethod = 'expr'                  -- use expression for folding
vim.opt.foldexpr   = 'nvim_treesitter#foldexpr()' -- gives the fold level of a line.
vim.opt.foldenable = false                   -- Disable folding at startup.
-- -- vim.opt.splitkeep = "screen" -- Stops screen jumping when splits below are opened
-- vim.opt.undodir = vim.fn.stdpath("config") .. "/undo"
-- opt.jumpoptions = "view"

-------------------- MAPPINGS ------------------------------
map("i", "jj", "<ESC>", {noremap = true})         -- alias for exit

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

-- Easy add date/time
function date()
  local pos = vim.api.nvim_win_get_cursor(0)[2]
  local line = vim.api.nvim_get_current_line()
  local nline = line:sub(0, pos) .. "# " .. os.date("%d.%m.%y") .. line:sub(pos + 1)
  vim.api.nvim_set_current_line(nline)
end

-- Highlight on yank
local yankGrp = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
  group = yankGrp,
  pattern = "*",
  callback = function()
    vim.highlight.on_yank()
  end,
  desc = "Highlight yank",
})

-- Show proper termguicolors
vim.cmd([[
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"

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

local M = {}
-- function to create a list of commands and convert them to autocommands
-------- This function is taken from https://github.com/norcalli/nvim_utils
function M.nvim_create_augroups(definitions)
  for group_name, definition in pairs(definitions) do
    vim.api.nvim_command('augroup '..group_name)
    vim.api.nvim_command('autocmd!')
    for _, def in ipairs(definition) do
      local command = table.concat(vim.tbl_flatten{'autocmd', def}, ' ')
      vim.api.nvim_command(command)
    end
    vim.api.nvim_command('augroup END')
  end
end

local autoCommands = {
  -- other autocommands
  open_folds = {
    {"BufReadPost,FileReadPost", "*", "normal zR"}
  }
}

M.nvim_create_augroups(autoCommands)

-- TODO:
-- " Remap arrows to resize
-- nnoremap <silent> <Up>    :call animate#window_delta_height(15)<CR>
-- nnoremap <silent> <Down>  :call animate#window_delta_height(-15)<CR>
-- nnoremap <silent> <Left>  :call animate#window_delta_width(30)<CR>
-- nnoremap <silent> <Right> :call animate#window_delta_width(-30)<CR>
