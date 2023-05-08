function get_setup(name)
  local setting = string.format("plugins.%s", name)
  return require(setting)
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

return require("packer").startup({
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
    use {"iamcco/markdown-preview.nvim", run = function() vim.fn["mkdp#util#install"]() end}                            -- Github Flavored Markdown
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
    use {"kazhala/close-buffers.nvim", config = get_setup("close-buffers")}                                             -- plugin to that quickly deletes multiple buffers
    use {"akinsho/nvim-bufferline.lua",                                                                                 -- A snazzy nail_care buffer line
      config = get_setup("bufferline"),
      requires = "kyazdani42/nvim-web-devicons",
      before = "gruvbox"
    }
    use {"rcarriga/nvim-notify", config = get_setup("nvim-notify")}                                                     -- a fancy, configurable, notification manager for NeoVim

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
        "nvim-treesitter/nvim-treesitter-context",
        "p00f/nvim-ts-rainbow"
      }
    }
    use "kshenoy/vim-signature"                                                                                         -- plugin to place, toggle and display marks
    use {"ggandor/leap.nvim", config = get_setup("leap"), requires = {
      "ggandor/flit.nvim",
      "ggandor/leap-spooky.nvim"
    }}                                                              -- general-purpose motion plugin for Neovim
    use "AndrewRadev/splitjoin.vim"                                                                                     -- brake code expression into multiple lines
    use "tpope/vim-unimpaired"                                                                                          -- Short normal mode aliases for commonly used ex commands

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
  end,
  config = {
    display = {
      open_fn = function()
        return require('packer.util').float({ border = 'single' })
      end
    }
  }
})
