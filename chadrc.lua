---Make changes to default lua table of nvchad
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.configs.highlights"

M.ui = {
  -- changed_themes = {
  -- jabuti = {
  --   base_16 = {
  --     -- Jabuti base 16
  --     base00 = "#292A37", -- Background color
  --     base01 = "#252632", -- Background darker
  --     base02 = "#393a4d", -- Grey dark
  --     base03 = "#44465c", -- Grey light
  --     base04 = "#dde1e6",
  --     base05 = "#6be6e6", -- Filename, = sign and pkgs color
  --     base06 = "#ffffff",
  --     base07 = "#08bdba",
  --     base08 = "#ec6a88", -- variable color
  --     base09 = "#efb993", -- true/false color
  --     base0A = "#ec6a88", -- search highlight color
  --     base0B = "#3FDAA4", -- quotes color
  --     base0C = "#ff7eb6", -- Brackets
  --     base0D = "#3FC6DE", -- require color
  --     base0E = "#936FDC", -- local variable color
  --     base0F = "#d9e0ee", -- Brackets, commas on other files
  --   },
  --   base_30 = {
  --     white = "#d9e0ee", -- Active line + filename on topbar color
  --     darker_black = "#252632", -- Which-key plugin background
  --     black = "#292A37", -- Active tab background color
  --     black2 = "#252632", -- Inactive tab background color
  --     one_bg = "#292a37", -- real bg of jabuti
  --     one_bg2 = "#2e303e", -- Table highlight color
  --     one_bg3 = "#303241",
  --     grey = "#393a4d", -- Line number color
  --     grey_fg = "#44465c", -- Comments color
  --     grey_fg2 = "#9699b7",
  --     light_grey = "#44465c",
  --     red = "#ec6a88",
  --     baby_pink = "#ff7eb6", -- Brackets
  --     pink = "#be95ff",
  --     line = "#383747", -- for lines like vertsplit
  --     green = "#3FC6DE",
  --     vibrant_green = "#08bdba",
  --     jabuti_blue = "#78a9ff", -- Vim symbol color in bottom line (if using defaulttheme for statusline)
  --     blue = "#78a9ff", -- Vim symbol + filetype icons color
  --     yellow = "#efb993",
  --     sun = "#efb993",
  --     purple = "#936FDC",
  --     dark_purple = "#936FDC",
  --     teal = "#B5E8E0",
  --     orange = "#efb993",
  --     cyan = "#6be6e6",
  --     statusline_bg = "#292A37", -- Statusline bg
  --     lightbg = "#292a37",
  --     pmenu_bg = "#6be6e6",
  --     folder_bg = "#78a9ff", -- Folder bg
  --     lavender = "#c7d1ff",
  --   },
  -- -       TODO: Colors for git options (add, commit, push).
  -- },

  theme = "jabuti",
  transparency = false,

  statusline = {
    theme = "minimal", -- default/vscode/vscode_colored/minimal
    separator_style = "block", -- default/round/block/arrow
    overriden_modules = nil,
  },

  -- lazyload it when there are 1+ buffers
  tabufline = {
    show_numbers = false,
    enabled = true,
    lazyload = true,
    overriden_modules = nil,
  },

  cmp = {
    icons = true,
    lspkind_text = true,
    style = "default", -- default/flat_light/flat_dark/atom/atom_colored
    border_color = "default", -- only applicable for "default" style, use color names from base30 variables
    selected_item_bg = "colored", -- colored / simple
  },

  hl_override = highlights.override,
  hl_add = highlights.add,

  telescope = {
    style = "bordered",
  }, -- borderless / bordered

  nvdash = {
    load_on_startup = true,
    header = {

      " ██▀███  ▓█████ ▓█████▄▓██   ██▓  █████▒ ",
      "▓██ ▒ ██▒▓█   ▀ ▒██▀ ██▌▒██  ██▒▓██   ▒  ",
      "▓██ ░▄█ ▒▒███   ░██   █▌ ▒██ ██░▒████ ░  ",
      "▒██▀▀█▄  ▒▓█  ▄ ░▓█▄   ▌ ░ ▐██▓░░▓█▒  ░  ",
      "░██▓ ▒██▒░▒████▒░▒████▓  ░ ██▒▓░░▒█░     ",
      "░ ▒▓ ░▒▓░░░ ▒░ ░ ▒▒▓  ▒   ██▒▒▒  ▒ ░     ",
      "  ░▒ ░ ▒░ ░ ░  ░ ░ ▒  ▒ ▓██ ░▒░  ░       ",
      "  ░░   ░    ░    ░ ░  ░ ▒ ▒ ░░   ░ ░     ",
      "   ░        ░  ░   ░    ░ ░              ",
      "                                         ",
      "           git@github.com:Redyf           ",
    },
  },

  lsp = {
    -- show function signatures i.e args as you type
    signature = {
      disabled = false,
      silent = true, -- silences 'no signature help available' message from appearing
    },
  },
}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"
M.settings = "custom.extras"

return M
