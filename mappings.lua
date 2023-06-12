local M = {}

-- Your custom mappings
M.abc = {
  n = {
    -- ["<C-n>"] = {"<cmd> Telescope <CR>", "Telescope"},
    -- ["<C-s>"] = {":Telescope Files <CR>", "Telescope Files"},
    ["<leader>ww"] = { "<cmd> w <CR>", "save file" },
    ["<leader>q"] = { "<cmd> q <CR>", "close file" },
  },

  i = {
    ["jk"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
  },
}

-- M.Lazygit = {
--   n = {
--     ["<leader>gg"] = {
--       "<cmd>LazyGit<CR>",
--       "LazyGit",
--     },
--   },
-- }

M.Neogit = {
  n = {
    ["<leader>gg"] = {
      "<cmd>Neogit<CR>",
      "Neogit",
    },
  },
}

-- Debugger mappings
M.dap = {
  n = {
    ["<leader>db"] = {
      function()
        require("dap").step_back()
      end,
      "Step back",
    },
    ["<leader>dc"] = {
      function()
        require("dap").continue()
      end,
      "Continue",
    },
    ["<leader>dC"] = {
      function()
        require("dap").run_to_cursor()
      end,
      "Run to cursor",
    },
    ["<leader>dd"] = {
      function()
        require("dap").disconnect()
      end,
      "Disconnect",
    },
    ["<leader>dg"] = {
      function()
        require("dap").session()
      end,
      "Get session",
    },
    ["<leader>di"] = {
      function()
        require("dap").step_into()
      end,
      "Step into",
    },
    ["<leader>do"] = {
      function()
        require("dap").step_over()
      end,
      "Step over",
    },
    ["<leader>dp"] = {
      function()
        require("dap").pause.toggle()
      end,
      "Pause",
    },
    ["<leader>dq"] = {
      function()
        require("dap").close()
      end,
      "Quit",
    },
    ["<leader>dr"] = {
      function()
        require("dap").repl.toggle()
      end,
      "Toggle Repl",
    },
    ["<leader>ds"] = {
      function()
        require("dap").continue()
      end,
      "Start",
    },
    ["<leader>dt"] = {
      function()
        require("dap").toggle_breakpoint()
      end,
      "Toggle Breakpoint",
    },
    ["<leader>dU"] = {
      function()
        require("dapui").toggle()
      end,
      "Toggle UI",
    },
    ["<leader>dS"] = {
      function()
        local widgets = require "dap.ui.widgets"
        local sidebar = widgets.sidebar(widgets.scopes)
        sidebar.open()
      end,
      "Open debugging sidebar",
    },
    ["<leader>du"] = {
      function()
        require("dap").step_out()
      end,
      "Step out",
    },
    ["gl"] = {
      function()
        vim.diagnostic.open_float { border = "rounded" }
      end,
      "floating diagnostic",
    },
  },
}

M.nvterm = {
  plugin = true,

  t = {
    -- toggle in terminal mode
    ["<C-t>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    },

    ["<A-h>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "toggle horizontal term",
    },

    ["<A-v>"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "toggle vertical term",
    },
  },

  n = {
    -- toggle in normal mode
    ["<C-t>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    },

    ["<A-h>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "toggle horizontal term",
    },

    ["<A-v>"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "toggle vertical term",
    },

    -- new
    ["<leader>h"] = {
      function()
        require("nvterm.terminal").new "horizontal"
      end,
      "new horizontal term",
    },

    ["<leader>v"] = {
      function()
        require("nvterm.terminal").new "vertical"
      end,
      "new vertical term",
    },
  },
}

-- Manually load your mappings
-- M.some_plugin_name = {
--   plugin = true, -- Important
--
--   n = {
--      ["<C-n>"] = {"<cmd> Telescope <CR>", "Telescope"}
--   }
-- }
--
-- -- Now to load it
-- require("core.utils").load_mappings("someplugin")
--
-- In order to disable a default keymap, use
-- M.disabled = {
--   n = {
--       ["<leader>h"] = "",
--       ["<C-a>"] = ""
--   }
-- }

return M
