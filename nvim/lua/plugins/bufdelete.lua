return function()
  vim.api.nvim_set_keymap("", "<leader>q", ":Bdelete<CR>", {noremap = true})
end
