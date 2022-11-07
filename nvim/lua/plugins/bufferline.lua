return function()

  require('bufferline').setup {
    highlights = {
      tab_selected = {
        fg = 'yellow',
        bg = 'grey'
      },
    },
    options = {
      -- NOTE: this plugin is designed with this icon in mind,
      -- and so changing this is NOT recommended, this is intended
      -- as an escape hatch for people who cannot bear it for whatever reason
      -- indicator_icon = '▎',
      indicator = {
        icon = '▎',
        style = 'icon',
      },
      buffer_close_icon = '',
      modified_icon = '●',
      close_icon = '',
      left_trunc_marker = '',
      right_trunc_marker = '',
      tab_size = 18,
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
