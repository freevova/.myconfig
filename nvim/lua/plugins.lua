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
    use {"karb94/neoscroll.nvim", config = require "plugins.neoscroll"}                                                 -- smoothie scrolling tool
    use {"direnv/direnv.vim", config = require "plugins.direnv"}                                                        -- support direnv utility
    use {"morhetz/gruvbox", config = require "plugins.colorscheme"}                                                     -- color Scheme
    use {"norcalli/nvim-colorizer.lua", config = require "plugins.colorizer"}                                           -- display colors in file
    use {"RRethy/vim-illuminate", config = require "plugins.illuminate"}                                                -- highlight other uses of the current word under the cursor
    use {"Yggdroot/indentLine", config = require "plugins.indent_line"}                                                 -- prints vertical lines at each indentation level
    use {"bkad/CamelCaseMotion", config = require "plugins.camel_case_motion"}                                          -- uses CamelCase jumps
    use {"voldikss/vim-translator", config = require "plugins.translator"}                                              -- translate human languages
    use {"folke/which-key.nvim", config = require "plugins.which-key" }                                                 -- a plugin which shows key-bindings
    use {"hoob3rt/lualine.nvim", config = require "plugins.lualine", requires = {"ryanoasis/vim-devicons", opt = true}}  -- statusline written in pure lua.

    use {"neovim/nvim-lspconfig", config = require "plugins.lspconfig"}                                                 -- collection of common configurations for built-in language server client
    use {"ray-x/lsp_signature.nvim", config = require "plugins.lsp_signature"}                                          -- show signature from LSP when apply a function
    use {"hrsh7th/nvim-cmp", config = require "plugins.cmp", requires = {                                               -- a completion engine plugin for neovim written in Lua
        "hrsh7th/cmp-nvim-lsp",
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
    use {"numToStr/Comment.nvim", config = require "plugins.comment"}                                                   -- language-agnostic comment/uncomment functionality
    use {"windwp/nvim-autopairs", config = require "plugins.autopairs"}                                                 -- autoclose parentheses
    use {"AndrewRadev/switch.vim", config = require "plugins.switch" }                                                  -- switch between opposite terms
    use {"dhruvasagar/vim-table-mode", config = require "plugins.vim-table-mode"}                                       -- better handling for tables
    use {"nvim-treesitter/nvim-treesitter", config = require "plugins.treesitter", run = ":TSUpdate", requires = {      -- a set of configs for treesitter
        "nvim-treesitter/playground",
        "nvim-treesitter/nvim-treesitter-textobjects",
        "p00f/nvim-ts-rainbow"
      }
    }
    -- use "nvim-treesitter/playground"                                                                                    -- a tool for debugging treesitter
    use "kshenoy/vim-signature"                                                                                         -- plugin to place, toggle and display marks

    use {'akinsho/nvim-bufferline.lua', config = require "plugins.bufferline",  requires = 'kyazdani42/nvim-web-devicons'}    -- A snazzy nail_care buffer line
    use {"Asheq/close-buffers.vim", config = require "plugins.close-buffers"}                                           -- helpful plugin to work with buffers
    use "AndrewRadev/splitjoin.vim"                                                                                     -- brake code expression into multiple lines

    use {"kyazdani42/nvim-tree.lua", config = require "plugins.nvim-tree", requires = {"kyazdani42/nvim-web-devicons"}}       -- file browser
    use "kevinhwang91/nvim-bqf"                                                                                         -- better design for quick-fix window, it is used in easygrep, vim-fugitive, etc
    use "jremmen/vim-ripgrep"                                                                                           -- search tool that recursively searches the current directory for a regex pattern
    -- use {"akinsho/nvim-toggleterm.lua", config = require "plugins.toggleterm"}                                                                                 -- plugin to persist and toggle multiple terminals

    use {"tpope/vim-fugitive", requires = {"shumphrey/fugitive-gitlab.vim"}}                                            -- plugin for git
    use {"lewis6991/gitsigns.nvim", config = require "plugins.gitsigns", requires = {"nvim-lua/plenary.nvim"}}          -- shows a git diff in the sign column
    use "kdheepak/lazygit.nvim"

    use {"vim-test/vim-test", config = require "plugins.vim-test"}                                                      -- plugin for testing code from vim
    use {"jgdavey/tslime.vim", config = require "plugins.tslime"}                                                       -- allows to run code in tmux
    use "christoomey/vim-tmux-navigator"                                                                                -- navigation between vim and tmux splits using a consistent set of hotkeys.

    use {"nvim-telescope/telescope.nvim", config = require "plugins.telescope", requires = {                            --  highly extendable fuzzy finder over lists
        "nvim-lua/popup.nvim",
        "nvim-lua/plenary.nvim",
      }
    }
    use {"nvim-telescope/telescope-fzf-native.nvim", run = "make", config = require "plugins.telescope-fzf-native"}
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
