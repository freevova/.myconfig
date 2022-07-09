return function()
  vim.api.nvim_set_keymap("n", "<Leader>b", ":lua require('fzf-lua').buffers({ fzf_layout = 'reverse-list' })<CR>", {noremap = true})
  vim.api.nvim_set_keymap("n", "<Leader>F", ":lua require('fzf-lua').files({ fzf_layout = 'reverse-list' })<CR>", {noremap = true})
  vim.api.nvim_set_keymap("n", "<Leader>f", ":lua require('fzf-lua').git_files({ fzf_layout = 'reverse-list' })<CR>", {noremap = true})
  vim.api.nvim_set_keymap("n", "<Leader>g", ":lua require('fzf-lua').grep({ fzf_layout = 'reverse-list' })<CR>", {noremap = true})
  -- vim.api.nvim_set_keymap("n", "<Leader>t", ":lua require('fzf-lua').help_tags({ fzf_layout = 'reverse-list' })<CR>", {noremap = true})

  local actions = require "fzf-lua.actions"
  require'fzf-lua'.setup {
    actions = {
      files = {
        ["default"]     = actions.file_edit_or_qf,
        ["ctrl-x"]      = actions.file_split,
        ["ctrl-v"]      = actions.file_vsplit,
        ["ctrl-t"]      = actions.file_tabedit,
        ["alt-q"]       = actions.file_sel_to_qf,
      },
      buffers = {
        -- providers that inherit these actions:
        --   buffers, tabs, lines, blines
        ["default"]     = actions.buf_edit,
        ["ctrl-x"]      = actions.buf_split,
        ["ctrl-v"]      = actions.buf_vsplit,
        ["ctrl-t"]      = actions.buf_tabedit,
      }
    }
  }
end
