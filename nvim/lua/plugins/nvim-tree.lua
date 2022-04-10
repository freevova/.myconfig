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
  vim.api.nvim_set_keymap("", "<C-F>", ":NvimTreeFindFile<CR>", {noremap = true})

  vim.g.nvim_tree_special_files = {}              -- " List of filenames that gets highlighted with NvimTreeSpecialFile
  vim.g.nvim_tree_git_hl = 1                      -- " 0 by default, will enable file highlight for git attributes (can be used without the icons).
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
    auto_reload_on_write               = true,
    disable_netrw                      = false,
    hide_root_folder                   = false,
    hijack_cursor                      = false,
    hijack_netrw                       = true,
    hijack_unnamed_buffer_when_opening = false,
    ignore_buffer_on_setup             = false,
    open_on_setup                      = false,
    open_on_setup_file                 = false,
    open_on_tab                        = false,
    sort_by                            = "name",
    update_cwd                         = false,
    renderer = {
      indent_markers = {
        enable = false,
        icons = {
          corner = "└ ",
          edge   = "│ ",
          none   = "  ",
        },
      },
    },
    update_focused_file = {
      enable      = true,
      update_cwd  = true,
      ignore_list = {},
    },
    diagnostics = {
      enable = false,
      show_on_dirs = false,
      icons = {
        hint    = "",
        info    = "",
        warning = "",
        error   = "",
      }
    },
    filters = {
      dotfiles = false,
      custom   = {},
      exclude  = {},
    },
    git = {
      enable  = true,
      ignore  = true,
      timeout = 400,
    },
    view = {
      width = 30,
      height = 30,
      side = 'left',
      auto_resize = false,
      mappings = {
        custom_only = true,
        list = {
          { key = "o",                            cb = ":lua NvimTreeOpenWith()<CR>" },
          { key = {"<2-LeftMouse>", "<CR>"},      cb = tree_cb("edit") },
          { key = {"<2-RightMouse>", "<C-]>"},    cb = tree_cb("cd") },
          { key = "|",                            cb = tree_cb("vsplit") },
          { key = "_",                            cb = tree_cb("split") },
          { key = "<C-t>",                        cb = tree_cb("tabnew") },
          { key = "<",                            cb = tree_cb("prev_sibling") },
          { key = ">",                            cb = tree_cb("next_sibling") },
          { key = "P",                            cb = tree_cb("parent_node") },
          { key = "<BS>",                         cb = tree_cb("close_node") },
          { key = "<S-CR>",                       cb = tree_cb("close_node") },
          { key = "<Tab>",                        cb = tree_cb("preview") },
          { key = "K",                            cb = tree_cb("first_sibling") },
          { key = "J",                            cb = tree_cb("last_sibling") },
          { key = "I",                            cb = tree_cb("toggle_ignored") },
          { key = "H",                            cb = tree_cb("toggle_dotfiles") },
          { key = "R",                            cb = tree_cb("refresh") },
          { key = "a",                            cb = tree_cb("create") },
          { key = "d",                            cb = tree_cb("remove") },
          { key = "r",                            cb = tree_cb("rename") },
          { key = "<C-r>",                        cb = tree_cb("full_rename") },
          { key = "x",                            cb = tree_cb("cut") },
          { key = "c",                            cb = tree_cb("copy") },
          { key = "p",                            cb = tree_cb("paste") },
          { key = "y",                            cb = tree_cb("copy_name") },
          { key = "Y",                            cb = tree_cb("copy_path") },
          { key = "gy",                           cb = tree_cb("copy_absolute_path") },
          { key = "[c",                           cb = tree_cb("prev_git_item") },
          { key = "]c",                           cb = tree_cb("next_git_item") },
          { key = "-",                            cb = tree_cb("dir_up") },
          { key = "s",                            cb = tree_cb("system_open") },
          { key = "q",                            cb = tree_cb("close") },
          { key = "?",                            cb = tree_cb("toggle_help") },
        }
      }
    }
  }
end
