return function()
  vim.opt.termguicolors = true

  vim.api.nvim_set_keymap("", "[b", ":BufferLineCycleNext<CR>", {noremap = true})
  vim.api.nvim_set_keymap("", "]b", ":BufferLineCyclePrev<CR>", {noremap = true})

  require('bufferline').setup {
    options = {
      -- numbers = "both", -- "none" | "ordinal" | "buffer_id" | "both",
      diagnostics_indicator = function(count, level, diagnostics_dict, context)
        local icon = level:match("error") and " " or " "
        return " " .. icon .. count
      end,
      diagnostics = "nvim_lsp",
      enforce_regular_tabs = true,
      offsets = {{
        filetype = "NvimTree",
        text = "File Explorer",
        highlight = "Directory",
        text_align = "left"
      }},
    }
  }
end
