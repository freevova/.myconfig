return function()
  local ts_config = require("nvim-treesitter.configs")

  ts_config.setup {
    ensure_installed = {
      "bash",
      "css",
      "erlang",
      "haskell",
      "elixir",
      "graphql",
      "javascript",
      "json",
      "lua",
      "html",
      "yaml"
    },
    highlight = {
      enable = true,
      use_languagetree = true
    },
    indent = {
      enable = true
    }
  }

  vim.opt.foldmethod = 'expr'
  vim.opt.foldexpr   = 'nvim_treesitter#foldexpr()'

  vim.cmd([[ autocmd BufReadPost,FileReadPost * normal zR ]])
end
