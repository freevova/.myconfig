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

  require'nvim-tree'.setup {
    sync_root_with_cwd = true,
    update_focused_file = {
      enable = true,
      update_root = true,
      ignore_list = {},
    },
    renderer = {
     highlight_git = true,
     special_files = {}
    },
    view = {
      mappings = {
        custom_only = false,
        list = {
          { key = "o", cb = ":lua NvimTreeOpenWith()<CR>" },
          { key = "|", cb = tree_cb("vsplit") },
          { key = "_", cb = tree_cb("split") },
          { key = "?", cb = tree_cb("toggle_help") }
        }
      }
    }
  }
end
