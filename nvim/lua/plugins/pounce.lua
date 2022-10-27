return function()
  vim.keymap.set({ "n", "v" }, "<space>h", ":Pounce<CR>", { silent = true })

  require("pounce").setup({
    accept_keys = "NTESIROAGJKDFVBYMCXWPQZ",
    accept_best_key = "<enter>",
    multi_window = true,
    debug = false,
  })
end
