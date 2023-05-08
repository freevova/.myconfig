return function()
  require('bufferline').setup {
    highlights = {
      tab_selected = {
        fg = 'yellow',
        bg = 'grey'
      },
    },
    options = {
      diagnostics = "nvim_lsp",
      diagnostics_indicator = function(count, level, diagnostics_dict, context)
        local icon = level:match("error") and " " or " "
        return " " .. icon .. count
      end,
      offsets = {{filetype = "NvimTree", text = "File Explorer" , text_align = "left", highlight = "Directory"}},
      separator_style = "slant",
      enforce_regular_tabs = true,
      always_show_bufferline = true,
    }
  }
end
