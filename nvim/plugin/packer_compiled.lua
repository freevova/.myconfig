-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/vova/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/vova/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/vova/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/vova/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/vova/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  CamelCaseMotion = {
    config = { "\27LJ\1\2\2\0\0\5\0\f\0!4\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\4\0%\3\5\0002\4\0\0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\6\0%\3\a\0002\4\0\0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\b\0%\3\t\0002\4\0\0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\n\0%\3\v\0002\4\0\0>\0\5\1G\0\1\0\29<Plug>CamelCaseMotion_ge\age\28<Plug>CamelCaseMotion_e\6e\28<Plug>CamelCaseMotion_b\6b\28<Plug>CamelCaseMotion_w\6w\5\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/CamelCaseMotion"
  },
  ["animate.vim"] = {
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/animate.vim"
  },
  ["close-buffers.vim"] = {
    config = { "\27LJ\1\2l\0\0\5\0\a\0\t4\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\4\0%\3\5\0003\4\6\0>\0\5\1G\0\1\0\1\0\1\fnoremap\2\22:Bdelete menu<CR>\14<leader>q\5\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/close-buffers.vim"
  },
  colorscheme = {
    config = { "\27LJ\1\2\2\0\0\3\0\v\0\0254\0\0\0007\0\1\0%\1\2\0>\0\2\0014\0\0\0007\0\3\0'\1\1\0:\1\4\0004\0\0\0007\0\5\0%\1\a\0:\1\6\0004\0\0\0007\0\1\0%\1\b\0>\0\2\0014\0\0\0007\0\1\0%\1\t\0004\2\0\0007\2\3\0027\2\n\2$\1\2\1>\0\2\1G\0\1\0\22terminal_color_13*highlight NvimTreeIndentMarker guifg=.highlight Comment cterm=italic gui=italic\tdark\15background\bopt\19gruvbox_italic\6g\26 colorscheme gruvbox \bcmd\bvim\0" },
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/colorscheme"
  },
  ["direnv.vim"] = {
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/direnv.vim"
  },
  ["fzf-lua"] = {
    config = { "\27LJ\1\2;\0\0\2\0\3\0\0054\0\0\0007\0\1\0%\1\2\0>\0\2\1G\0\1\0\28set winhl=Normal:Normal\bcmd\bvim\29\0\1\3\0\1\0\0044\1\0\0008\2\2\0>\1\2\1G\0\1\0\nprint\29\0\1\3\0\1\0\0044\1\0\0008\2\2\0>\1\2\1G\0\1\0\nprint\29\0\1\3\0\1\0\0044\1\0\0008\2\2\0>\1\2\1G\0\1\0\nprint;\0\0\2\0\3\0\0054\0\0\0007\0\1\0%\1\2\0>\0\2\1G\0\1\0\28set winhl=Normal:Normal\bcmd\bvim\v\0\0\1\0\0\0\1G\0\1\0;\0\0\2\0\3\0\0054\0\0\0007\0\1\0%\1\2\0>\0\2\1G\0\1\0\28set winhl=Normal:Normal\bcmd\bvim¾\22\1\0\6\0g\0˜\0014\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\4\0%\3\5\0003\4\6\0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\a\0%\3\b\0003\4\t\0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\n\0%\3\v\0003\4\f\0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\r\0%\3\14\0003\4\15\0>\0\5\0014\0\16\0%\1\17\0>\0\2\0024\1\16\0%\2\18\0>\1\2\0027\1\19\0013\2\25\0003\3\20\0003\4\21\0:\4\22\0031\4\23\0:\4\24\3:\3\26\0023\3\27\0:\3\28\0023\3\29\0003\4\31\0007\5\30\0:\5 \0047\5!\0:\5\"\0047\5#\0:\5$\0047\5%\0:\5&\0047\5'\0:\5(\0041\5)\0:\5*\4:\4+\3:\3,\0023\3-\0003\4/\0003\5.\0:\0050\0043\0051\0:\0052\0043\0053\0:\0054\0043\0055\0:\0056\4:\0047\3:\0038\0023\0039\0%\4:\0%\5;\0$\4\5\4:\4<\0033\4=\0007\5\30\0:\5 \0047\5!\0:\5\"\0047\5#\0:\5$\0047\5%\0:\5&\0047\5'\0:\5(\0041\5>\0:\5*\4:\4+\3:\3?\0023\3@\0:\3A\0023\3B\0003\4D\0007\5C\0:\5 \0047\5E\0:\5\"\0047\5F\0:\5$\0047\5G\0:\5&\0047\5H\0:\5I\4:\4+\3:\3J\0023\3K\0003\4M\0007\5L\0:\5 \0041\5N\0:\5*\4:\4+\0033\4O\0001\5P\0:\5\24\4:\4\26\0031\4Q\0:\4R\3:\3S\0023\3T\0:\3U\0023\3V\0003\4X\0003\5W\0:\5Y\0043\5Z\0:\5[\0043\5\\\0:\5]\0043\5^\0:\5_\4:\0047\3:\3`\0022\3\0\0:\3a\0022\3\0\0:\3b\0022\3\0\0:\3c\0023\3d\0:\3e\0021\3f\0:\3\24\2>\1\2\1G\0\1\0\0\21file_icon_colors\1\0\1\blua\tblue\rmanpages\rhelptags\floclist\blsp\tHint\1\0\2\ncolor\fmagenta\ticon\bï ´\16Information\1\0\2\ncolor\tblue\ticon\bï„©\fWarning\1\0\2\ncolor\vyellow\ticon\bï±\nError\1\0\0\1\0\2\ncolor\bred\ticon\bï—\1\0\5\vprompt\tâ¯ \rseverity\thint\15file_icons\2\14git_icons\1\14lsp_icons\2\rquickfix\1\0\2\15file_icons\2\14git_icons\2\17colorschemes\18post_reset_cb\0\0\1\0\2\14win_width\4³æÌ™\3³æÌş\3\15win_height\4š³æÌ\t™³†ÿ\3\0\1\0\0\16colorscheme\1\0\2\vprompt\21Colorschemesâ¯ \17live_preview\2\fbuffers\vctrl-x\fbuf_del\16buf_tabedit\15buf_vsplit\14buf_split\1\0\0\rbuf_edit\1\0\4\16color_icons\2\15file_icons\2\vprompt\16Buffersâ¯ \18sort_lastused\2\roldfiles\1\0\2\vprompt\16Historyâ¯ \rcwd_only\1\tgrep\0\1\0\0\frg_opts<--color=always --smart-case -g '!{.git,node_modules}/*'2--hidden --column --line-number --no-heading \1\0\6\vprompt\vRgâ¯ \bcmd\17rg --vimgrep\14git_icons\2\15file_icons\2\16color_icons\2\17input_prompt\17Grep Forâ¯ \bgit\nicons\6?\1\0\2\ncolor\fmagenta\ticon\6?\6A\1\0\2\ncolor\ngreen\ticon\6A\6D\1\0\2\ncolor\bred\ticon\6D\6M\1\0\0\1\0\2\ncolor\vyellow\ticon\6M\1\0\5\vprompt\17GitFilesâ¯ \15file_icons\2\bcmd$git ls-files --exclude-standard\14git_icons\2\16color_icons\2\nfiles\factions\vctrl-y\0\vctrl-q\19file_sel_to_qf\vctrl-t\17file_tabedit\vctrl-v\16file_vsplit\vctrl-s\15file_split\fdefault\1\0\0\14file_edit\1\0\5\vprompt\14Filesâ¯ \bcmd\5\14git_icons\2\16color_icons\2\15file_icons\2\14fzf_binds\1\v\0\0\22f2:toggle-preview\27f3:toggle-preview-wrap!shift-down:preview-page-down\29shift-up:preview-page-up\26ctrl-d:half-page-down\24ctrl-u:half-page-up\21ctrl-f:page-down\19ctrl-b:page-up\22ctrl-a:toggle-all\23ctrl-l:clear-query\fwinopts\1\0\f\17flip_columns\3x\19preview_layout\tflex\21preview_vertical\rdown:45%\16preview_cmd\5\rfzf_args\5\rbat_opts+--style=numbers,changes --color always\17preview_wrap\vnowrap\17preview_opts\rnohidden\19preview_border\vborder\14bat_theme\17Coldark-Dark\15fzf_layout\freverse\23preview_horizontal\14right:60%\21window_on_create\0\15win_border\1\t\0\0\bâ•­\bâ”€\bâ•®\bâ”‚\bâ•¯\bâ”€\bâ•°\bâ”‚\1\0\4\14win_width\4š³æÌ\t™³¦ÿ\3\fwin_row\4³æÌ™\3³æÌş\3\15win_height\4³æÌ™\3³æ¬ÿ\3\fwin_col\4\0€€€ÿ\3\nsetup\ffzf-lua\20fzf-lua.actions\frequire\1\0\1\fnoremap\2F:lua require('fzf-lua').grep({ fzf_layout = 'reverse-list' })<CR>\14<Leader>g\1\0\1\fnoremap\2K:lua require('fzf-lua').git_files({ fzf_layout = 'reverse-list' })<CR>\14<Leader>f\1\0\1\fnoremap\2G:lua require('fzf-lua').files({ fzf_layout = 'reverse-list' })<CR>\14<Leader>F\1\0\1\fnoremap\2I:lua require('fzf-lua').buffers({ fzf_layout = 'reverse-list' })<CR>\14<Leader>b\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/fzf-lua"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\1\0026\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  indentLine = {
    config = { "\27LJ\1\2†\1\0\0\2\0\6\0\t4\0\0\0007\0\1\0%\1\3\0:\1\2\0004\0\0\0007\0\1\0003\1\5\0:\1\4\0G\0\1\0\1\5\0\0\rstartify\vpacker\rWhichKey\rNvimTree\31indentLine_fileTypeExclude\bâ”Š\20indentLine_char\6g\bvim\0" },
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/indentLine"
  },
  ["lazygit.nvim"] = {
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/lazygit.nvim"
  },
  ["lsp_signature.nvim"] = {
    config = { "\27LJ\1\2S\0\0\2\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\1G\0\1\0\1\0\1\16hint_prefix\tî€ \nsetup\18lsp_signature\frequire\0" },
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    config = { "\27LJ\1\2Á\2\0\0\3\0\6\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0:\2\5\1>\0\2\1G\0\1\0\15symbol_map\1\0\20\tText\bî˜’\rFunction\aÆ’\nClass\bïƒ¨\nColor\bîˆ«\14Interface\bï°®\vModule\bï£–\rConstant\bîˆ¬\vMethod\aÆ’\tUnit\bï‘µ\15EnumMember\bï…\rProperty\bî˜¤\vStruct\bïƒŠ\rVariable\bî›\fSnippet\bï¬Œ\vFolder\bï„•\tFile\bïœ£\nValue\bï¢Ÿ\16Constructor\bîˆ\tEnum\bäº†\fKeyword\bï …\1\0\1\14with_text\1\tinit\flspkind\frequire\0" },
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\1\2Ï\4\0\0\4\0 \0/4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\t\0003\2\3\0003\3\4\0:\3\5\0023\3\6\0:\3\a\0022\3\0\0:\3\b\2:\2\n\0013\2\f\0003\3\v\0:\3\r\0023\3\14\0:\3\15\0023\3\16\0:\3\17\0023\3\18\0:\3\19\0023\3\20\0:\3\21\0023\3\22\0:\3\23\2:\2\24\0013\2\25\0002\3\0\0:\3\r\0022\3\0\0:\3\15\0023\3\26\0:\3\17\0023\3\27\0:\3\19\0022\3\0\0:\3\21\0022\3\0\0:\3\23\2:\2\28\0012\2\0\0:\2\29\0013\2\30\0:\2\31\1>\0\2\1G\0\1\0\15extensions\1\3\0\0\14nvim-tree\bfzf\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\2\0\0\vbranch\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23disabled_filetypes\23section_separators\1\3\0\0\bî‚°\bî‚²\25component_separators\1\3\0\0\bî‚±\bî‚³\1\0\2\ntheme\fgruvbox\18icons_enabled\2\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\1\2ª\2\0\0\t\0\r\1!4\0\0\0%\1\1\0>\0\2\0027\1\2\0>\1\1\0014\1\0\0%\2\3\0>\1\2\0027\1\2\0013\2\4\0>\1\2\0014\1\0\0%\2\5\0>\1\2\0027\1\6\0017\2\a\0002\3\3\0\16\4\1\0%\5\b\0%\6\t\0%\a\n\0)\b\0\0>\4\5\2;\4\1\3\16\4\1\0%\5\v\0%\6\t\0%\a\f\0)\b\0\0>\4\5\0<\4\0\0>\2\2\1G\0\1\0\velixir\t do$\blua\bend\nthen$\14add_rules\fendwise\27nvim-autopairs.ts-rule\1\0\2\17map_complete\2\vmap_cr\2$nvim-autopairs.completion.compe\nsetup\19nvim-autopairs\frequire\5€€À™\4\0" },
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-bqf"] = {
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/nvim-bqf"
  },
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\1\2W\0\4\b\0\5\0\14\16\5\1\0007\4\0\1%\6\1\0>\4\3\2\15\0\4\0T\5\2€%\4\2\0T\5\1€%\4\3\0%\5\4\0\16\6\4\0\16\a\0\0$\5\a\5H\5\2\0\6 \tï± \tïœ \nerror\nmatch¦\2\1\0\5\0\r\0\0194\0\0\0007\0\1\0)\1\2\0:\1\2\0004\0\3\0%\1\4\0>\0\2\0027\0\5\0003\1\v\0003\2\a\0001\3\6\0:\3\b\0022\3\3\0003\4\t\0;\4\1\3:\3\n\2:\2\f\1>\0\2\1G\0\1\0\foptions\1\0\0\foffsets\1\0\4\ttext\18File Explorer\15text_align\tleft\14highlight\14Directory\rfiletype\rNvimTree\26diagnostics_indicator\1\0\2\16diagnostics\rnvim_lsp\25enforce_regular_tabs\2\0\nsetup\15bufferline\frequire\18termguicolors\bopt\bvim\0" },
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua"
  },
  ["nvim-compe"] = {
    config = { "\27LJ\1\2F\0\1\6\0\3\0\b4\1\0\0007\1\1\0017\1\2\1\16\2\0\0)\3\2\0)\4\2\0)\5\2\0@\1\5\0\27nvim_replace_termcodes\bapi\bvim›\1\0\0\5\0\b\2\0284\0\0\0007\0\1\0007\0\2\0%\1\3\0>\0\2\2\21\0\0\0\b\0\1\0T\1\18€4\1\0\0007\1\1\0017\1\4\1%\2\3\0>\1\2\2\16\2\1\0007\1\5\1\16\3\0\0\16\4\0\0>\1\4\2\16\2\1\0007\1\6\1%\3\a\0>\1\3\2\v\1\0\0T\1\2€)\1\1\0T\2\1€)\1\2\0H\1\2\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\bvim\2\0î\1\0\0\2\2\b\1\"4\0\0\0007\0\1\0007\0\2\0>\0\1\2\t\0\0\0T\0\4€+\0\0\0%\1\3\0@\0\2\0T\0\23€4\0\0\0007\0\1\0007\0\4\0'\1\1\0>\0\2\2\t\0\0\0T\0\4€+\0\0\0%\1\5\0@\0\2\0T\0\f€+\0\1\0>\0\1\2\15\0\0\0T\1\4€+\0\0\0%\1\6\0@\0\2\0T\0\4€4\0\0\0007\0\1\0007\0\a\0@\0\1\0G\0\1\0\0À\1À\19compe#complete\n<C-j>!<Plug>(vsnip-expand-or-jump)\20vsnip#available\n<C-n>\15pumvisible\afn\bvim\2³\1\0\0\2\1\a\1\0254\0\0\0007\0\1\0007\0\2\0>\0\1\2\t\0\0\0T\0\4€+\0\0\0%\1\3\0@\0\2\0T\0\14€4\0\0\0007\0\1\0007\0\4\0'\1ÿÿ>\0\2\2\t\0\0\0T\0\4€+\0\0\0%\1\5\0@\0\2\0T\0\3€+\0\0\0%\1\6\0@\0\2\0G\0\1\0\0À\n<C-k>\28<Plug>(vsnip-jump-prev)\19vsnip#jumpable\n<C-p>\15pumvisible\afn\bvim\2·\n\1\0\a\0004\1j4\0\0\0007\0\1\0%\1\3\0:\1\2\0001\0\4\0001\1\5\0004\2\6\0001\3\b\0:\3\a\0024\2\6\0001\3\n\0:\3\t\0024\2\0\0007\2\v\0027\2\f\2%\3\r\0%\4\14\0%\5\15\0003\6\16\0>\2\5\0014\2\0\0007\2\v\0027\2\f\2%\3\17\0%\4\14\0%\5\15\0003\6\18\0>\2\5\0014\2\0\0007\2\v\0027\2\f\2%\3\r\0%\4\19\0%\5\20\0003\6\21\0>\2\5\0014\2\0\0007\2\v\0027\2\f\2%\3\17\0%\4\19\0%\5\20\0003\6\22\0>\2\5\0014\2\0\0007\2\v\0027\2\f\2%\3\r\0%\4\23\0%\5\24\0003\6\25\0>\2\5\0014\2\0\0007\2\v\0027\2\f\2%\3\r\0%\4\26\0%\5\27\0003\6\28\0>\2\5\0014\2\0\0007\2\v\0027\2\f\2%\3\r\0%\4\29\0%\5\30\0003\6\31\0>\2\5\0014\2\0\0007\2\v\0027\2\f\2%\3\r\0%\4 \0%\5!\0003\6\"\0>\2\5\0014\2\0\0007\2\v\0027\2\f\2%\3\r\0%\4#\0%\5$\0003\6%\0>\2\5\0014\2&\0%\3'\0>\2\2\0027\2(\0023\3)\0003\4+\0003\5*\0:\5,\0044\5-\0007\5.\0054\6\0\0007\6\1\0067\6/\6\22\6\0\6>\5\2\2:\0050\4:\0041\0033\0042\0:\0043\3>\2\2\0010\0\0€G\0\1\0\vsource\1\0\b\14ultisnips\2\rnvim_lua\2\rnvim_lsp\2\vbuffer\2\nvsnip\1\tcalc\2\fluasnip\2\tpath\2\18documentation\15max_height\nlines\nfloor\tmath\vborder\1\0\4\17winhighlightHNormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder\15min_height\3\1\14min_width\3<\14max_width\3x\1\t\0\0\5\5\5\6 \5\5\5\6 \1\0\f\20resolve_timeout\3 \6\19source_timeout\3È\1\fenabled\2\ndebug\1\14preselect\venable\19max_abbr_width\3d\21incomplete_delay\3\3\17autocomplete\2\19max_kind_width\3d\15min_length\3\1\18throttle_time\3P\19max_menu_width\3d\nsetup\ncompe\frequire\1\0\2\texpr\2\vsilent\2\"compe#scroll({ 'delta': -4 })\n<C-d>\1\0\2\texpr\2\vsilent\2\"compe#scroll({ 'delta': +4 })\n<C-f>\1\0\2\texpr\2\vsilent\2\29compe#confirm('<space>')\f<space>\1\0\2\texpr\2\vsilent\2\25compe#close('<C-e>')\n<C-e>\1\0\2\texpr\2\vsilent\2\21compe#complete()\14<C-Space>\1\0\1\texpr\2\1\0\1\texpr\2\25v:lua.c_k_complete()\n<C-k>\1\0\1\texpr\2\6s\1\0\1\texpr\2\25v:lua.c_j_complete()\n<C-j>\6i\20nvim_set_keymap\bapi\0\17c_k_complete\0\17c_j_complete\a_G\0\0\21menuone,noselect\16completeopt\6o\bvimçÌ™³\6³æÌş\3\0" },
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-fzf"] = {
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/nvim-fzf"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\1\2A\2\0\3\1\3\0\a4\0\0\0007\0\1\0007\0\2\0+\1\0\0C\2\0\0=\0\1\1G\0\1\0\1À\24nvim_buf_set_keymap\bapi\bvimA\2\0\3\1\3\0\a4\0\0\0007\0\1\0007\0\2\0+\1\0\0C\2\0\0=\0\1\1G\0\1\0\1À\24nvim_buf_set_option\bapi\bvim›\r\1\2\14\0006\0Š\0011\2\0\0001\3\1\0004\4\2\0007\4\3\0047\4\4\0044\5\2\0007\5\3\0057\5\6\0054\6\2\0007\6\3\0067\6\a\0067\6\b\0063\a\t\0>\5\3\2:\5\5\0043\4\n\0004\5\v\0\16\6\4\0>\5\2\4D\b\v€%\n\f\0\16\v\b\0$\n\v\n4\v\2\0007\v\r\v7\v\14\v\16\f\n\0003\r\15\0:\t\16\r:\n\17\r>\v\3\1B\b\3\3N\bó3\5\18\0\16\6\2\0%\a\19\0%\b\20\0%\t\21\0\16\n\5\0>\6\5\1\16\6\2\0%\a\19\0%\b\22\0%\t\23\0\16\n\5\0>\6\5\1\16\6\2\0%\a\19\0%\b\24\0%\t\25\0\16\n\5\0>\6\5\1\16\6\2\0%\a\19\0%\b\26\0%\t\27\0\16\n\5\0>\6\5\1\16\6\2\0%\a\19\0%\b\28\0%\t\29\0\16\n\5\0>\6\5\1\16\6\2\0%\a\19\0%\b\30\0%\t\31\0\16\n\5\0>\6\5\1\16\6\2\0%\a\19\0%\b \0%\t!\0\16\n\5\0>\6\5\1\16\6\2\0%\a\19\0%\b\"\0%\t#\0\16\n\5\0>\6\5\1\16\6\2\0%\a\19\0%\b$\0%\t%\0\16\n\5\0>\6\5\1\16\6\2\0%\a\19\0%\b&\0%\t'\0\16\n\5\0>\6\5\1\16\6\2\0%\a\19\0%\b(\0%\t)\0\16\n\5\0>\6\5\1\16\6\2\0%\a\19\0%\b*\0%\t+\0\16\n\5\0>\6\5\1\16\6\2\0%\a\19\0%\b,\0%\t-\0\16\n\5\0>\6\5\1\16\6\2\0%\a\19\0%\b.\0%\t/\0\16\n\5\0>\6\5\1\16\6\2\0%\a\19\0%\b0\0%\t1\0\16\n\5\0>\6\5\1\16\6\2\0%\a\19\0%\b2\0%\t3\0\16\n\5\0>\6\5\1\16\6\2\0%\a\19\0%\b4\0%\t5\0\16\n\5\0>\6\5\0010\0\0€G\0\1\0*<cmd>lua vim.lsp.buf.formatting()<CR>\r<space>f2<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>\r<space>q0<cmd>lua vim.lsp.diagnostic.goto_next()<CR>\a]d0<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>\a[d<<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>\r<space>e*<cmd>lua vim.lsp.buf.references()<CR>\agr+<cmd>lua vim.lsp.buf.code_action()<CR>\14<space>ca&<cmd>lua vim.lsp.buf.rename()<CR>\14<space>rn/<cmd>lua vim.lsp.buf.type_definition()<CR>\r<space>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\14<space>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\14<space>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\14<space>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\14<space>sh.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<Cmd>lua vim.lsp.buf.hover()<CR>\6K*<Cmd>lua vim.lsp.buf.definition()<CR>\agd+<Cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\1\0\2\vsilent\2\fnoremap\2\vtexthl\ttext\1\0\1\nnumhl\5\16sign_define\afn\23LspDiagnosticsSign\npairs\1\0\4\16Information\tï‘‰ \tHint\tï µ \nError\tï™™ \fWarning\tï”© \1\0\3\nsigns\2\17virtual_text\1\21update_in_insert\1\27on_publish_diagnostics\15diagnostic\twith$textDocument/publishDiagnostics\rhandlers\blsp\bvim\0\0‚\2\0\0\5\1\15\0\0294\0\0\0007\0\1\0007\0\2\0007\0\3\0>\0\1\0024\1\0\0007\1\1\0017\1\4\0017\1\5\0013\2\a\0%\3\6\0+\4\0\0$\3\4\3:\3\b\0022\3\5\0+\4\0\0;\4\1\0037\4\t\0007\4\n\4;\4\2\0037\4\v\0007\4\f\4;\4\3\0037\4\v\0007\4\r\4;\4\4\3:\3\14\2>\1\2\1G\0\1\0\0À\14arguments\14character\tline\rposition\buri\17textDocument\fcommand\1\0\0\21manipulatePipes:\20execute_command\bbuf\25make_position_params\tutil\blsp\bvim\20\1\1\2\0\1\0\0031\1\0\0000\0\0€H\1\2\0\0Á\4\1\0\b\0 \00014\0\0\0%\1\1\0>\0\2\0025\0\1\0001\0\2\0001\1\3\0004\2\1\0007\2\4\0027\2\5\0023\3\6\0:\0\a\0033\4\b\0:\4\t\0033\4\v\0003\5\n\0:\5\f\4:\4\r\0033\4\16\0003\5\15\0\16\6\1\0%\a\14\0>\6\2\2;\6\1\5:\5\17\0043\5\19\0\16\6\1\0%\a\18\0>\6\2\2;\6\1\5:\5\20\4:\4\21\3>\2\2\0014\2\22\0007\2\23\0027\2\24\2%\3\25\0%\4\26\0%\5\27\0003\6\28\0>\2\5\0014\2\22\0007\2\23\0027\2\24\2%\3\25\0%\4\29\0%\5\30\0003\6\31\0>\2\5\1G\0\1\0\1\0\1\fnoremap\2\18:FromPipe<CR>\14<space>fp\1\0\1\fnoremap\2\16:ToPipe<CR>\14<space>tp\6n\20nvim_set_keymap\bapi\bvim\rcommands\rFromPipe\1\3\0\0\0+Convert pipe operator to function call\rfromPipe\vToPipe\1\0\0\1\3\0\0\0+Convert function call to pipe operator\vtoPipe\rsettings\relixirLS\1\0\0\1\0\1\20dialyzerEnabled\1\bcmd\1\2\0\0005/home/vova/projects/elixir-ls/language_server.sh\14on_attach\1\0\0\nsetup\relixirls\0\0\14lspconfig\frequire\0" },
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-toggleterm.lua"] = {
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/nvim-toggleterm.lua"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\1\2í\17\0\0\6\0^\0÷\0014\0\0\0%\1\1\0>\0\2\0027\0\2\0004\1\3\0007\1\4\0017\1\5\1%\2\6\0%\3\a\0%\4\b\0003\5\t\0>\1\5\0014\1\3\0007\1\4\0017\1\5\1%\2\6\0%\3\n\0%\4\v\0003\5\f\0>\1\5\0014\1\3\0007\1\r\0012\2\0\0:\2\14\0014\1\3\0007\1\r\1'\2\0\0:\2\15\0014\1\3\0007\1\r\1'\2\1\0:\2\16\0014\1\3\0007\1\r\1'\2\1\0:\2\17\0014\1\3\0007\1\r\1'\2\1\0:\2\18\0014\1\3\0007\1\r\0012\2!\0003\3\20\0;\3\1\0023\3\22\0003\4\21\0:\4\23\3\16\4\0\0%\5\24\0>\4\2\2:\4\25\3;\3\2\0023\3\27\0003\4\26\0:\4\23\3\16\4\0\0%\5\28\0>\4\2\2:\4\25\3;\3\3\0023\3\29\0\16\4\0\0%\5\30\0>\4\2\2:\4\25\3;\3\4\0023\3\31\0\16\4\0\0%\5 \0>\4\2\2:\4\25\3;\3\5\0023\3!\0\16\4\0\0%\5\"\0>\4\2\2:\4\25\3;\3\6\0023\3#\0\16\4\0\0%\5$\0>\4\2\2:\4\25\3;\3\a\0023\3%\0\16\4\0\0%\5&\0>\4\2\2:\4\25\3;\3\b\0023\3'\0\16\4\0\0%\5(\0>\4\2\2:\4\25\3;\3\t\0023\3)\0\16\4\0\0%\5*\0>\4\2\2:\4\25\3;\3\n\0023\3+\0\16\4\0\0%\5*\0>\4\2\2:\4\25\3;\3\v\0023\3,\0\16\4\0\0%\5-\0>\4\2\2:\4\25\3;\3\f\0023\3.\0\16\4\0\0%\5/\0>\4\2\2:\4\25\3;\3\r\0023\0030\0\16\4\0\0%\0051\0>\4\2\2:\4\25\3;\3\14\0023\0032\0\16\4\0\0%\0053\0>\4\2\2:\4\25\3;\3\15\0023\0034\0\16\4\0\0%\0055\0>\4\2\2:\4\25\3;\3\16\0023\0036\0\16\4\0\0%\0057\0>\4\2\2:\4\25\3;\3\17\0023\0038\0\16\4\0\0%\0059\0>\4\2\2:\4\25\3;\3\18\0023\3:\0\16\4\0\0%\5;\0>\4\2\2:\4\25\3;\3\19\0023\3<\0\16\4\0\0%\5=\0>\4\2\2:\4\25\3;\3\20\0023\3>\0\16\4\0\0%\5?\0>\4\2\2:\4\25\3;\3\21\0023\3@\0\16\4\0\0%\5A\0>\4\2\2:\4\25\3;\3\22\0023\3B\0\16\4\0\0%\5C\0>\4\2\2:\4\25\3;\3\23\0023\3D\0\16\4\0\0%\5E\0>\4\2\2:\4\25\3;\3\24\0023\3F\0\16\4\0\0%\5G\0>\4\2\2:\4\25\3;\3\25\0023\3H\0\16\4\0\0%\5I\0>\4\2\2:\4\25\3;\3\26\0023\3J\0\16\4\0\0%\5K\0>\4\2\2:\4\25\3;\3\27\0023\3L\0\16\4\0\0%\5M\0>\4\2\2:\4\25\3;\3\28\0023\3N\0\16\4\0\0%\5O\0>\4\2\2:\4\25\3;\3\29\0023\3P\0\16\4\0\0%\5Q\0>\4\2\2:\4\25\3;\3\30\0023\3R\0\16\4\0\0%\5S\0>\4\2\2:\4\25\3;\3\31\0023\3T\0\16\4\0\0%\5U\0>\4\2\2:\4\25\3;\3 \2:\2\19\0014\1\3\0007\1\r\0013\2W\0003\3X\0:\3Y\0023\3Z\0:\3[\0023\3\\\0:\3]\2:\2V\1G\0\1\0\blsp\1\0\4\tinfo\bïš\thint\bïª\nerror\bï—\fwarning\bï±\vfolder\1\0\b\topen\bî—¾\15empty_open\bï„•\fdefault\bî—¿\15arrow_open\bï‘¼\nempty\bï„”\fsymlink\bï’‚\17arrow_closed\bï‘ \17symlink_open\bî—¾\bgit\1\0\a\runstaged\bâœ—\fdeleted\bï‘˜\14untracked\bâ˜…\fignored\bâ—Œ\runmerged\bîœ§\frenamed\bâœ\vstaged\bâœ“\1\0\2\fdefault\bî˜’\fsymlink\bï’\20nvim_tree_icons\16toggle_help\1\0\1\bkey\6?\nclose\1\0\1\bkey\6q\vdir_up\1\0\1\bkey\6-\18next_git_item\1\0\1\bkey\a]c\18prev_git_item\1\0\1\bkey\a[c\23copy_absolute_path\1\0\1\bkey\agy\14copy_path\1\0\1\bkey\6Y\14copy_name\1\0\1\bkey\6y\npaste\1\0\1\bkey\6p\tcopy\1\0\1\bkey\6c\bcut\1\0\1\bkey\6x\16full_rename\1\0\1\bkey\n<C-r>\vrename\1\0\1\bkey\6r\vremove\1\0\1\bkey\6d\vcreate\1\0\1\bkey\6a\frefresh\1\0\1\bkey\6R\20toggle_dotfiles\1\0\1\bkey\6H\19toggle_ignored\1\0\1\bkey\6I\17last_sibling\1\0\1\bkey\6J\18first_sibling\1\0\1\bkey\6K\fpreview\1\0\1\bkey\n<Tab>\1\0\1\bkey\v<S-CR>\15close_node\1\0\1\bkey\t<BS>\16parent_node\1\0\1\bkey\6P\17next_sibling\1\0\1\bkey\6>\17prev_sibling\1\0\1\bkey\6<\vtabnew\1\0\1\bkey\n<C-t>\nsplit\1\0\1\bkey\6_\vvsplit\1\0\1\bkey\6|\acd\1\0\0\1\3\0\0\19<2-RightMouse>\n<C-]>\acb\tedit\bkey\1\0\0\1\3\0\0\t<CR>\18<2-LeftMouse>\1\0\2\acb :lua NvimTreeOpenWith()<CR>\bkey\6o\23nvim_tree_bindings\29nvim_tree_indent_markers*nvim_tree_disable_default_keybindings\21nvim_tree_git_hl\28nvim_tree_hide_dotfiles\28nvim_tree_special_files\6g\1\0\1\fnoremap\2*:lua _G.NvimTreeFindFilePatched()<CR>\n<C-F>\1\0\1\fnoremap\2\24:NvimTreeToggle<CR>\n<C-p>\5\20nvim_set_keymap\bapi\bvim\23nvim_tree_callback\21nvim-tree.config\frequire\0" },
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\1\2è\1\0\0\4\0\n\0\r4\0\0\0%\1\1\0>\0\2\0027\1\2\0003\2\4\0003\3\3\0:\3\5\0023\3\6\0:\3\a\0023\3\b\0:\3\t\2>\1\2\1G\0\1\0\vindent\1\0\1\venable\2\14highlight\1\0\2\21use_languagetree\2\venable\2\21ensure_installed\1\0\0\1\n\0\0\tbash\bcss\verlang\fgraphql\15javascript\tjson\blua\thtml\tyaml\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  rainbow = {
    config = { "\27LJ\1\0020\0\0\2\0\3\0\0054\0\0\0007\0\1\0'\1\1\0:\1\2\0G\0\1\0\19rainbow_active\6g\bvim\0" },
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/rainbow"
  },
  ["splitjoin.vim"] = {
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/splitjoin.vim"
  },
  ["switch.vim"] = {
    config = { "\27LJ\1\2§\1\0\0\3\0\b\0\0154\0\0\0007\0\1\0%\1\3\0:\1\2\0004\0\0\0007\0\1\0002\1\4\0003\2\5\0;\2\1\0013\2\6\0;\2\2\0013\2\a\0;\2\3\1:\1\4\0G\0\1\0\1\3\0\0\rrequired\roptional\1\3\0\0\band\aor\1\3\0\0\vassert\vrefute\30switch_custom_definitions\6-\19switch_mapping\6g\bvim\0" },
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/switch.vim"
  },
  tcomment_vim = {
    config = { "\27LJ\1\2Ì\1\0\0\5\0\r\0\0234\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\4\0%\3\5\0003\4\6\0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\a\0%\2\4\0%\3\5\0003\4\b\0>\0\5\0014\0\0\0007\0\t\0007\0\n\0%\1\v\0%\2\f\0>\0\3\1G\0\1\0\t# %s\vdirenv\25tcomment#type#Define\afn\1\0\1\fnoremap\2\6v\1\0\1\fnoremap\2\18:TComment<CR>\a//\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/tcomment_vim"
  },
  tlib_vim = {
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/tlib_vim"
  },
  ["tslime.vim"] = {
    config = { "\27LJ\1\2?\0\0\2\0\3\0\0054\0\0\0007\0\1\0'\1\1\0:\1\2\0G\0\1\0\"tslime_always_current_session\6g\bvim\0" },
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/tslime.vim"
  },
  ["vim-addon-mw-utils"] = {
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/vim-addon-mw-utils"
  },
  ["vim-autoformat"] = {
    config = { "\27LJ\1\2e\0\0\5\0\a\0\t4\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\4\0%\3\5\0003\4\6\0>\0\5\1G\0\1\0\1\0\1\fnoremap\2\20:Autoformat<CR>\b===\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/vim-autoformat"
  },
  ["vim-better-whitespace"] = {
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/vim-better-whitespace"
  },
  ["vim-current-search-match"] = {
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/vim-current-search-match"
  },
  ["vim-elixir"] = {
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/vim-elixir"
  },
  ["vim-fetch"] = {
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/vim-fetch"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-gfm-syntax"] = {
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/vim-gfm-syntax"
  },
  ["vim-hexokinase"] = {
    config = { "\27LJ\1\2<\0\0\2\0\4\0\0054\0\0\0007\0\1\0%\1\3\0:\1\2\0G\0\1\0\bâ—¼\27Hexokinase_virtualText\6g\bvim\0" },
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/vim-hexokinase"
  },
  ["vim-illuminate"] = {
    config = { "\27LJ\1\2E\0\0\2\0\4\0\0054\0\0\0007\0\1\0003\1\3\0:\1\2\0G\0\1\0\1\2\0\0\rnerdtree\27Illuminate_ftblacklist\6g\bvim\0" },
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/vim-illuminate"
  },
  ["vim-mergetool"] = {
    config = { "\27LJ\1\2f\0\0\2\0\6\0\t4\0\0\0007\0\1\0%\1\3\0:\1\2\0004\0\0\0007\0\1\0%\1\5\0:\1\4\0G\0\1\0\nlocal\30mergetool_prefer_revision\bbmr\21mergetool_layout\6g\bvim\0" },
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/vim-mergetool"
  },
  ["vim-ripgrep"] = {
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/vim-ripgrep"
  },
  ["vim-signature"] = {
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/vim-signature"
  },
  ["vim-smoothie"] = {
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/vim-smoothie"
  },
  ["vim-snipmate"] = {
    config = { "\27LJ\1\2N\0\0\2\0\3\0\0054\0\0\0007\0\1\0%\1\2\0>\0\2\1G\0\1\0/let g:snipMate = { 'snippet_version' : 1 }\bcmd\bvim\0" },
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/vim-snipmate"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-table-mode"] = {
    config = { "\27LJ\1\0025\0\0\2\0\4\0\0054\0\0\0007\0\1\0%\1\3\0:\1\2\0G\0\1\0\6|\22table_mode_corner\6g\bvim\0" },
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/vim-table-mode"
  },
  ["vim-test"] = {
    config = { "\27LJ\1\2@\0\0\2\0\3\0\0054\0\0\0007\0\1\0%\1\2\0>\0\2\1G\0\1\0!let test#strategy = 'tslime'\bcmd\bvim\0" },
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/vim-test"
  },
  ["vim-translator"] = {
    config = { "\27LJ\1\2Ù\1\0\0\5\0\r\0\0214\0\0\0007\0\1\0%\1\3\0:\1\2\0004\0\0\0007\0\4\0007\0\5\0%\1\6\0%\2\a\0%\3\b\0003\4\t\0>\0\5\0014\0\0\0007\0\4\0007\0\5\0%\1\n\0%\2\a\0%\3\v\0003\4\f\0>\0\5\1G\0\1\0\1\0\1\fnoremap\1\22<Plug>TranslateWV\6v\1\0\1\fnoremap\1\21<Plug>TranslateW\15<leader>tr\6n\20nvim_set_keymap\bapi\auk\27translator_target_lang\6g\bvim\0" },
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/vim-translator"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/vim-visual-multi"
  },
  ["vim-zoom"] = {
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/vim-zoom"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\1\2;\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/vova/.local/share/nvim/site/pack/packer/start/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: lsp_signature.nvim
time([[Config for lsp_signature.nvim]], true)
try_loadstring("\27LJ\1\2S\0\0\2\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\1G\0\1\0\1\0\1\16hint_prefix\tî€ \nsetup\18lsp_signature\frequire\0", "config", "lsp_signature.nvim")
time([[Config for lsp_signature.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\1\2è\1\0\0\4\0\n\0\r4\0\0\0%\1\1\0>\0\2\0027\1\2\0003\2\4\0003\3\3\0:\3\5\0023\3\6\0:\3\a\0023\3\b\0:\3\t\2>\1\2\1G\0\1\0\vindent\1\0\1\venable\2\14highlight\1\0\2\21use_languagetree\2\venable\2\21ensure_installed\1\0\0\1\n\0\0\tbash\bcss\verlang\fgraphql\15javascript\tjson\blua\thtml\tyaml\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: fzf-lua
time([[Config for fzf-lua]], true)
try_loadstring("\27LJ\1\2;\0\0\2\0\3\0\0054\0\0\0007\0\1\0%\1\2\0>\0\2\1G\0\1\0\28set winhl=Normal:Normal\bcmd\bvim\29\0\1\3\0\1\0\0044\1\0\0008\2\2\0>\1\2\1G\0\1\0\nprint\29\0\1\3\0\1\0\0044\1\0\0008\2\2\0>\1\2\1G\0\1\0\nprint\29\0\1\3\0\1\0\0044\1\0\0008\2\2\0>\1\2\1G\0\1\0\nprint;\0\0\2\0\3\0\0054\0\0\0007\0\1\0%\1\2\0>\0\2\1G\0\1\0\28set winhl=Normal:Normal\bcmd\bvim\v\0\0\1\0\0\0\1G\0\1\0;\0\0\2\0\3\0\0054\0\0\0007\0\1\0%\1\2\0>\0\2\1G\0\1\0\28set winhl=Normal:Normal\bcmd\bvim¾\22\1\0\6\0g\0˜\0014\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\4\0%\3\5\0003\4\6\0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\a\0%\3\b\0003\4\t\0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\n\0%\3\v\0003\4\f\0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\r\0%\3\14\0003\4\15\0>\0\5\0014\0\16\0%\1\17\0>\0\2\0024\1\16\0%\2\18\0>\1\2\0027\1\19\0013\2\25\0003\3\20\0003\4\21\0:\4\22\0031\4\23\0:\4\24\3:\3\26\0023\3\27\0:\3\28\0023\3\29\0003\4\31\0007\5\30\0:\5 \0047\5!\0:\5\"\0047\5#\0:\5$\0047\5%\0:\5&\0047\5'\0:\5(\0041\5)\0:\5*\4:\4+\3:\3,\0023\3-\0003\4/\0003\5.\0:\0050\0043\0051\0:\0052\0043\0053\0:\0054\0043\0055\0:\0056\4:\0047\3:\0038\0023\0039\0%\4:\0%\5;\0$\4\5\4:\4<\0033\4=\0007\5\30\0:\5 \0047\5!\0:\5\"\0047\5#\0:\5$\0047\5%\0:\5&\0047\5'\0:\5(\0041\5>\0:\5*\4:\4+\3:\3?\0023\3@\0:\3A\0023\3B\0003\4D\0007\5C\0:\5 \0047\5E\0:\5\"\0047\5F\0:\5$\0047\5G\0:\5&\0047\5H\0:\5I\4:\4+\3:\3J\0023\3K\0003\4M\0007\5L\0:\5 \0041\5N\0:\5*\4:\4+\0033\4O\0001\5P\0:\5\24\4:\4\26\0031\4Q\0:\4R\3:\3S\0023\3T\0:\3U\0023\3V\0003\4X\0003\5W\0:\5Y\0043\5Z\0:\5[\0043\5\\\0:\5]\0043\5^\0:\5_\4:\0047\3:\3`\0022\3\0\0:\3a\0022\3\0\0:\3b\0022\3\0\0:\3c\0023\3d\0:\3e\0021\3f\0:\3\24\2>\1\2\1G\0\1\0\0\21file_icon_colors\1\0\1\blua\tblue\rmanpages\rhelptags\floclist\blsp\tHint\1\0\2\ncolor\fmagenta\ticon\bï ´\16Information\1\0\2\ncolor\tblue\ticon\bï„©\fWarning\1\0\2\ncolor\vyellow\ticon\bï±\nError\1\0\0\1\0\2\ncolor\bred\ticon\bï—\1\0\5\vprompt\tâ¯ \rseverity\thint\15file_icons\2\14git_icons\1\14lsp_icons\2\rquickfix\1\0\2\15file_icons\2\14git_icons\2\17colorschemes\18post_reset_cb\0\0\1\0\2\14win_width\4³æÌ™\3³æÌş\3\15win_height\4š³æÌ\t™³†ÿ\3\0\1\0\0\16colorscheme\1\0\2\vprompt\21Colorschemesâ¯ \17live_preview\2\fbuffers\vctrl-x\fbuf_del\16buf_tabedit\15buf_vsplit\14buf_split\1\0\0\rbuf_edit\1\0\4\16color_icons\2\15file_icons\2\vprompt\16Buffersâ¯ \18sort_lastused\2\roldfiles\1\0\2\vprompt\16Historyâ¯ \rcwd_only\1\tgrep\0\1\0\0\frg_opts<--color=always --smart-case -g '!{.git,node_modules}/*'2--hidden --column --line-number --no-heading \1\0\6\vprompt\vRgâ¯ \bcmd\17rg --vimgrep\14git_icons\2\15file_icons\2\16color_icons\2\17input_prompt\17Grep Forâ¯ \bgit\nicons\6?\1\0\2\ncolor\fmagenta\ticon\6?\6A\1\0\2\ncolor\ngreen\ticon\6A\6D\1\0\2\ncolor\bred\ticon\6D\6M\1\0\0\1\0\2\ncolor\vyellow\ticon\6M\1\0\5\vprompt\17GitFilesâ¯ \15file_icons\2\bcmd$git ls-files --exclude-standard\14git_icons\2\16color_icons\2\nfiles\factions\vctrl-y\0\vctrl-q\19file_sel_to_qf\vctrl-t\17file_tabedit\vctrl-v\16file_vsplit\vctrl-s\15file_split\fdefault\1\0\0\14file_edit\1\0\5\vprompt\14Filesâ¯ \bcmd\5\14git_icons\2\16color_icons\2\15file_icons\2\14fzf_binds\1\v\0\0\22f2:toggle-preview\27f3:toggle-preview-wrap!shift-down:preview-page-down\29shift-up:preview-page-up\26ctrl-d:half-page-down\24ctrl-u:half-page-up\21ctrl-f:page-down\19ctrl-b:page-up\22ctrl-a:toggle-all\23ctrl-l:clear-query\fwinopts\1\0\f\17flip_columns\3x\19preview_layout\tflex\21preview_vertical\rdown:45%\16preview_cmd\5\rfzf_args\5\rbat_opts+--style=numbers,changes --color always\17preview_wrap\vnowrap\17preview_opts\rnohidden\19preview_border\vborder\14bat_theme\17Coldark-Dark\15fzf_layout\freverse\23preview_horizontal\14right:60%\21window_on_create\0\15win_border\1\t\0\0\bâ•­\bâ”€\bâ•®\bâ”‚\bâ•¯\bâ”€\bâ•°\bâ”‚\1\0\4\14win_width\4š³æÌ\t™³¦ÿ\3\fwin_row\4³æÌ™\3³æÌş\3\15win_height\4³æÌ™\3³æ¬ÿ\3\fwin_col\4\0€€€ÿ\3\nsetup\ffzf-lua\20fzf-lua.actions\frequire\1\0\1\fnoremap\2F:lua require('fzf-lua').grep({ fzf_layout = 'reverse-list' })<CR>\14<Leader>g\1\0\1\fnoremap\2K:lua require('fzf-lua').git_files({ fzf_layout = 'reverse-list' })<CR>\14<Leader>f\1\0\1\fnoremap\2G:lua require('fzf-lua').files({ fzf_layout = 'reverse-list' })<CR>\14<Leader>F\1\0\1\fnoremap\2I:lua require('fzf-lua').buffers({ fzf_layout = 'reverse-list' })<CR>\14<Leader>b\6n\20nvim_set_keymap\bapi\bvim\0", "config", "fzf-lua")
time([[Config for fzf-lua]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\1\2;\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: indentLine
time([[Config for indentLine]], true)
try_loadstring("\27LJ\1\2†\1\0\0\2\0\6\0\t4\0\0\0007\0\1\0%\1\3\0:\1\2\0004\0\0\0007\0\1\0003\1\5\0:\1\4\0G\0\1\0\1\5\0\0\rstartify\vpacker\rWhichKey\rNvimTree\31indentLine_fileTypeExclude\bâ”Š\20indentLine_char\6g\bvim\0", "config", "indentLine")
time([[Config for indentLine]], false)
-- Config for: tcomment_vim
time([[Config for tcomment_vim]], true)
try_loadstring("\27LJ\1\2Ì\1\0\0\5\0\r\0\0234\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\4\0%\3\5\0003\4\6\0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\a\0%\2\4\0%\3\5\0003\4\b\0>\0\5\0014\0\0\0007\0\t\0007\0\n\0%\1\v\0%\2\f\0>\0\3\1G\0\1\0\t# %s\vdirenv\25tcomment#type#Define\afn\1\0\1\fnoremap\2\6v\1\0\1\fnoremap\2\18:TComment<CR>\a//\6n\20nvim_set_keymap\bapi\bvim\0", "config", "tcomment_vim")
time([[Config for tcomment_vim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\1\2Ï\4\0\0\4\0 \0/4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\t\0003\2\3\0003\3\4\0:\3\5\0023\3\6\0:\3\a\0022\3\0\0:\3\b\2:\2\n\0013\2\f\0003\3\v\0:\3\r\0023\3\14\0:\3\15\0023\3\16\0:\3\17\0023\3\18\0:\3\19\0023\3\20\0:\3\21\0023\3\22\0:\3\23\2:\2\24\0013\2\25\0002\3\0\0:\3\r\0022\3\0\0:\3\15\0023\3\26\0:\3\17\0023\3\27\0:\3\19\0022\3\0\0:\3\21\0022\3\0\0:\3\23\2:\2\28\0012\2\0\0:\2\29\0013\2\30\0:\2\31\1>\0\2\1G\0\1\0\15extensions\1\3\0\0\14nvim-tree\bfzf\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\2\0\0\vbranch\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23disabled_filetypes\23section_separators\1\3\0\0\bî‚°\bî‚²\25component_separators\1\3\0\0\bî‚±\bî‚³\1\0\2\ntheme\fgruvbox\18icons_enabled\2\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: rainbow
time([[Config for rainbow]], true)
try_loadstring("\27LJ\1\0020\0\0\2\0\3\0\0054\0\0\0007\0\1\0'\1\1\0:\1\2\0G\0\1\0\19rainbow_active\6g\bvim\0", "config", "rainbow")
time([[Config for rainbow]], false)
-- Config for: switch.vim
time([[Config for switch.vim]], true)
try_loadstring("\27LJ\1\2§\1\0\0\3\0\b\0\0154\0\0\0007\0\1\0%\1\3\0:\1\2\0004\0\0\0007\0\1\0002\1\4\0003\2\5\0;\2\1\0013\2\6\0;\2\2\0013\2\a\0;\2\3\1:\1\4\0G\0\1\0\1\3\0\0\rrequired\roptional\1\3\0\0\band\aor\1\3\0\0\vassert\vrefute\30switch_custom_definitions\6-\19switch_mapping\6g\bvim\0", "config", "switch.vim")
time([[Config for switch.vim]], false)
-- Config for: CamelCaseMotion
time([[Config for CamelCaseMotion]], true)
try_loadstring("\27LJ\1\2\2\0\0\5\0\f\0!4\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\4\0%\3\5\0002\4\0\0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\6\0%\3\a\0002\4\0\0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\b\0%\3\t\0002\4\0\0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\n\0%\3\v\0002\4\0\0>\0\5\1G\0\1\0\29<Plug>CamelCaseMotion_ge\age\28<Plug>CamelCaseMotion_e\6e\28<Plug>CamelCaseMotion_b\6b\28<Plug>CamelCaseMotion_w\6w\5\20nvim_set_keymap\bapi\bvim\0", "config", "CamelCaseMotion")
time([[Config for CamelCaseMotion]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\1\2ª\2\0\0\t\0\r\1!4\0\0\0%\1\1\0>\0\2\0027\1\2\0>\1\1\0014\1\0\0%\2\3\0>\1\2\0027\1\2\0013\2\4\0>\1\2\0014\1\0\0%\2\5\0>\1\2\0027\1\6\0017\2\a\0002\3\3\0\16\4\1\0%\5\b\0%\6\t\0%\a\n\0)\b\0\0>\4\5\2;\4\1\3\16\4\1\0%\5\v\0%\6\t\0%\a\f\0)\b\0\0>\4\5\0<\4\0\0>\2\2\1G\0\1\0\velixir\t do$\blua\bend\nthen$\14add_rules\fendwise\27nvim-autopairs.ts-rule\1\0\2\17map_complete\2\vmap_cr\2$nvim-autopairs.completion.compe\nsetup\19nvim-autopairs\frequire\5€€À™\4\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: vim-hexokinase
time([[Config for vim-hexokinase]], true)
try_loadstring("\27LJ\1\2<\0\0\2\0\4\0\0054\0\0\0007\0\1\0%\1\3\0:\1\2\0G\0\1\0\bâ—¼\27Hexokinase_virtualText\6g\bvim\0", "config", "vim-hexokinase")
time([[Config for vim-hexokinase]], false)
-- Config for: nvim-bufferline.lua
time([[Config for nvim-bufferline.lua]], true)
try_loadstring("\27LJ\1\2W\0\4\b\0\5\0\14\16\5\1\0007\4\0\1%\6\1\0>\4\3\2\15\0\4\0T\5\2€%\4\2\0T\5\1€%\4\3\0%\5\4\0\16\6\4\0\16\a\0\0$\5\a\5H\5\2\0\6 \tï± \tïœ \nerror\nmatch¦\2\1\0\5\0\r\0\0194\0\0\0007\0\1\0)\1\2\0:\1\2\0004\0\3\0%\1\4\0>\0\2\0027\0\5\0003\1\v\0003\2\a\0001\3\6\0:\3\b\0022\3\3\0003\4\t\0;\4\1\3:\3\n\2:\2\f\1>\0\2\1G\0\1\0\foptions\1\0\0\foffsets\1\0\4\ttext\18File Explorer\15text_align\tleft\14highlight\14Directory\rfiletype\rNvimTree\26diagnostics_indicator\1\0\2\16diagnostics\rnvim_lsp\25enforce_regular_tabs\2\0\nsetup\15bufferline\frequire\18termguicolors\bopt\bvim\0", "config", "nvim-bufferline.lua")
time([[Config for nvim-bufferline.lua]], false)
-- Config for: vim-table-mode
time([[Config for vim-table-mode]], true)
try_loadstring("\27LJ\1\0025\0\0\2\0\4\0\0054\0\0\0007\0\1\0%\1\3\0:\1\2\0G\0\1\0\6|\22table_mode_corner\6g\bvim\0", "config", "vim-table-mode")
time([[Config for vim-table-mode]], false)
-- Config for: tslime.vim
time([[Config for tslime.vim]], true)
try_loadstring("\27LJ\1\2?\0\0\2\0\3\0\0054\0\0\0007\0\1\0'\1\1\0:\1\2\0G\0\1\0\"tslime_always_current_session\6g\bvim\0", "config", "tslime.vim")
time([[Config for tslime.vim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\1\2í\17\0\0\6\0^\0÷\0014\0\0\0%\1\1\0>\0\2\0027\0\2\0004\1\3\0007\1\4\0017\1\5\1%\2\6\0%\3\a\0%\4\b\0003\5\t\0>\1\5\0014\1\3\0007\1\4\0017\1\5\1%\2\6\0%\3\n\0%\4\v\0003\5\f\0>\1\5\0014\1\3\0007\1\r\0012\2\0\0:\2\14\0014\1\3\0007\1\r\1'\2\0\0:\2\15\0014\1\3\0007\1\r\1'\2\1\0:\2\16\0014\1\3\0007\1\r\1'\2\1\0:\2\17\0014\1\3\0007\1\r\1'\2\1\0:\2\18\0014\1\3\0007\1\r\0012\2!\0003\3\20\0;\3\1\0023\3\22\0003\4\21\0:\4\23\3\16\4\0\0%\5\24\0>\4\2\2:\4\25\3;\3\2\0023\3\27\0003\4\26\0:\4\23\3\16\4\0\0%\5\28\0>\4\2\2:\4\25\3;\3\3\0023\3\29\0\16\4\0\0%\5\30\0>\4\2\2:\4\25\3;\3\4\0023\3\31\0\16\4\0\0%\5 \0>\4\2\2:\4\25\3;\3\5\0023\3!\0\16\4\0\0%\5\"\0>\4\2\2:\4\25\3;\3\6\0023\3#\0\16\4\0\0%\5$\0>\4\2\2:\4\25\3;\3\a\0023\3%\0\16\4\0\0%\5&\0>\4\2\2:\4\25\3;\3\b\0023\3'\0\16\4\0\0%\5(\0>\4\2\2:\4\25\3;\3\t\0023\3)\0\16\4\0\0%\5*\0>\4\2\2:\4\25\3;\3\n\0023\3+\0\16\4\0\0%\5*\0>\4\2\2:\4\25\3;\3\v\0023\3,\0\16\4\0\0%\5-\0>\4\2\2:\4\25\3;\3\f\0023\3.\0\16\4\0\0%\5/\0>\4\2\2:\4\25\3;\3\r\0023\0030\0\16\4\0\0%\0051\0>\4\2\2:\4\25\3;\3\14\0023\0032\0\16\4\0\0%\0053\0>\4\2\2:\4\25\3;\3\15\0023\0034\0\16\4\0\0%\0055\0>\4\2\2:\4\25\3;\3\16\0023\0036\0\16\4\0\0%\0057\0>\4\2\2:\4\25\3;\3\17\0023\0038\0\16\4\0\0%\0059\0>\4\2\2:\4\25\3;\3\18\0023\3:\0\16\4\0\0%\5;\0>\4\2\2:\4\25\3;\3\19\0023\3<\0\16\4\0\0%\5=\0>\4\2\2:\4\25\3;\3\20\0023\3>\0\16\4\0\0%\5?\0>\4\2\2:\4\25\3;\3\21\0023\3@\0\16\4\0\0%\5A\0>\4\2\2:\4\25\3;\3\22\0023\3B\0\16\4\0\0%\5C\0>\4\2\2:\4\25\3;\3\23\0023\3D\0\16\4\0\0%\5E\0>\4\2\2:\4\25\3;\3\24\0023\3F\0\16\4\0\0%\5G\0>\4\2\2:\4\25\3;\3\25\0023\3H\0\16\4\0\0%\5I\0>\4\2\2:\4\25\3;\3\26\0023\3J\0\16\4\0\0%\5K\0>\4\2\2:\4\25\3;\3\27\0023\3L\0\16\4\0\0%\5M\0>\4\2\2:\4\25\3;\3\28\0023\3N\0\16\4\0\0%\5O\0>\4\2\2:\4\25\3;\3\29\0023\3P\0\16\4\0\0%\5Q\0>\4\2\2:\4\25\3;\3\30\0023\3R\0\16\4\0\0%\5S\0>\4\2\2:\4\25\3;\3\31\0023\3T\0\16\4\0\0%\5U\0>\4\2\2:\4\25\3;\3 \2:\2\19\0014\1\3\0007\1\r\0013\2W\0003\3X\0:\3Y\0023\3Z\0:\3[\0023\3\\\0:\3]\2:\2V\1G\0\1\0\blsp\1\0\4\tinfo\bïš\thint\bïª\nerror\bï—\fwarning\bï±\vfolder\1\0\b\topen\bî—¾\15empty_open\bï„•\fdefault\bî—¿\15arrow_open\bï‘¼\nempty\bï„”\fsymlink\bï’‚\17arrow_closed\bï‘ \17symlink_open\bî—¾\bgit\1\0\a\runstaged\bâœ—\fdeleted\bï‘˜\14untracked\bâ˜…\fignored\bâ—Œ\runmerged\bîœ§\frenamed\bâœ\vstaged\bâœ“\1\0\2\fdefault\bî˜’\fsymlink\bï’\20nvim_tree_icons\16toggle_help\1\0\1\bkey\6?\nclose\1\0\1\bkey\6q\vdir_up\1\0\1\bkey\6-\18next_git_item\1\0\1\bkey\a]c\18prev_git_item\1\0\1\bkey\a[c\23copy_absolute_path\1\0\1\bkey\agy\14copy_path\1\0\1\bkey\6Y\14copy_name\1\0\1\bkey\6y\npaste\1\0\1\bkey\6p\tcopy\1\0\1\bkey\6c\bcut\1\0\1\bkey\6x\16full_rename\1\0\1\bkey\n<C-r>\vrename\1\0\1\bkey\6r\vremove\1\0\1\bkey\6d\vcreate\1\0\1\bkey\6a\frefresh\1\0\1\bkey\6R\20toggle_dotfiles\1\0\1\bkey\6H\19toggle_ignored\1\0\1\bkey\6I\17last_sibling\1\0\1\bkey\6J\18first_sibling\1\0\1\bkey\6K\fpreview\1\0\1\bkey\n<Tab>\1\0\1\bkey\v<S-CR>\15close_node\1\0\1\bkey\t<BS>\16parent_node\1\0\1\bkey\6P\17next_sibling\1\0\1\bkey\6>\17prev_sibling\1\0\1\bkey\6<\vtabnew\1\0\1\bkey\n<C-t>\nsplit\1\0\1\bkey\6_\vvsplit\1\0\1\bkey\6|\acd\1\0\0\1\3\0\0\19<2-RightMouse>\n<C-]>\acb\tedit\bkey\1\0\0\1\3\0\0\t<CR>\18<2-LeftMouse>\1\0\2\acb :lua NvimTreeOpenWith()<CR>\bkey\6o\23nvim_tree_bindings\29nvim_tree_indent_markers*nvim_tree_disable_default_keybindings\21nvim_tree_git_hl\28nvim_tree_hide_dotfiles\28nvim_tree_special_files\6g\1\0\1\fnoremap\2*:lua _G.NvimTreeFindFilePatched()<CR>\n<C-F>\1\0\1\fnoremap\2\24:NvimTreeToggle<CR>\n<C-p>\5\20nvim_set_keymap\bapi\bvim\23nvim_tree_callback\21nvim-tree.config\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: close-buffers.vim
time([[Config for close-buffers.vim]], true)
try_loadstring("\27LJ\1\2l\0\0\5\0\a\0\t4\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\4\0%\3\5\0003\4\6\0>\0\5\1G\0\1\0\1\0\1\fnoremap\2\22:Bdelete menu<CR>\14<leader>q\5\20nvim_set_keymap\bapi\bvim\0", "config", "close-buffers.vim")
time([[Config for close-buffers.vim]], false)
-- Config for: colorscheme
time([[Config for colorscheme]], true)
try_loadstring("\27LJ\1\2\2\0\0\3\0\v\0\0254\0\0\0007\0\1\0%\1\2\0>\0\2\0014\0\0\0007\0\3\0'\1\1\0:\1\4\0004\0\0\0007\0\5\0%\1\a\0:\1\6\0004\0\0\0007\0\1\0%\1\b\0>\0\2\0014\0\0\0007\0\1\0%\1\t\0004\2\0\0007\2\3\0027\2\n\2$\1\2\1>\0\2\1G\0\1\0\22terminal_color_13*highlight NvimTreeIndentMarker guifg=.highlight Comment cterm=italic gui=italic\tdark\15background\bopt\19gruvbox_italic\6g\26 colorscheme gruvbox \bcmd\bvim\0", "config", "colorscheme")
time([[Config for colorscheme]], false)
-- Config for: nvim-compe
time([[Config for nvim-compe]], true)
try_loadstring("\27LJ\1\2F\0\1\6\0\3\0\b4\1\0\0007\1\1\0017\1\2\1\16\2\0\0)\3\2\0)\4\2\0)\5\2\0@\1\5\0\27nvim_replace_termcodes\bapi\bvim›\1\0\0\5\0\b\2\0284\0\0\0007\0\1\0007\0\2\0%\1\3\0>\0\2\2\21\0\0\0\b\0\1\0T\1\18€4\1\0\0007\1\1\0017\1\4\1%\2\3\0>\1\2\2\16\2\1\0007\1\5\1\16\3\0\0\16\4\0\0>\1\4\2\16\2\1\0007\1\6\1%\3\a\0>\1\3\2\v\1\0\0T\1\2€)\1\1\0T\2\1€)\1\2\0H\1\2\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\bvim\2\0î\1\0\0\2\2\b\1\"4\0\0\0007\0\1\0007\0\2\0>\0\1\2\t\0\0\0T\0\4€+\0\0\0%\1\3\0@\0\2\0T\0\23€4\0\0\0007\0\1\0007\0\4\0'\1\1\0>\0\2\2\t\0\0\0T\0\4€+\0\0\0%\1\5\0@\0\2\0T\0\f€+\0\1\0>\0\1\2\15\0\0\0T\1\4€+\0\0\0%\1\6\0@\0\2\0T\0\4€4\0\0\0007\0\1\0007\0\a\0@\0\1\0G\0\1\0\0À\1À\19compe#complete\n<C-j>!<Plug>(vsnip-expand-or-jump)\20vsnip#available\n<C-n>\15pumvisible\afn\bvim\2³\1\0\0\2\1\a\1\0254\0\0\0007\0\1\0007\0\2\0>\0\1\2\t\0\0\0T\0\4€+\0\0\0%\1\3\0@\0\2\0T\0\14€4\0\0\0007\0\1\0007\0\4\0'\1ÿÿ>\0\2\2\t\0\0\0T\0\4€+\0\0\0%\1\5\0@\0\2\0T\0\3€+\0\0\0%\1\6\0@\0\2\0G\0\1\0\0À\n<C-k>\28<Plug>(vsnip-jump-prev)\19vsnip#jumpable\n<C-p>\15pumvisible\afn\bvim\2·\n\1\0\a\0004\1j4\0\0\0007\0\1\0%\1\3\0:\1\2\0001\0\4\0001\1\5\0004\2\6\0001\3\b\0:\3\a\0024\2\6\0001\3\n\0:\3\t\0024\2\0\0007\2\v\0027\2\f\2%\3\r\0%\4\14\0%\5\15\0003\6\16\0>\2\5\0014\2\0\0007\2\v\0027\2\f\2%\3\17\0%\4\14\0%\5\15\0003\6\18\0>\2\5\0014\2\0\0007\2\v\0027\2\f\2%\3\r\0%\4\19\0%\5\20\0003\6\21\0>\2\5\0014\2\0\0007\2\v\0027\2\f\2%\3\17\0%\4\19\0%\5\20\0003\6\22\0>\2\5\0014\2\0\0007\2\v\0027\2\f\2%\3\r\0%\4\23\0%\5\24\0003\6\25\0>\2\5\0014\2\0\0007\2\v\0027\2\f\2%\3\r\0%\4\26\0%\5\27\0003\6\28\0>\2\5\0014\2\0\0007\2\v\0027\2\f\2%\3\r\0%\4\29\0%\5\30\0003\6\31\0>\2\5\0014\2\0\0007\2\v\0027\2\f\2%\3\r\0%\4 \0%\5!\0003\6\"\0>\2\5\0014\2\0\0007\2\v\0027\2\f\2%\3\r\0%\4#\0%\5$\0003\6%\0>\2\5\0014\2&\0%\3'\0>\2\2\0027\2(\0023\3)\0003\4+\0003\5*\0:\5,\0044\5-\0007\5.\0054\6\0\0007\6\1\0067\6/\6\22\6\0\6>\5\2\2:\0050\4:\0041\0033\0042\0:\0043\3>\2\2\0010\0\0€G\0\1\0\vsource\1\0\b\14ultisnips\2\rnvim_lua\2\rnvim_lsp\2\vbuffer\2\nvsnip\1\tcalc\2\fluasnip\2\tpath\2\18documentation\15max_height\nlines\nfloor\tmath\vborder\1\0\4\17winhighlightHNormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder\15min_height\3\1\14min_width\3<\14max_width\3x\1\t\0\0\5\5\5\6 \5\5\5\6 \1\0\f\20resolve_timeout\3 \6\19source_timeout\3È\1\fenabled\2\ndebug\1\14preselect\venable\19max_abbr_width\3d\21incomplete_delay\3\3\17autocomplete\2\19max_kind_width\3d\15min_length\3\1\18throttle_time\3P\19max_menu_width\3d\nsetup\ncompe\frequire\1\0\2\texpr\2\vsilent\2\"compe#scroll({ 'delta': -4 })\n<C-d>\1\0\2\texpr\2\vsilent\2\"compe#scroll({ 'delta': +4 })\n<C-f>\1\0\2\texpr\2\vsilent\2\29compe#confirm('<space>')\f<space>\1\0\2\texpr\2\vsilent\2\25compe#close('<C-e>')\n<C-e>\1\0\2\texpr\2\vsilent\2\21compe#complete()\14<C-Space>\1\0\1\texpr\2\1\0\1\texpr\2\25v:lua.c_k_complete()\n<C-k>\1\0\1\texpr\2\6s\1\0\1\texpr\2\25v:lua.c_j_complete()\n<C-j>\6i\20nvim_set_keymap\bapi\0\17c_k_complete\0\17c_j_complete\a_G\0\0\21menuone,noselect\16completeopt\6o\bvimçÌ™³\6³æÌş\3\0", "config", "nvim-compe")
time([[Config for nvim-compe]], false)
-- Config for: vim-translator
time([[Config for vim-translator]], true)
try_loadstring("\27LJ\1\2Ù\1\0\0\5\0\r\0\0214\0\0\0007\0\1\0%\1\3\0:\1\2\0004\0\0\0007\0\4\0007\0\5\0%\1\6\0%\2\a\0%\3\b\0003\4\t\0>\0\5\0014\0\0\0007\0\4\0007\0\5\0%\1\n\0%\2\a\0%\3\v\0003\4\f\0>\0\5\1G\0\1\0\1\0\1\fnoremap\1\22<Plug>TranslateWV\6v\1\0\1\fnoremap\1\21<Plug>TranslateW\15<leader>tr\6n\20nvim_set_keymap\bapi\auk\27translator_target_lang\6g\bvim\0", "config", "vim-translator")
time([[Config for vim-translator]], false)
-- Config for: lspkind-nvim
time([[Config for lspkind-nvim]], true)
try_loadstring("\27LJ\1\2Á\2\0\0\3\0\6\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0:\2\5\1>\0\2\1G\0\1\0\15symbol_map\1\0\20\tText\bî˜’\rFunction\aÆ’\nClass\bïƒ¨\nColor\bîˆ«\14Interface\bï°®\vModule\bï£–\rConstant\bîˆ¬\vMethod\aÆ’\tUnit\bï‘µ\15EnumMember\bï…\rProperty\bî˜¤\vStruct\bïƒŠ\rVariable\bî›\fSnippet\bï¬Œ\vFolder\bï„•\tFile\bïœ£\nValue\bï¢Ÿ\16Constructor\bîˆ\tEnum\bäº†\fKeyword\bï …\1\0\1\14with_text\1\tinit\flspkind\frequire\0", "config", "lspkind-nvim")
time([[Config for lspkind-nvim]], false)
-- Config for: vim-illuminate
time([[Config for vim-illuminate]], true)
try_loadstring("\27LJ\1\2E\0\0\2\0\4\0\0054\0\0\0007\0\1\0003\1\3\0:\1\2\0G\0\1\0\1\2\0\0\rnerdtree\27Illuminate_ftblacklist\6g\bvim\0", "config", "vim-illuminate")
time([[Config for vim-illuminate]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\1\0026\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\1\2A\2\0\3\1\3\0\a4\0\0\0007\0\1\0007\0\2\0+\1\0\0C\2\0\0=\0\1\1G\0\1\0\1À\24nvim_buf_set_keymap\bapi\bvimA\2\0\3\1\3\0\a4\0\0\0007\0\1\0007\0\2\0+\1\0\0C\2\0\0=\0\1\1G\0\1\0\1À\24nvim_buf_set_option\bapi\bvim›\r\1\2\14\0006\0Š\0011\2\0\0001\3\1\0004\4\2\0007\4\3\0047\4\4\0044\5\2\0007\5\3\0057\5\6\0054\6\2\0007\6\3\0067\6\a\0067\6\b\0063\a\t\0>\5\3\2:\5\5\0043\4\n\0004\5\v\0\16\6\4\0>\5\2\4D\b\v€%\n\f\0\16\v\b\0$\n\v\n4\v\2\0007\v\r\v7\v\14\v\16\f\n\0003\r\15\0:\t\16\r:\n\17\r>\v\3\1B\b\3\3N\bó3\5\18\0\16\6\2\0%\a\19\0%\b\20\0%\t\21\0\16\n\5\0>\6\5\1\16\6\2\0%\a\19\0%\b\22\0%\t\23\0\16\n\5\0>\6\5\1\16\6\2\0%\a\19\0%\b\24\0%\t\25\0\16\n\5\0>\6\5\1\16\6\2\0%\a\19\0%\b\26\0%\t\27\0\16\n\5\0>\6\5\1\16\6\2\0%\a\19\0%\b\28\0%\t\29\0\16\n\5\0>\6\5\1\16\6\2\0%\a\19\0%\b\30\0%\t\31\0\16\n\5\0>\6\5\1\16\6\2\0%\a\19\0%\b \0%\t!\0\16\n\5\0>\6\5\1\16\6\2\0%\a\19\0%\b\"\0%\t#\0\16\n\5\0>\6\5\1\16\6\2\0%\a\19\0%\b$\0%\t%\0\16\n\5\0>\6\5\1\16\6\2\0%\a\19\0%\b&\0%\t'\0\16\n\5\0>\6\5\1\16\6\2\0%\a\19\0%\b(\0%\t)\0\16\n\5\0>\6\5\1\16\6\2\0%\a\19\0%\b*\0%\t+\0\16\n\5\0>\6\5\1\16\6\2\0%\a\19\0%\b,\0%\t-\0\16\n\5\0>\6\5\1\16\6\2\0%\a\19\0%\b.\0%\t/\0\16\n\5\0>\6\5\1\16\6\2\0%\a\19\0%\b0\0%\t1\0\16\n\5\0>\6\5\1\16\6\2\0%\a\19\0%\b2\0%\t3\0\16\n\5\0>\6\5\1\16\6\2\0%\a\19\0%\b4\0%\t5\0\16\n\5\0>\6\5\0010\0\0€G\0\1\0*<cmd>lua vim.lsp.buf.formatting()<CR>\r<space>f2<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>\r<space>q0<cmd>lua vim.lsp.diagnostic.goto_next()<CR>\a]d0<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>\a[d<<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>\r<space>e*<cmd>lua vim.lsp.buf.references()<CR>\agr+<cmd>lua vim.lsp.buf.code_action()<CR>\14<space>ca&<cmd>lua vim.lsp.buf.rename()<CR>\14<space>rn/<cmd>lua vim.lsp.buf.type_definition()<CR>\r<space>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\14<space>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\14<space>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\14<space>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\14<space>sh.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<Cmd>lua vim.lsp.buf.hover()<CR>\6K*<Cmd>lua vim.lsp.buf.definition()<CR>\agd+<Cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\1\0\2\vsilent\2\fnoremap\2\vtexthl\ttext\1\0\1\nnumhl\5\16sign_define\afn\23LspDiagnosticsSign\npairs\1\0\4\16Information\tï‘‰ \tHint\tï µ \nError\tï™™ \fWarning\tï”© \1\0\3\nsigns\2\17virtual_text\1\21update_in_insert\1\27on_publish_diagnostics\15diagnostic\twith$textDocument/publishDiagnostics\rhandlers\blsp\bvim\0\0‚\2\0\0\5\1\15\0\0294\0\0\0007\0\1\0007\0\2\0007\0\3\0>\0\1\0024\1\0\0007\1\1\0017\1\4\0017\1\5\0013\2\a\0%\3\6\0+\4\0\0$\3\4\3:\3\b\0022\3\5\0+\4\0\0;\4\1\0037\4\t\0007\4\n\4;\4\2\0037\4\v\0007\4\f\4;\4\3\0037\4\v\0007\4\r\4;\4\4\3:\3\14\2>\1\2\1G\0\1\0\0À\14arguments\14character\tline\rposition\buri\17textDocument\fcommand\1\0\0\21manipulatePipes:\20execute_command\bbuf\25make_position_params\tutil\blsp\bvim\20\1\1\2\0\1\0\0031\1\0\0000\0\0€H\1\2\0\0Á\4\1\0\b\0 \00014\0\0\0%\1\1\0>\0\2\0025\0\1\0001\0\2\0001\1\3\0004\2\1\0007\2\4\0027\2\5\0023\3\6\0:\0\a\0033\4\b\0:\4\t\0033\4\v\0003\5\n\0:\5\f\4:\4\r\0033\4\16\0003\5\15\0\16\6\1\0%\a\14\0>\6\2\2;\6\1\5:\5\17\0043\5\19\0\16\6\1\0%\a\18\0>\6\2\2;\6\1\5:\5\20\4:\4\21\3>\2\2\0014\2\22\0007\2\23\0027\2\24\2%\3\25\0%\4\26\0%\5\27\0003\6\28\0>\2\5\0014\2\22\0007\2\23\0027\2\24\2%\3\25\0%\4\29\0%\5\30\0003\6\31\0>\2\5\1G\0\1\0\1\0\1\fnoremap\2\18:FromPipe<CR>\14<space>fp\1\0\1\fnoremap\2\16:ToPipe<CR>\14<space>tp\6n\20nvim_set_keymap\bapi\bvim\rcommands\rFromPipe\1\3\0\0\0+Convert pipe operator to function call\rfromPipe\vToPipe\1\0\0\1\3\0\0\0+Convert function call to pipe operator\vtoPipe\rsettings\relixirLS\1\0\0\1\0\1\20dialyzerEnabled\1\bcmd\1\2\0\0005/home/vova/projects/elixir-ls/language_server.sh\14on_attach\1\0\0\nsetup\relixirls\0\0\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: vim-snipmate
time([[Config for vim-snipmate]], true)
try_loadstring("\27LJ\1\2N\0\0\2\0\3\0\0054\0\0\0007\0\1\0%\1\2\0>\0\2\1G\0\1\0/let g:snipMate = { 'snippet_version' : 1 }\bcmd\bvim\0", "config", "vim-snipmate")
time([[Config for vim-snipmate]], false)
-- Config for: vim-mergetool
time([[Config for vim-mergetool]], true)
try_loadstring("\27LJ\1\2f\0\0\2\0\6\0\t4\0\0\0007\0\1\0%\1\3\0:\1\2\0004\0\0\0007\0\1\0%\1\5\0:\1\4\0G\0\1\0\nlocal\30mergetool_prefer_revision\bbmr\21mergetool_layout\6g\bvim\0", "config", "vim-mergetool")
time([[Config for vim-mergetool]], false)
-- Config for: vim-autoformat
time([[Config for vim-autoformat]], true)
try_loadstring("\27LJ\1\2e\0\0\5\0\a\0\t4\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\4\0%\3\5\0003\4\6\0>\0\5\1G\0\1\0\1\0\1\fnoremap\2\20:Autoformat<CR>\b===\6n\20nvim_set_keymap\bapi\bvim\0", "config", "vim-autoformat")
time([[Config for vim-autoformat]], false)
-- Config for: vim-test
time([[Config for vim-test]], true)
try_loadstring("\27LJ\1\2@\0\0\2\0\3\0\0054\0\0\0007\0\1\0%\1\2\0>\0\2\1G\0\1\0!let test#strategy = 'tslime'\bcmd\bvim\0", "config", "vim-test")
time([[Config for vim-test]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
