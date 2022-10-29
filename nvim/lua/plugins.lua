function get_setup(name)
  local setting = string.format("plugins.%s", name)
  return require(setting)
end

return require("packer").startup(
  function()
    -- packer can manage itself
    use "wbthomason/packer.nvim"

    -- APPEARANCE
    use "ntpeters/vim-better-whitespace"                                                                                -- highlights trailing whitespaces
    -- use "camspiers/animate.vim"                                                                                         -- animation tool
    use "dhruvasagar/vim-zoom"                                                                                          -- zooming vim window splits
    use "wsdjeg/vim-fetch"                                                                                              -- open files in file:line_number format from CLI, useful with `neovim-remote` tool
    use "tpope/vim-surround"                                                                                            -- for manipulation with parentheses, brackets, quotes
    -- use "wellle/targets.vim"  -- move text objects SURROUTD
    use "mg979/vim-visual-multi"                                                                                        -- ability to edit with multiple cursors
    use "rhysd/vim-gfm-syntax"                                                                                          -- Github Flavored Markdown
    use {"karb94/neoscroll.nvim", config = get_setup("neoscroll")}                                                      -- smoothie scrolling tool
    use {"direnv/direnv.vim", config = get_setup("direnv")}                                                             -- support direnv utility
    use {"morhetz/gruvbox", config = get_setup("colorscheme")}                                                          -- color Scheme
    use {"norcalli/nvim-colorizer.lua", config = get_setup("colorizer")}                                                -- display colors in file
    use {"RRethy/vim-illuminate", config = get_setup("illuminate")}                                                     -- highlight other uses of the current word under the cursor
    use {"Yggdroot/indentLine", config = get_setup("indent_line")}                                                      -- prints vertical lines at each indentation level
    use {"bkad/CamelCaseMotion", config = get_setup("camel_case_motion")}                                               -- uses CamelCase jumps
    use {"voldikss/vim-translator", config = get_setup("translator")}                                                   -- translate human languages
    use {"folke/which-key.nvim", config = get_setup("which-key") }                                                      -- a plugin which shows key-bindings
    use {"hoob3rt/lualine.nvim", config = get_setup("lualine"), requires = {"ryanoasis/vim-devicons", opt = true}}      -- statusline written in pure lua.

    use {"neovim/nvim-lspconfig", config = get_setup("lspconfig")}                                                      -- collection of common configurations for built-in language server client
    use {"ray-x/lsp_signature.nvim", config = get_setup("lsp_signature")}                                               -- show signature from LSP when apply a function
    use {"hrsh7th/nvim-cmp", config = get_setup("cmp"), requires = {                                                    -- a completion engine plugin for neovim written in Lua
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-nvim-lua",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "onsails/lspkind-nvim",
        -- cmp-look requires "words" package (arch linux)
        -- "octaltree/cmp-look",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
        "rafamadriz/friendly-snippets"
      }
    }
    use {"numToStr/Comment.nvim", config = get_setup("comment")}                                                        -- language-agnostic comment/uncomment functionality
    use {"windwp/nvim-autopairs", config = get_setup("autopairs")}                                                      -- autoclose parentheses
    use {"AndrewRadev/switch.vim", config = get_setup("switch") }                                                       -- switch between opposite terms
    use {"dhruvasagar/vim-table-mode", config = get_setup("vim-table-mode")}                                            -- better handling for tables
    use {"nvim-treesitter/nvim-treesitter", config = get_setup("treesitter"), run = ":TSUpdate", requires = {           -- a set of configs for treesitter
        "nvim-treesitter/playground",
        "nvim-treesitter/nvim-treesitter-textobjects",
        "p00f/nvim-ts-rainbow"
      }
    }
    use "kshenoy/vim-signature"                                                                                         -- plugin to place, toggle and display marks

    use {"akinsho/nvim-bufferline.lua",                                                                                 -- A snazzy nail_care buffer line
      config = get_setup("bufferline"),
      requires = 'kyazdani42/nvim-web-devicons',
      before = "gruvbox"
    }
    use {"famiu/bufdelete.nvim", config = get_setup("bufdelete")}                                                       -- helpful plugin to work with buffers
    use "AndrewRadev/splitjoin.vim"                                                                                     -- brake code expression into multiple lines

    use {"kyazdani42/nvim-tree.lua", config = get_setup("nvim-tree"), requires = {"kyazdani42/nvim-web-devicons"}}      -- file browser
    use "kevinhwang91/nvim-bqf"                                                                                         -- better design for quick-fix window, it is used in easygrep, vim-fugitive, etc
    use "jremmen/vim-ripgrep"                                                                                           -- search tool that recursively searches the current directory for a regex pattern
    -- use {"akinsho/nvim-toggleterm.lua", config = require "plugins.toggleterm"}                                                                                 -- plugin to persist and toggle multiple terminals

    use {"tpope/vim-fugitive", requires = {"shumphrey/fugitive-gitlab.vim"}}                                            -- plugin for git
    use {"lewis6991/gitsigns.nvim", config = get_setup("gitsigns"), requires = {"nvim-lua/plenary.nvim"}}               -- shows a git diff in the sign column
    use "kdheepak/lazygit.nvim"

    use {"vim-test/vim-test", config = get_setup("vim-test")}                                                           -- plugin for testing code from vim
    use {"jgdavey/tslime.vim", config = get_setup("tslime")}                                                            -- allows to run code in tmux
    use "christoomey/vim-tmux-navigator"                                                                                -- navigation between vim and tmux splits using a consistent set of hotkeys.


    use {"nvim-telescope/telescope.nvim", config = get_setup("telescope"), requires = {                                 --  highly extendable fuzzy finder over lists
        "nvim-lua/popup.nvim",
        "nvim-lua/plenary.nvim",
      }
    }
    use {"nvim-telescope/telescope-fzf-native.nvim", run = "make", config = get_setup("telescope-fzf-native")}          -- a plugin for fzf algorithm
    use {"rlane/pounce.nvim", config = get_setup("pounce"), before = "gruvbox"}                                         -- a motion plugin, based on incremental fuzzy search
    use {"rcarriga/nvim-notify", config = get_setup("nvim-notify")}                                                     -- a fancy, configurable, notification manager for NeoVim
  end
)



-- NeoBundle 'mhinz/vim-mix-format'                                      " introduced the formatter: mix format
--   let g:mix_format_on_save = 1
-- NeoBundle 'Lokaltog/vim-easymotion'                                   " number | letter motions for vim
--   let g:EasyMotion_smartcase = 1
--   map  / <Plug>(easymotion-sn)
--   omap / <Plug>(easymotion-tn)
--   map  n <Plug>(easymotion-next)
--   map N <Plug>(easymotion-prev)
-- NeoBundle 'majutsushi/tagbar'                                         " shows tags
--   " Elixir Tagbar Configuration
--   let g:tagbar_type_elixir = {
--       \ 'ctagstype' : 'elixir',
--       \ 'kinds' : [
--           \ 'f:functions',
--           \ 'functions:functions',
--           \ 'c:callbacks',
--           \ 'd:delegates',
--           \ 'e:exceptions',
--           \ 'i:implementations',
--           \ 'a:macros',
--           \ 'o:operators',
--           \ 'm:modules',
--           \ 'p:protocols',
--           \ 'r:records',
--           \ 't:tests'
--       \ ]
--       \ }
--   noremap tt :TagbarToggle<CR>
