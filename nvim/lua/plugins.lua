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
    -- use "wsdjeg/vim-fetch"                                                                                              -- open files in file:line_number format from CLI, useful with `neovim-remote` tool
    use "dhruvasagar/vim-zoom"                                                                                          -- zooming vim window splits
    use "tpope/vim-surround"                                                                                            -- for manipulation with parentheses, brackets, quotes
    use { "chentoast/marks.nvim", config = get_setup("marks") }                                                         -- plugin to place, toggle and display marks
    use {"numToStr/Comment.nvim", config = get_setup("comment")}                                                        -- language-agnostic comment/uncomment functionality
    use {"windwp/nvim-autopairs", config = get_setup("autopairs")}                                                      -- autoclose parentheses
    use {"AndrewRadev/switch.vim", config = get_setup("switch") }                                                       -- switch between opposite terms
    use "tpope/vim-unimpaired"                                                                                          -- Short normal mode aliases for commonly used ex commands
    use "mg979/vim-visual-multi"                                                                                        -- ability to edit with multiple cursors
    use {"ggandor/leap.nvim", config = get_setup("leap")}                                                               -- general-purpose motion plugin for Neovim
    use "AndrewRadev/splitjoin.vim"                                                                                     -- brake code expression into multiple lines
    use {"iamcco/markdown-preview.nvim", run = function() vim.fn["mkdp#util#install"]() end}                            -- Github Flavored Markdown
    use {"karb94/neoscroll.nvim", config = get_setup("neoscroll")}                                                      -- smoothie scrolling tool
    use {"direnv/direnv.vim", config = get_setup("direnv")}                                                             -- support direnv utility
    use {"morhetz/gruvbox", config = get_setup("colorscheme")}                                                          -- color Scheme
    -- use "sainnhe/gruvbox-material"                                                          -- color Scheme
    -- use "EdenEast/nightfox.nvim"
    -- use "rebelot/kanagawa.nvim"
    -- use "projekt0n/github-nvim-theme"
    -- use { "catppuccin/nvim", as = "catppuccin" }

    -- Debugging
    use 'nvim-lua/plenary.nvim'
    use {'mfussenegger/nvim-dap', config = get_setup("dap")}
    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"}, config = get_setup("dap-ui") }

    use {"norcalli/nvim-colorizer.lua", config = get_setup("colorizer")}                                                -- display colors in file
    use {"lukas-reineke/indent-blankline.nvim", config = get_setup("indent-blankline")}                                 -- prints vertical lines at each indentation level
    use {"bkad/CamelCaseMotion", config = get_setup("camel_case_motion")}                                               -- uses CamelCase jumps
    use {"voldikss/vim-translator", config = get_setup("translator")}                                                   -- translate human languages
    use {"folke/which-key.nvim", config = get_setup("which-key") }                                                      -- a plugin which shows key-bindings
    use {"hoob3rt/lualine.nvim", config = get_setup("lualine"), requires = {"ryanoasis/vim-devicons", opt = true}}      -- statusline written in pure lua.
    use {"kazhala/close-buffers.nvim", config = get_setup("close-buffers")}                                             -- ??? plugin to that quickly deletes multiple buffers
    use {"rcarriga/nvim-notify", config = get_setup("nvim-notify")}                                                     -- a fancy, configurable, notification manager for NeoVim

    use {"neovim/nvim-lspconfig", config = get_setup("lspconfig")}                                                      -- collection of common configurations for built-in language server client
    use {"ray-x/lsp_signature.nvim", config = get_setup("lsp_signature")}                                               -- show signature from LSP when apply a function
    use {"hrsh7th/nvim-cmp", config = get_setup("cmp"), requires = {                                                    -- a completion engine plugin for neovim written in Lua
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "onsails/lspkind-nvim",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
        "rafamadriz/friendly-snippets"
      }
    }

    use { "simrat39/rust-tools.nvim", config = get_setup("rust-tools")}

    use {"dhruvasagar/vim-table-mode", config = get_setup("vim-table-mode")}                                            -- better handling for tables
    use {"nvim-treesitter/nvim-treesitter", config = get_setup("treesitter"), run = ":TSUpdate", requires = {           -- a set of configs for treesitter
        "nvim-treesitter/playground"
      }
    }

    use {"nvim-treesitter/nvim-treesitter-textobjects", after = "nvim-treesitter", requires = "nvim-treesitter/nvim-treesitter" } -- syntax aware text-objects, select, move, swap, and peek support.
    use {"nvim-treesitter/nvim-treesitter-context", after = "nvim-treesitter", requires = "nvim-treesitter/nvim-treesitter" }     -- shows the context of the currently visible buffer contents
    use {"HiPhish/nvim-ts-rainbow2", after = "nvim-treesitter", requires = "nvim-treesitter/nvim-treesitter" }                    -- rainbow parentheses for neovim using tree-sitter. 

    use {"nvim-telescope/telescope.nvim", config = get_setup("telescope"), requires = {                                 --  highly extendable fuzzy finder over lists
        "nvim-lua/popup.nvim",
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-live-grep-args.nvim",
        "smilovanovic/telescope-search-dir-picker.nvim"
      }
    }
    use {"nvim-telescope/telescope-fzf-native.nvim", run = "make", config = get_setup("telescope-fzf-native")}          -- a plugin for fzf algorithm

    use {"kyazdani42/nvim-tree.lua", config = get_setup("nvim-tree"), requires = {"kyazdani42/nvim-web-devicons"}}      -- file browser
    use "kevinhwang91/nvim-bqf"                                                                                         -- better design for quick-fix window, it is used in easygrep, vim-fugitive, etc
    use "jremmen/vim-ripgrep"                                                                                           -- search tool that recursively searches the current directory for a regex pattern

    use {"tpope/vim-fugitive", requires = {"shumphrey/fugitive-gitlab.vim"}}                                            -- plugin for git
    use {"lewis6991/gitsigns.nvim", config = get_setup("gitsigns"), requires = {"nvim-lua/plenary.nvim"}}               -- shows a git diff in the sign column

    use {"vim-test/vim-test", config = get_setup("vim-test")}                                                           -- plugin for testing code from vim
    use {"jgdavey/tslime.vim", config = get_setup("tslime")}                                                            -- allows to run code in tmux
    use "christoomey/vim-tmux-navigator"                                                                                -- navigation between vim and tmux splits using a consistent set of hotkeys.

  end,
  config = {
    display = {
      open_fn = function()
        return require('packer.util').float({ border = 'single' })
      end
    }
  }
})
