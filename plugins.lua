local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
    enabled = false
  },

  {
    "NvChad/nvterm",
    opts = overrides.nvimtree,
  },
  -- Install a plugin

  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  {
    "tidalcycles/vim-tidal",
    ft = "tidal",
  },

  {
    "kevinhwang91/rnvimr",
    lazy = false,
  },

  {
    "fools-mate/cmp-tidal",
    lazy = false,
    config = function()
      require("cmp").setup({
        sources = {
          { name = "tidal" },
          {
            name = "tidal_samples",
            option = {
              dirt_samples = "/home/twojastaralinuksiara/.local/share/SuperCollider/downloaded-quarks/Dirt-Samples",
            },
          },
          -- ...more sources
        },
      })
    end,
  },

  {
    "iamcco/markdown-preview.nvim",
    lazy = false,
    ft = "markdown",
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },

  {
    "gbprod/cutlass.nvim",
    lazy = false,
    opts = {
      cut_key = "x",
      override_del = true,
      }
  }

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
}

return plugins
