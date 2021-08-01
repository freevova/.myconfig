return function()
  vim.api.nvim_set_keymap("n", "<Leader>b", ":Buffers<CR>", {noremap = true})
  vim.api.nvim_set_keymap("n", "<Leader>F", ":Files<CR>", {noremap = true})
  vim.api.nvim_set_keymap("n", "<Leader>f", ":GFiles<CR>", {noremap = true})
  vim.api.nvim_set_keymap("n", "<Leader>g", ":Rg<CR>", {noremap = true})
  vim.api.nvim_set_keymap("n", "<Leader>h", ":History<CR>", {noremap = true})
  vim.api.nvim_set_keymap("n", "<Leader>H", ":Helptags<CR>", {noremap = true})
  vim.api.nvim_set_keymap("n", "<Leader>l", ":BLines<CR>", {noremap = true})
  vim.api.nvim_set_keymap("n", "<Leader>L", ":Lines<CR>", {noremap = true})
  vim.api.nvim_set_keymap("n", "<Leader>M", ":Maps<CR>", {noremap = true})
  vim.api.nvim_set_keymap("n", "<Leader>t", ":BTags<CR>", {noremap = true})
  vim.api.nvim_set_keymap("n", "<Leader>T", ":Tags<CR>", {noremap = true})

  vim.g.fzf_colors = {
    ["fg"]      = {"fg", "Normal"},
    ["bg"]      = {"bg", "Normal"},
    ["hl"]      = {"fg", "Comment"},
    ["fg+"]     = {"fg", "CursorLine", "CursorColumn", "Normal"},
    ["bg+"]     = {"bg", "CursorLine", "CursorColumn"},
    ["hl+"]     = {"fg", "Statement"},
    ["info"]    = {"fg", "PreProc"},
    ["prompt"]  = {"fg", "Conditional"},
    ["pointer"] = {"fg", "Exception"},
    ["marker"]  = {"fg", "Keyword"},
    ["spinner"] = {"fg", "Label"},
    ["header"]  = {"fg", "Comment"}
  }




  -- require "fzf-lua".setup {
  --   win_height          = 1.00,         -- window height
  --   win_width           = 1.00,         -- window width
  --   win_row             = 1.00,         -- window row position (0=top, 1=bottom)
  --   win_col             = 1.00,         -- window col position (0=left, 1=right)
  --   -- win_border          = false,         -- window border? or borderchars?
  --   win_border          = { '╭', '─', '╮', '│', '╯', '─', '╰', '│' },
  --   fzf_args            = '',           -- adv: fzf extra args, empty unless adv
  --   fzf_layout          = 'reverse',    -- fzf '--layout='
  --   preview_cmd         = '',           -- 'head -n $FZF_PREVIEW_LINES',
  --   preview_border      = 'border',     -- border|noborder
  --   preview_wrap        = 'nowrap',     -- wrap|nowrap
  --   preview_opts        = 'nohidden',   -- hidden|nohidden
  --   preview_vertical    = 'down:45%',   -- up|down:size
  --   preview_horizontal  = 'right:60%',  -- right|left:size
  --   preview_layout      = 'flex',       -- horizontal|vertical|flex
  --   flip_columns        = 120,          -- #cols to switch to horizontal on flex
  --   bat_theme           = 'Coldark-Dark', -- bat preview theme (bat --list-themes)
  --   bat_opts            = '--style=numbers,changes --color always',
  --   files = {
  --     prompt            = 'Files❯ ',
  --     cmd               = '',           -- "find . -type f -printf '%P\n'",
  --     git_icons         = true,         -- show git icons?
  --     file_icons        = true,         -- show file icons?
  --     color_icons       = true,         -- colorize file|git icons
  --     actions = {
  --       ["default"]     = actions.file_edit,
  --       ["ctrl-s"]      = actions.file_split,
  --       ["ctrl-v"]      = actions.file_vsplit,
  --       ["ctrl-t"]      = actions.file_tabedit,
  --       ["ctrl-q"]      = actions.file_sel_to_qf,
  --       ["ctrl-y"]      = function(selected) print(selected[2]) end,
  --     }
  --   },
  --   grep = {
  --     prompt            = 'Rg❯ ',
  --     input_prompt      = 'Grep For❯ ',
  --     -- cmd               = "rg --vimgrep",
  --     git_icons         = true,         -- show git icons?
  --     file_icons        = true,         -- show file icons?
  --     color_icons       = true,         -- colorize file|git icons
  --     actions = {
  --       ["default"]     = actions.file_edit,
  --       ["ctrl-s"]      = actions.file_split,
  --       ["ctrl-v"]      = actions.file_vsplit,
  --       ["ctrl-t"]      = actions.file_tabedit,
  --       ["ctrl-q"]      = actions.file_sel_to_qf,
  --       ["ctrl-y"]      = function(selected) print(selected[2]) end,
  --     }
  --   },
  --   oldfiles = {
  --     prompt            = 'History❯ ',
  --     cwd_only          = false,
  --   },
  --   git = {
  --     prompt            = 'GitFiles❯ ',
  --     cmd               = 'git ls-files --exclude-standard',
  --     git_icons         = true,         -- show git icons?
  --     file_icons        = true,         -- show file icons?
  --     color_icons       = true,         -- colorize file|git icons
  --   },
  --   buffers = {
  --     prompt            = 'Buffers❯ ',
  --     file_icons        = true,         -- show file icons?
  --     color_icons       = true,         -- colorize file|git icons
  --     sort_lastused     = true,         -- sort buffers() by last used
  --     actions = {
  --       ["default"]     = actions.buf_edit,
  --       ["ctrl-s"]      = actions.buf_split,
  --       ["ctrl-v"]      = actions.buf_vsplit,
  --       ["ctrl-t"]      = actions.buf_tabedit,
  --       ["ctrl-x"]      = actions.buf_del,
  --     }
  --   },
  --   colorschemes = {
  --     prompt            = 'Colorschemes❯ ',
  --     live_preview      = true,
  --     actions = {
  --       ["default"]     = actions.colorscheme,
  --       ["ctrl-y"]      = function(selected) print(selected[2]) end,
  --     },
  --     winopts = {
  --       win_height       = 0.55,
  --       win_width        = 0.30,
  --       window_on_create = function()
  --         vim.cmd("set winhl=Normal:Normal")
  --       end,
  --     },
  --     post_reset_cb    = function()
  --       require('feline').reset_highlights()
  --     end,
  --   },
  --   quickfix = {
  --     cwd               = vim.loop.cwd(),
  --     file_icons        = true,
  --   },
  --   -- placeholders for additional user customizations
  --   loclist = {},
  --   helptags = {},
  --   manpages = {},
  --   file_icon_colors = {                -- override colors for extensions
  --     ["lua"]   = "blue",
  --   },
  --   git_icons = {                       -- override colors for git icons
  --     ["M"]     = "M", --"★",
  --     ["D"]     = "D", --"✗",
  --     ["A"]     = "A", --"+",
  --     ["?"]     = "?"
  --   },
  --   git_icon_colors = {                 -- override colors for git icon colors
  --     ["M"]     = "yellow",
  --     ["D"]     = "red",
  --     ["A"]     = "green",
  --     ["?"]     = "magenta"
  --   },
  --   fzf_binds           = {             -- fzf '--bind=' options
  --     'f2:toggle-preview',
  --     'f3:toggle-preview-wrap',
  --     'shift-down:preview-page-down',
  --     'shift-up:preview-page-up',
  --     'ctrl-d:half-page-down',
  --     'ctrl-u:half-page-up',
  --     'ctrl-f:page-down',
  --     'ctrl-b:page-up',
  --     'ctrl-a:toggle-all',
  --     'ctrl-u:clear-query',
  --   },
  --   window_on_create = function()         -- nvim window options override
  --     vim.cmd("set winhl=Normal:Normal")  -- popup bg match normal windows
  --   end
  -- }
end

  -- vim.cmd('fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case -- ".shellescape(<q-args>), 1, fzf#vim#with_preview(), <bang>0)')
  -- vim.cmd("command! -bang -nargs=* Rg" ..
  --   "call fzf#vim#grep(" ..
  --     "rg --column --line-number --no-heading --color=always --smart-case -g '!bin/' -- '.shellescape(<q-args>), 1," ..
  --     "fzf#vim#with_preview(), <bang>0)")

