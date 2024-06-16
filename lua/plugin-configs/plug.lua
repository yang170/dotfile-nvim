local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- colorscheme
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    config = function()
      require("plugin-configs/gruvbox-config")
    end,
  },

  -- icons
  "nvim-tree/nvim-web-devicons",

  -- filesystem navigation
  {
    "kyazdani42/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("plugin-configs/nvim-tree-config")
    end,
    init = function()
      local function open_nvim_tree()
          require("nvim-tree.api").tree.open()
      end

      vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
    end,
  },

  -- telescope
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
      "nvim-lua/plenary.nvim"
    },
    config = function()
      require("plugin-configs/telescope-config")
    end,
  },

  -- tabs
  {
    "romgrk/barbar.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    },
    config = function()
      require("plugin-configs/barbar-config")
    end,
  },

  -- statusline
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    },
    config = function()
      require("plugin-configs/lualine-config")
    end,
  },

  -- git edit indicator
  {
    "lewis6991/gitsigns.nvim",
    config = true,
  },

  -- clipboard
  "ojroques/vim-oscyank",

  -- commenting / uncommenting
  "tpope/vim-commentary",

  -- better syntax highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("plugin-configs/nvim-treesitter-config")
    end,
  },

  -- language service protocol
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("plugin-configs/nvim-lspconfig-config")
    end,
  },

  -- auto pairs
  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup {}
    end,
  },

  -- auto completion
  {
    "hrsh7th/nvim-cmp",
    config = function()
      require("plugin-configs/nvim-cmp-config")
    end,
  },

  "hrsh7th/cmp-nvim-lsp", -- nvim-cmp source for neovim's built-in language server client
  "hrsh7th/cmp-path", -- nvim-cmp source for filesystem paths
  "hrsh7th/cmp-buffer", -- nvim-cmp source for buffer words
  "hrsh7th/cmp-nvim-lsp-signature-help", -- nvim-cmp source for function signatures

  -- formatter
  {
    "mhartington/formatter.nvim",
    config = function()
      require("plugin-configs/formatter-config")
    end
  }
})

