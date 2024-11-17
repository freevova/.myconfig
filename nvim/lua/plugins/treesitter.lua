return function()
  local ts_config = require("nvim-treesitter.configs")

  ts_config.setup {
    ensure_installed = {
      "bash",
      "css",
      "eex",
      "elixir",
      "erlang",
      "graphql",
      "haskell",
      "html",
      "heex",
      "heex",
      "javascript",
      "java",
      "json",
      "lua",
      "markdown",
      "pug",
      "tsx",
      "typescript",
      "yaml"
    },
    highlight = {
      enable = true,
      use_languagetree = true
    },
    indent = {
      enable = true
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "gnn",
        node_incremental = "grn",
        scope_incremental = "grc",
        node_decremental = "grm",
      },
    },
    textobjects = {
      select = {
        enable = true,
        -- Automatically jump forward to textobj, similar to targets.vim
        lookahead = true,
        keymaps = {
          -- You can use the capture groups defined in textobjects.scm
          ["af"] = "@function.outer",
          ["if"] = "@function.inner",
          ["ac"] = "@class.outer",
          ["ic"] = "@class.inner"
        }
      },
      move = {
        enable = true,
        set_jumps = true,
        goto_next_start = {
          [']m'] = '@function.outer',
          [']]'] = '@class.outer'
        },
        goto_next_end = {
          [']M'] = '@function.outer',
          [']['] = '@class.outer'
        },
        goto_previous_start = {
          ['[m'] = '@function.outer',
          ['[['] = '@class.outer'
        },
        goto_previous_end = {
          ['[M'] = '@function.outer',
          ['[]'] = '@class.outer'
        }
      },
      swap = {
        enable = true,
        swap_next = {["<space>xp"] = "@parameter.inner"},
        swap_previous = {["<space>xP"] = "@parameter.inner"}
      },
      lsp_interop = {
        enable = true,
        border = 'none',
        peek_definition_code = {
          ["<space>df"] = "@function.outer",
          ["<space>dF"] = "@class.outer",
        },
      },
    }
  }
end
