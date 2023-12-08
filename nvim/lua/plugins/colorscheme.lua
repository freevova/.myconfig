return function()
  -- Set colorscheme
  --
  vim.opt.background = "dark"
  -- vim.cmd([[
  --   let g:gruvbox_material_background = 'hard'
  --   let g:gruvbox_material_better_performance = 1
  --   let g:gruvbox_material_transparent_background = 1
  -- ]]
  -- )
  -- vim.cmd [[ colorscheme gruvbox-material ]]
  vim.cmd [[ colorscheme gruvbox ]]
  vim.g.gruvbox_italic = 1

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
  -- vim.cmd("highlight NvimTreeIndentMarker guifg=" .. vim.g.terminal_color_13)

  -- nvim-treesitter/nvim-treesitter
  vim.api.nvim_set_hl(0, "@symbol", { link = "Identifier" })

  vim.cmd([[
    " kyazdani42/nvim-tree.lua
    highlight NvimTreeIndentMarker guifg=#d3869b

    " lewis6991/gitsigns.nvim
    highlight GitSignsCurrentLineBlame guifg=grey gui=bold,italic

    " hrsh7th/nvim-cmp
    highlight! CmpItemAbbrDeprecated guibg=NONE gui=strikethrough guifg=#808080
    highlight! CmpItemAbbrMatch guibg=NONE guifg=#569CD6
    highlight! CmpItemAbbrMatchFuzzy guibg=NONE guifg=#569CD6
    highlight! CmpItemKindVariable guibg=NONE guifg=#9CDCFE
    highlight! CmpItemKindInterface guibg=NONE guifg=#9CDCFE
    highlight! CmpItemKindText guibg=NONE guifg=#9CDCFE
    highlight! CmpItemKindFunction guibg=NONE guifg=#C586C0
    highlight! CmpItemKindMethod guibg=NONE guifg=#C586C0
    highlight! CmpItemKindKeyword guibg=NONE guifg=#D4D4D4
    highlight! CmpItemKindProperty guibg=NONE guifg=#D4D4D4
    highlight! CmpItemKindUnit guibg=NONE guifg=#D4D4D4

    "rlane/pounce.nvim"
    highlight! PounceMatch guibg=#28b463 guifg=#D4D4D4
    highlight! PounceGap guibg=#008000 guifg=#D4D4D4
    highlight! PounceAccept guibg= #b7950b guifg=#D4D4D4
    highlight! PounceAcceptBest guibg=#ff0000 guifg=#D4D4D4
  ]])
end
