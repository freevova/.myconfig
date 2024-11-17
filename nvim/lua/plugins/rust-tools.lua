return function()
  local rt = require('rust-tools')

  local opts = {
    tools = {
      runnables = {
        use_telescope = true,
      },
      inlay_hints = {
        auto = true,
        show_parameter_hints = false,
        parameter_hints_prefix = "",
        other_hints_prefix = "",
      },
    },

    -- all the opts to send to nvim-lspconfig
    -- these override the defaults set by rust-tools.nvim
    -- see https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#rust_analyzer
    server = {
      -- on_attach is a callback called when the language server attachs to the buffer
      on_attach = function(_, bufnr)

        local bufmap = function(mode, lhs, rhs)
          local opts = {buffer = true}
          vim.keymap.set(mode, lhs, rhs, opts)
        end

        local bufopts = { buffer = bufnr }

        bufmap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', bufopts)
        bufmap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', bufopts)
        bufmap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', bufopts)
        bufmap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', bufopts)
        bufmap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', bufopts)
        bufmap('n', '<space>sh', '<cmd>lua vim.lsp.buf.signature_help()<CR>', bufopts)
        bufmap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', bufopts)
        bufmap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', bufopts)
        bufmap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', bufopts)
        bufmap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', bufopts)
        bufmap('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
        bufmap('n', '<space>q', '<cmd>lua vim.diagnostic.set_loclist()<CR>', bufopts)
        bufmap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', bufopts)
        bufmap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', bufopts)

        bufmap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', bufopts)
        bufmap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', bufopts)
        bufmap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', bufopts)

        bufmap('n', '<C-space>', rt.hover_actions.hover_actions, bufopts)
        bufmap('n', '<C-space>a', rt.code_action_group.code_action_group, bufopts)
      end,
      cmd = {"/home/vova/.local/share/mise/installs/rust/1.79.0/bin/rust-analyzer"},
      settings = {
        ["rust-analyzer"] = {
          -- enable clippy on save
          checkOnSave = {
            command = "clippy",
          },
        },
      },
    },
  }

  rt.setup(opts)
end
