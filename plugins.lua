---@diagnostic disable: different-requires
local overrides = require "custom.configs.overrides"

local plugins = {
  {
    "williamboman/mason.nvim",
    event = "VeryLazy",
    opts = overrides.mason,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    event = "VeryLazy",
    opts = overrides.treesitter,
  },

  -- Lsp/Null-ls for codeactions/linters/formatters
  {
    "neovim/nvim-lspconfig",
    event = "VeryLazy",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  -- Debug plugins
  {
    "mfussenegger/nvim-dap",
    event = "VeryLazy",
    dependencies = {
      "theHamsta/nvim-dap-virtual-text",
      "nvim-telescope/telescope-dap.nvim",
      "jbyuki/one-small-step-for-vimkind",
    },
  },

  {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    config = function()
      require("dapui").setup()
    end,
  },

  -- Custom debugger/adapter configurations for mason
  {
    "jay-babu/mason-nvim-dap.nvim",
    event = "VeryLazy",
    config = function()
      require "custom.configs.external.mason-nvim-dap"
    end,
  },

  -- Rust plugins
  {
    "rust-lang/rust.vim",
    event = "VeryLazy",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
    end,
  },

  {
    "simrat39/rust-tools.nvim",
    event = "VeryLazy",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function()
      return require "custom.configs.rust-tools"
    end,
    config = function(_, opts)
      require("rust-tools").setup(opts)
    end,
  },

  -- Git tools
  {
    "TimUntersberger/neogit",
    event = "VeryLazy",
    dependencies = {
      "sindrets/diffview.nvim",
    },
    config = function()
      require "custom.configs.external.neogit"
    end,
  },
  -- Quality of life
  {
    "max397574/better-escape.nvim",
    event = "VeryLazy",
    config = function()
      require "custom.configs.external.better-escape"
    end,
  },

  -- Telescope filter for mason
  {
    "nvim-telescope/telescope-ui-select.nvim",
    event = "VeryLazy",
    config = function()
      require("telescope").load_extension "ui-select"
    end,
  },

  -- Noice UI for neovim
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      -- "rcarriga/nvim-notify",
    },
    config = function()
      require "custom.configs.external.noice"
    end,
  },

  -- Discord presence plugin
  {
    "andweeb/presence.nvim",
    event = "VeryLazy",
    config = function()
      require "custom.configs.external.presence"
    end,
  },
  {
    "wakatime/vim-wakatime",
    event = "VeryLazy",
  },
  -- Github Copilot
  {
    "hrsh7th/nvim-cmp",
    opts = overrides.cmp,
    dependencies = {
      -- "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-nvim-lsp",
      "f3fora/cmp-spell",
      -- "hrsh7th/cmp-vsnip",
      "delphinus/cmp-ctags",
      "hrsh7th/cmp-nvim-lsp-document-symbol",
      "hrsh7th/cmp-copilot",
      "ray-x/cmp-treesitter",
      {
        "hrsh7th/cmp-cmdline",
        event = "CmdLineEnter",
      },
    },
  },
  {
    "jonahgoldwastaken/copilot-status.nvim",
    dependencies = { "copilot.lua" },
    event = "BufReadPost",
    config = function()
      require("copilot_status").setup {
        icons = {
          idle = " ",
          error = " ",
          offline = " ",
          warning = "𥉉 ",
          loading = " ",
        },
        debug = false,
      }
    end,
  },

  {
    "github/copilot.vim",
    event = "VeryLazy",
    config = function()
      require "custom.configs.copilot"
    end,
  },

  {
    "zbirenbaum/copilot.lua",
    event = "InsertEnter",
    dependencies = {
      {
        "zbirenbaum/copilot-cmp",
        config = function()
          require("copilot_cmp").setup()
        end,
      },
    },
    config = function()
      require("copilot").setup {
        suggestion = {
          enabled = false,
          auto_trigger = false,
          keymap = {
            -- accept = "<Tab>",
            accept_word = false,
            accept_line = false,
            next = "<M-]>",
            prev = "<M-[>",
            dismiss = "<C-]>",
          },
        },
        panel = {
          enabled = false,
        },
        server_opts_overrides = {
          trace = "verbose",
          settings = {
            advanced = {
              listCount = 3,
              inlineSuggestCount = 3,
            },
          },
        },
      }
    end,
  },
}

return plugins
