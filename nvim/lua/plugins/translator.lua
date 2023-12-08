return function()
    vim.g.translator_target_lang = "uk"

    vim.api.nvim_set_keymap("n", "<space>tr", "<Plug>TranslateW", {noremap = false})
    vim.api.nvim_set_keymap("v", "<space>tr", "<Plug>TranslateWV", {noremap = false})
end
