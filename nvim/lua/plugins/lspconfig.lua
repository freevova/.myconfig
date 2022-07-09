return function()
  lspconfig = require("lspconfig")

  vim.diagnostic.config({
    virtual_text = false,
    severity_sort = true,
    float = {
      border = 'rounded',
      source = 'always',
      header = '',
      prefix = '',
    },
  })

  vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(
    vim.lsp.handlers.hover,
    {border = 'rounded'}
  )

  vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(
    vim.lsp.handlers.signature_help,
    {border = 'rounded'}
  )


  local signs = { Error = "✘ ", Warning = "▲ ", Hint = "⚑ ", Information = " " }
  for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
  end


  local on_attach = function(client, bufnr)
    require 'illuminate'.on_attach(client)

    local bufmap = function(mode, lhs, rhs)
      local opts = {buffer = true}
      vim.keymap.set(mode, lhs, rhs, opts)
    end

    local bufopts = { noremap=true, silent=true, buffer=bufnr }
    bufmap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', bufopts)
    bufmap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', bufopts)
    bufmap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', bufopts)
    bufmap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', bufopts)
    bufmap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', bufopts)
    bufmap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<cr>', bufopts)
    bufmap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<cr>', bufopts)
    bufmap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<cr>', bufopts)
    bufmap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<cr>', bufopts)
    -- bufmap("n", "<space>e", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<cr>", bufopts)
    bufmap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<cr>', bufopts)
    bufmap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<cr>', bufopts)
    bufmap('n', '<space>q', '<cmd>lua vim.diagnostic.set_loclist()<cr>', bufopts)
    bufmap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>', bufopts)
    bufmap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>', bufopts)

    bufmap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>', bufopts)
    bufmap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>', bufopts)
    bufmap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>', bufopts)
  end

  local manipulate_pipes = function(command)
    return function()
      local position_params = vim.lsp.util.make_position_params()
      vim.lsp.buf.execute_command(
        {
          command = "manipulatePipes:" .. command,
          arguments = {
            command,
            position_params.textDocument.uri,
            position_params.position.line,
            position_params.position.character
          }
        }
      )
    end
  end

  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

  lspconfig.elixirls.setup {
    on_attach = on_attach,
    cmd = {"/home/vova/projects/elixir-ls/language_server.sh"},
    settings = {
      elixirLS = {dialyzerEnabled = false}
    },
    commands = {
      ToPipe = {manipulate_pipes("toPipe"), "Convert function call to pipe operator"},
      FromPipe = {manipulate_pipes("fromPipe"), "Convert pipe operator to function call"}
    },
    capabilities = capabilities
  }

 -- TODO: define this mapping in on_attach only for Elixir
  vim.api.nvim_set_keymap("n", "<space>tp", ":ToPipe<CR>", {noremap = true})
  vim.api.nvim_set_keymap("n", "<space>fp", ":FromPipe<CR>", {noremap = true})
end
