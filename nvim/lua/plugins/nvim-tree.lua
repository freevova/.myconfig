_G.NvimTreeFindFilePatched = function()
  local function starts_with(String, Start)
    return string.sub(String, 1, string.len(Start)) == Start
  end

  local cwd = vim.fn.getcwd()
  local cur_path = vim.fn.expand("%:p:h")

  if starts_with(cur_path, cwd) then
    require("nvim-tree").find_file(true)
  else
    require("nvim-tree").refresh()
    require("nvim-tree.lib").change_dir(cur_path)
    require("nvim-tree").find_file(true)
    vim.cmd("cd " .. cur_path)
  end
end

_G.NvimTreeOpenWith = function()
  local lib = require'nvim-tree.lib'
  local utils = require'nvim-tree.utils'
  local node = lib.get_node_at_cursor()
  if node then
    local command = vim.fn.input('Open \''.. utils.path_basename(node.absolute_path).. '\' with: ', "xdg-open")
    vim.fn.jobstart(command.. " '" .. node.absolute_path .. "' 2>/dev/null&", { detach = true })
  end
end

return function()
  local tree_cb = require'nvim-tree.config'.nvim_tree_callback

  vim.api.nvim_set_keymap("", "<C-p>", ":NvimTreeToggle<CR>", {noremap = true})
  vim.api.nvim_set_keymap("", "<C-F>", ":lua _G.NvimTreeFindFilePatched()<CR>", {noremap = true})
  vim.g.nvim_tree_special_files = {}              -- " List of filenames that gets highlighted with NvimTreeSpecialFile
  vim.g.nvim_tree_hide_dotfiles = 0               -- " 0 by default, this option hides files and folders starting with a dot `.`
  vim.g.nvim_tree_git_hl = 1                      -- " 0 by default, will enable file highlight for git attributes (can be used without the icons).
  vim.g.nvim_tree_indent_markers = 1              -- " 0 by default, this option shows indent markers when folders are open
  vim.g.nvim_tree_icons = {
    -- default the only icon that is changed
    default = "",
    symlink = "",
    git = {
      unstaged = "✗",
      staged = "✓",
      unmerged = "",
      renamed = "➜",
      untracked = "★",
      deleted = "",
      ignored = "◌"
    },
    folder = {
      arrow_open = "",
      arrow_closed = "",
      default = "",
      open = "",
      empty = "",
      empty_open = "",
      symlink = "",
      symlink_open = ""
    },
    lsp = {
      hint = "",
      info = "",
      warning = "",
      error = ""
    }
  }

  require'nvim-tree'.setup {
    -- disables netrw completely
    disable_netrw       = true,
    -- hijack netrw window on startup
    hijack_netrw        = true,
    -- open the tree when running this setup function
    open_on_setup       = false,
    -- will not open on setup if the filetype is in this list
    ignore_ft_on_setup  = {},
    -- closes neovim automatically when the tree is the last **WINDOW** in the view
    auto_close          = false,
    -- opens the tree when changing/opening a new tab if the tree wasn't previously opened
    open_on_tab         = false,
    -- hijacks new directory buffers when they are opened.
    update_to_buf_dir   = {
      -- enable the feature
      enable = true,
      -- allow to open the tree if it was previously closed
      auto_open = true,
    },
    -- hijack the cursor in the tree to put it at the start of the filename
    hijack_cursor       = false,
    -- updates the root directory of the tree on `DirChanged` (when your run `:cd` usually)
    update_cwd          = false,
    -- show lsp diagnostics in the signcolumn
    lsp_diagnostics     = false,
    -- update the focused file on `BufEnter`, un-collapses the folders recursively until it finds the file
    update_focused_file = {
      -- enables the feature
      enable      = false,
      -- update the root directory of the tree to the one of the folder containing the file if the file is not under the current root directory
      -- only relevant when `update_focused_file.enable` is true
      update_cwd  = false,
      -- list of buffer names / filetypes that will not update the cwd if the file isn't found under the current root directory
      -- only relevant when `update_focused_file.update_cwd` is true and `update_focused_file.enable` is true
      ignore_list = {}
    },
    -- configuration options for the system open command (`s` in the tree by default)
    system_open = {
      -- the command to run this, leaving nil should work in most cases
      cmd  = nil,
      -- the command arguments as a list
      args = {}
    },

    view = {
      -- width of the window, can be either a number (columns) or a string in `%`, for left or right side placement
      width = 30,
      -- height of the window, can be either a number (columns) or a string in `%`, for top or bottom side placement
      height = 30,
      -- side of the tree, can be one of 'left' | 'right' | 'top' | 'bottom'
      side = 'left',
      -- if true the tree will resize itself after opening a file
      auto_resize = false,
      mappings = {
        -- custom only false will merge the list with the default mappings
        -- if true, it will only use your list to set the mappings
        custom_only = false,
        -- list of mappings to set on the tree manually
        list = {
          { key = "o",                       cb = ":lua NvimTreeOpenWith()<CR>" },
          { key = {"<CR>", "<2-LeftMouse>"}, cb = tree_cb("edit") },
          { key = "|",                       cb = tree_cb("vsplit") },
          { key = "_",                       cb = tree_cb("split") },
          { key = "?",                       cb = tree_cb("toggle_help") }
        }
      }
    }
  }
end
