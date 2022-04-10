return function()
  -- Set colorscheme
  vim.cmd [[ colorscheme gruvbox ]]
  vim.g.gruvbox_italic = 1
  vim.opt.background = "dark"

  -- indent-blankline plugin uses Whitespace as a default color
  -- neodark doesn't have this setting, but it has specific settings for indentLine plugin,
  -- the same color is written to vim.g.terminal_color_13 so we simply reuse it.
  -- Ideally, neodark theme should set color for Whitespace.
  -- vim.cmd("highlight Whitespace guifg=" .. vim.g.terminal_color_13 .. " gui=nocombine")
  --
  vim.cmd("highlight Comment cterm=italic gui=italic")
  vim.cmd([[
    if nvim_list_uis()[0]['ext_termcolors']
      highlight Normal guibg=NONE ctermbg=NONE
    endif
  ]])
  vim.cmd("highlight NvimTreeIndentMarker guifg=" .. vim.g.terminal_color_13)
end
