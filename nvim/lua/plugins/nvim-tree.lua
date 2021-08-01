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
  vim.g.nvim_tree_special_files = {} -- don't highlight readme files
  vim.g.nvim_tree_hide_dotfiles = 0
  vim.g.nvim_tree_git_hl = 1
  vim.g.nvim_tree_disable_default_keybindings = 1
  vim.g.nvim_tree_indent_markers = 1

  vim.g.nvim_tree_bindings = {
    { key = "o",                            cb = ":lua NvimTreeOpenWith()<CR>" }, -- custom
    { key = {"<CR>", "<2-LeftMouse>"},      cb = tree_cb("edit") },
    { key = {"<2-RightMouse>", "<C-]>"},    cb = tree_cb("cd") },
    { key = "|",                            cb = tree_cb("vsplit") }, -- custom
    { key = "_",                            cb = tree_cb("split") }, -- custom
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
    { key = "q",                            cb = tree_cb("close") },
    { key = "?",                            cb = tree_cb("toggle_help") } -- custom
  }
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
end
