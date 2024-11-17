local bufnr = vim.api.nvim_get_current_buf()
vim.keymap.set("n", "<leader>a", function() vim.cmd.RustLsp('codeAction') end, { silent = true, buffer = bufnr })

local bufmap = function(mode, lhs, rhs)
  local opts = {buffer = true}
  vim.keymap.set(mode, lhs, rhs, opts)
end

local bufopts = { noremap=true, silent=true, buffer=bufnr }

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

bufmap("n", "<space>tp", ":ElixirToPipe<CR>", bufopts)
bufmap("n", "<space>fp", ":ElixirFromPipe<CR>", bufopts)
