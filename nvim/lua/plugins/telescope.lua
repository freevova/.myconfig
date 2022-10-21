return function()
  local map = function(mode, lhs, rhs)
    local opts = {noremap = true, silent = true}
    vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
  end

  function project_files()
    local opts = {
      layout_config = {
        prompt_position="top"
      },
      sorting_strategy = "ascending"
    }
    local ok = pcall(require"telescope.builtin".git_files, opts)
    if not ok then require"telescope.builtin".find_files(opts) end
  end

  map("n", "<leader>ff", "<CMD>lua project_files()<CR>")
  map("n", "<leader>fg", ":Telescope live_grep theme=get_ivy prompt_prefix=🔍<CR>")
  map("n", "<leader>fb", ":Telescope buffers theme=get_ivy prompt_prefix=🔍 sort_lastused=true<CR>")
  map("n", "<leader>fh", ":Telescope help_tags theme=get_ivy prompt_prefix=🔍<CR>")
  map("n", "<leader>fs", ":Telescope lsp_document_symbols theme=get_ivy prompt_prefix=🔍<CR>")

  local actions = require("telescope.actions")
  require("telescope").setup{
    defaults = {
      mappings = {
        i = {
          ["<esc>"] = actions.close,
          ["<C-p>"] = false,
          ["<C-n>"] = false,
          ["<C-j>"] = {
            actions.move_selection_next, type = "action",
            opts = { nowait = true, silent = true }
          },
          ["<C-k>"] = {
            actions.move_selection_previous, type = "action",
            opts = { nowait = true, silent = true }
          },
        },
      }
    }
  }
end
