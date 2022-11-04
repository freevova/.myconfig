return function()
  require "lsp_signature".setup({
    hint_prefix = " ",
    transparency = 10
  })
end
