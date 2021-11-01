return require("packer").startup(
  function()
    -- packer can manage itself
    use "wbthomason/packer.nvim"
    use "famiu/nvim-reload"                                                                                             -- reloads lua configs

    -- APPEARANCE
    use "ntpeters/vim-better-whitespace"                                                                                -- highlights trailing whitespaces
    use "psliwka/vim-smoothie"                                                                                          -- smoothie scrolling tool
    use "camspiers/animate.vim"                                                                                         -- animation tool
    use "airblade/vim-current-search-match"                                                                             -- changes cursor highlighting during search
    use "direnv/direnv.vim"                                                                                             -- support direnv utility
    use "dhruvasagar/vim-zoom"                                                                                          -- zooming vim window splits
    use "wsdjeg/vim-fetch"                                                                                              -- open files in file:line_number format from CLI, useful with `neovim-remote` tool
    use "tpope/vim-surround"                                                                                            -- for manipulation with parentheses, brackets, quotes
    use "mg979/vim-visual-multi"                                                                                        -- ability to edit with multiple cursors
    use "rhysd/vim-gfm-syntax"                                                                                          -- Github Flavored Markdown

    use {"morhetz/gruvbox", config = require "plugins.colorscheme", as = "colorscheme" }                                -- color Scheme
    use {"luochen1990/rainbow", config = require "plugins.rainbow"}                                                     -- shows diff level of parentheses in diff color
    use {"rrethy/vim-hexokinase", config = require "plugins.hexokinase", run = "make hexokinase"}                       -- display colors in file
    use {"RRethy/vim-illuminate", config = require "plugins.illuminate"}                                                -- highlight other uses of the current word under the cursor
    use {"Yggdroot/indentLine", config = require "plugins.indent_line"}                                                 -- prints vertical lines at each indentation level
    use {"bkad/CamelCaseMotion", config = require "plugins.camel_case_motion"}                                          -- uses CamelCase jumps
    use {"voldikss/vim-translator", config = require "plugins.translator"}                                              -- translate human languages
    use {"folke/which-key.nvim", config = require "plugins.which-key" }                                                 -- a plugin which shows key-bindings
    use {"hoob3rt/lualine.nvim", config = require "plugins.lualine", requires = {"kyazdani42/nvim-web-devicons", opt = true}}  -- statusline written in pure lua.

    use {"hrsh7th/nvim-compe", config = require "plugins.compe"}                                                        -- autocompletion plugin
    use {"vim-autoformat/vim-autoformat", config = require "plugins.autoformat"}                                        -- format code with one button press
    use {"tomtom/tcomment_vim", config = require "plugins.tcomment"}                                                    -- language-agnostic comment/uncomment functionality
    use {"windwp/nvim-autopairs", config = require "plugins.autopairs"}                                                 -- autoclose parentheses
    use {"AndrewRadev/switch.vim", config = require "plugins.switch" }                                                  -- switch between opposite terms
    use {"dhruvasagar/vim-table-mode", config = require "plugins.vim-table-mode"}                                       -- better handling for tables
    use {"nvim-treesitter/nvim-treesitter", config = require "plugins.treesitter", run = ":TSUpdate"}                   -- a set of configs for treesitter
    use "nvim-treesitter/playground"                                                                                    -- a tool for debugging treesitter
    use "elixir-editors/vim-elixir"                                                                                     -- can be removed in the future when elixir plugin for treesitter is improved
    use "kshenoy/vim-signature"                                                                                         -- plugin to place, toggle and display marks

    use {'akinsho/nvim-bufferline.lua', config = require "plugins.bufferline",  requires = 'kyazdani42/nvim-web-devicons'}     -- A snazzy nail_care buffer line
    use {"Asheq/close-buffers.vim", config = require "plugins.close-buffers"}                                           -- helpful plugin to work with buffers
    use "AndrewRadev/splitjoin.vim"                                                                                     --brake code expression into multiple lines

    use {"neovim/nvim-lspconfig", config = require "plugins.lspconfig"}                                                 -- collection of common configurations for built-in language server client
    use {"ray-x/lsp_signature.nvim", config = require "plugins.lsp_signature"}                                          -- show signature from LSP when apply a function
    use {"kyazdani42/nvim-tree.lua", config = require "plugins.nvim-tree", requires = {"kyazdani42/nvim-web-devicons"}} -- file browser
    use {"ibhagwan/fzf-lua", config = require "plugins.fzf-lua", requires = {"kyazdani42/nvim-web-devicons", "vijaymarupudi/nvim-fzf"}}  -- fuzzy finder
    use "kevinhwang91/nvim-bqf"                                                                                         -- better design for quick-fix window, it is used in easygrep, vim-fugitive, etc
    use {"onsails/lspkind-nvim", config = require "plugins.lspkind"}                                                    -- show an icon in autocompletion list
    use "jremmen/vim-ripgrep"                                                                                           -- search tool that recursively searches the current directory for a regex pattern
    use {"akinsho/nvim-toggleterm.lua"}                                                                                 -- plugin to persist and toggle multiple terminals

    use "tpope/vim-fugitive"                                                                                            -- plugin for git
    use {"samoshkin/vim-mergetool", config = require "plugins.vim-mergetool"}                                           -- merge tool for git
    use {"lewis6991/gitsigns.nvim", config = require "plugins.gitsigns", requires = {"nvim-lua/plenary.nvim" }}         -- shows a git diff in the sign column
    use "kdheepak/lazygit.nvim"

    -- use "wellle/targets.vim"  -- move text objects SURROUTD

    use "SirVer/ultisnips"                                                                                              -- the ultimate solution for snippets in Vim
    use "honza/vim-snippets"                                                                                            -- contains snippets files for various programming languages.

    use {"vim-test/vim-test", config = require "plugins.vim-test"}                                                      -- plugin for testing code from vim
    use {"jgdavey/tslime.vim", config = require "plugins.tslime"}                                                       -- allows to run code in tmux
    use "christoomey/vim-tmux-navigator"                                                                                -- navigation between vim and tmux splits using a consistent set of hotkeys.

    -- use {"nvim-telescope/telescope.nvim", config = require "plugins.telescope", requires = {{"nvim-lua/popup.nvim"}, {"nvim-lua/plenary.nvim"}}} --  highly extendable fuzzy finder over lists
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
