return function()
  vim.api.nvim_set_keymap("", "<leader>q", ":Bdelete menu<CR>", {noremap = true})
end
