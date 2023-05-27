local plugins = {
  {
    "williamboman/mason.nvim",
    event = "VeryLazy",
    opts = {
      ensure_installed = {
        "pyright",
        "lua-language-server",
        "nil_ls",
        "stylua",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "c",
        "cpp",
        "bash",
        "html",
        "css",
        "javascript",
        "python",
        "dart",
        "nix",
        "elixir",
        "clojure",
        "yaml",
        "toml",
      },
    },
  },

  -- Lsp/Null-ls for codeactions/linters/formatters
  {
    "neovim/nvim-lspconfig",
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

  -- Git tools

  -- {
  --   "kdheepak/lazygit.nvim",
  --   event = "VeryLazy",
  --   config = function()
  --     require("telescope").load_extension "lazygit"
  --   end,
  -- },

  {
    "TimUntersberger/neogit",
    event = "VeryLazy",
    dependencies = {
      "sindrets/diffview.nvim",
    },
    config = function()
      local neogit = require "neogit"
      neogit.setup {
        disable_signs = false,
        disable_hint = false,
        disable_context_highlighting = false,
        disable_commit_confirmation = true,
        auto_refresh = true,
        sort_branches = "-committerdate",
        disable_builtin_notifications = false,
        use_magit_keybindings = false,
        -- Change the default way of opening neogit
        kind = "tab",
        console_timeout = 2000,
        auto_show_console = true,
        remember_settings = true,
        use_per_project_settings = true,
        ignored_settings = {},
        -- Change the default way of opening the commit popup
        commit_popup = {
          kind = "split",
        },
        -- Change the default way of opening the preview buffer
        preview_buffer = {
          kind = "split",
        },
        -- Change the default way of opening popups
        popup = {
          kind = "split",
        },
        -- customize displayed signs
        signs = {
          -- { CLOSED, OPENED }
          section = { ">", "v" },
          item = { ">", "v" },
          hunk = { "", "" },
        },
        integrations = {
          diffview = true,
        },
      }
    end,
  },

  -- Neorg mode for note-taking system
  {
    "nvim-neorg/neorg",
    event = "VeryLazy",
    build = ":Neorg sync-parsers",
    opts = {
      load = {
        ["core.defaults"] = {},  -- Loads default behaviour
        ["core.concealer"] = {}, -- Adds pretty icons to your documents
        ["core.dirman"] = {      -- Manages Neorg workspaces
          config = {
            workspaces = {
              home = "~/notes/home/",
            },
          },
        },
      },
    },
  },

  -- Telescope filter for mason
  {
    "nvim-telescope/telescope-ui-select.nvim",
    event = "VeryLazy",
    config = function()
      require("telescope").load_extension "ui-select"
    end,
  },

  -- Debug plugins
  {
    "mfussenegger/nvim-dap",
    event = "VeryLazy",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "theHamsta/nvim-dap-virtual-text",
      "nvim-telescope/telescope-dap.nvim",
      "jbyuki/one-small-step-for-vimkind",
    },
  },

  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap" },
    config = function()
      require("dapui").setup()
    end,
  },

  {
    "jay-babu/mason-nvim-dap.nvim",
    event = "VeryLazy",
    config = function()
      require("mason-nvim-dap").setup {
        ensure_installed = { "debugpy", "js-debug-adapter" },
        handlers = {
          function(config)
            require("mason-nvim-dap").default_setup(config)
          end,
          python = function(config)
            -- config.adapters = {
            --   type = "executable",
            --   command = os.getenv "HOME" .. "/.virtualenvs/debugpy/bin/python",
            --   args = { "-m", "debugpy.adapter" },
            -- }
            -- config.configurations = {
            --   {
            --     type = "python", -- the type here established the link to the adapter definition: `dap.adapters.python`
            --     request = "launch",
            --     name = "Launch file",
            --
            --     program = "${file}",
            --     pythonPath = function()
            --       local cwd = vim.fn.getcwd()
            --       if vim.fn.executable(cwd .. "/venv/bin/python") == 1 then
            --         return cwd .. "/venv/bin/python"
            --       elseif vim.fn.executable(cwd .. "/.venv/bin/python") == 1 then
            --         return cwd .. "/.venv/bin/python"
            --       else
            --         return "/home/redyf/.nix-profile/bin/python"
            --       end
            --     end,
            --   },
            -- }

            require("mason-nvim-dap").default_setup(config) -- don't forget this!
          end,
          dart = function(config)
            config.adapters = {
              type = "executable",
              command = "dart",
              args = { "debug_adapter" },
            }
            config.configurations = {
              {
                type = "dart",
                request = "launch",
                name = "Launch Dart Program",
                program = "${file}",
                cwd = "${workspaceFolder}",
                args = { "--help" }, -- Note for Dart apps this is args, for Flutter apps toolArgs
              },
            }
            require("mason-nvim-dap").default_setup(config) -- don't forget this!
          end,
        },
      }
    end,
  },

  -- Nice UI for neovim
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    config = function()
      require("noice").setup {
        lsp = {
          hover = {
            enabled = false,
          },
          override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
            ["cmp.entry.get_documentation"] = true,
          },
          signature = {
            enabled = false,
          },
        },

        presets = {
          bottom_search = true,         -- use a classic bottom cmdline for search
          command_palette = true,       -- position the cmdline and popupmenu together
          long_message_to_split = true, -- long messages will be sent to a split
          inc_rename = false,           -- enables an input dialog for inc-rename.nvim
          lsp_doc_border = false,       -- add a border to hover docs and signature help
        },
      }
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
  },

  -- NvChad terminal
  {
    "NvChad/nvterm",
    event = "VeryLazy",
    config = function()
      require("nvterm").setup {
        terminals = {
          shell = vim.o.shell,
          list = {},
          type_opts = {
            float = {
              relative = "editor",
              row = 0.3,
              col = 0.25,
              width = 0.5,
              height = 0.4,
              border = "single",
            },
            horizontal = { location = "rightbelow", split_ratio = 0.3 },
            vertical = { location = "rightbelow", split_ratio = 0.5 },
          },
        },
        behavior = {
          autoclose_on_quit = {
            enabled = false,
            confirm = true,
          },
          close_on_exit = true,
          auto_insert = true,
        },
      }
    end,
  },

  -- Discord presence plugin
  {
    "andweeb/presence.nvim",
    event = "VeryLazy",
    config = function()
      require("presence"):setup {
        file_assets = {
          c = { "C ", "https://raw.githubusercontent.com/leonardssh/vscord/main/assets/icons/c.png" },
          cpp = {
            "C++",
            "https://raw.githubusercontent.com/leonardssh/vscord/main/assets/icons/cpp.png",
          },
          rust = {
            "Rust",
            "https://raw.githubusercontent.com/leonardssh/vscord/main/assets/icons/rust.png",
          },
          html = {
            "HTML",
            "https://raw.githubusercontent.com/leonardssh/vscord/main/assets/icons/html.png",
          },
          css = {
            "CSS",
            "https://raw.githubusercontent.com/leonardssh/vscord/main/assets/icons/css.png",
          },
          scss = {
            "Sass",
            "https://raw.githubusercontent.com/leonardssh/vscord/main/assets/icons/scss.png",
          },
          ["tailwind.config.js"] = {
            "Tailwind",
            "https://avatars.githubusercontent.com/u/70907734?v=4",
          },
          js = {
            "JavaScript",
            "https://raw.githubusercontent.com/leonardssh/vscord/main/assets/icons/js.png",
          },
          ts = {
            "TypeScript",
            "https://raw.githubusercontent.com/leonardssh/vscord/main/assets/icons/ts.png",
          },
          jsx = {
            "React",
            "https://raw.githubusercontent.com/leonardssh/vscord/main/assets/icons/jsx.png",
          },
          tsx = {
            "React",
            "https://raw.githubusercontent.com/leonardssh/vscord/main/assets/icons/tsx.png",
          },
          npm = {
            "NPM",
            "https://raw.githubusercontent.com/leonardssh/vscord/main/assets/icons/npm.png",
          },
          debugging = {
            "Debugging",
            "https://github.com/leonardssh/vscord/blob/main/assets/icons/debugging.png?raw=true",
          },
          docker = {
            "Docker",
            "https://raw.githubusercontent.com/leonardssh/vscord/main/assets/icons/docker.png",
          },
          cl = { "Common Lisp", "lisp" },
          clj = {
            "Clojure",
            "https://raw.githubusercontent.com/leonardssh/vscord/main/assets/icons/clojure.png",
          },
          cljs = { "ClojureScript", "clojurescript" },
          ex = {
            "Elixir",
            "https://github.com/leonardssh/vscord/blob/main/assets/icons/elixir.png",
          },
          exs = {
            "Elixir",
            "https://raw.githubusercontent.com/leonardssh/vscord/main/assets/icons/elixir.png",
          },
          go = {
            "Go",
            "https://raw.githubusercontent.com/leonardssh/vscord/main/assets/icons/go.png",
          },
          lua = {
            "Lua",
            "https://raw.githubusercontent.com/leonardssh/vscord/main/assets/icons/lua.png",
          },
          py = {
            "Python",
            "https://raw.githubusercontent.com/leonardssh/vscord/main/assets/icons/python.png",
          },
          yaml = { "YAML", "https://avatars.githubusercontent.com/u/70907734?v=4" },
          nix = {
            "Nix",
            "https://raw.githubusercontent.com/leonardssh/vscord/main/assets/icons/nix.png",
          },
          norg = {
            "Neorg",
            "neorg",
          },
          md = {
            "Markdown",
            "https://raw.githubusercontent.com/leonardssh/vscord/main/assets/icons/markdown.png",
          },
          ["zshrc"] = {
            "zsh",
            "https://avatars.githubusercontent.com/u/70907734?v=4",
          },
          json = { "JSON", "https://avatars.githubusercontent.com/u/70907734?v=4" },
          conf = {
            "configuration file",
            "https://avatars.githubusercontent.com/u/70907734?v=4",
          },
          config = {
            "Configuration file",
            "https://avatars.githubusercontent.com/u/70907734?v=4",
          },
          sql = {
            "SQL",
            "https://raw.githubusercontent.com/leonardssh/vscord/main/assets/icons/sql.png",
          },
          shell = {
            "Shell",
            "https://avatars.githubusercontent.com/u/70907734?v=4",
          },
        },
        auto_update = true,
        neovim_image_text = "NvChad",
        enable_line_number = true,
        -- main_image = "https://static-00.iconduck.com/assets.00/apps-neovim-icon-512x512-w4ecv3uh.png",
        -- main_image = "https://camo.githubusercontent.com/7ef2897c4de6940f119595f50119a887b538d42d4a0b65a15bd0148e2b6bec5b/68747470733a2f2f692e696d6775722e636f6d2f654e62643975442e706e67",
        main_image = "file",
        log_level = nil,
        client_id = "793271441293967371",
        show_time = true,
        workspace_text = function()
          return "afk lul"
        end,
      }
    end,
  },
}

return plugins
