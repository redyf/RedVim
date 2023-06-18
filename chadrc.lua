---Make changes to default lua table of nvchad
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.configs.highlights"
-- require("bufferline").setup {
--   enabled = true;
--   preselect = 'enabled';
--   options = {},
-- }

M.ui = {
  changed_themes = {
    oxocarbon = {
      base_16 = {
        -- Jabuti base 16
        base00 = "#292A37", -- Background color
        base01 = "#252632", -- Background darker
        base02 = "#393a4d", -- Grey dark
        base03 = "#44465c", -- Grey light
        base04 = "#dde1e6",
        base05 = "#6be6e6", -- Filename, = sign and pkgs color
        base06 = "#ffffff",
        base07 = "#08bdba",
        base08 = "#ec6a88", -- variable color
        base09 = "#efb993", -- true/false color
        base0A = "#ec6a88", -- search highlight color
        base0B = "#3FDAA4", -- quotes color
        base0C = "#ff7eb6", -- Brackets
        base0D = "#3FC6DE", -- require color
        base0E = "#936FDC", -- local variable color
        base0F = "#d9e0ee", -- Brackets, commas on other files
      },
      base_30 = {
        black = "#292A37", -- Background color
        black2 = "#252632", -- Background darker
        one_bg = "#292a37", -- real bg of jabuti
        one_bg2 = "#2e303e",
        one_bg3 = "#303241",
        green = "#3FC6DE",
        vibrant_green = "#08bdba",
        red = "#ec6a88",
        cyan = "#6be6e6",
        pmenu_bg = "#6be6e6",
        blue = "#78a9ff", -- Vim symbol + filetype icons color
        nord_blue = "#78a9ff", -- Vim symbol color in bottom line (if using default)
        folder_bg = "#78a9ff", -- Folder bg
        statusline_bg = "#292A37", -- Statusline bg
        purple = "#936FDC",
        dark_purple = "#936FDC",
        baby_pink = "#ff7eb6", -- Brackets
        grey_fg = "#9699b7", -- Comments
        grey_fg2 = "#9699b7",
        light_grey = "#44465c",
        white = "#d9e0ee",
      },
      --   oxocarbon base 30 for reference
      --   white = "#f2f4f8",
      --   darker_black = "#0f0f0f",
      --   black = "#161616", --  nvim bg
      --   black2 = "#202020",
      --   one_bg = "#2a2a2a", -- real bg of onedark
      --   one_bg2 = "#343434",
      --   one_bg3 = "#3c3c3c",
      --   grey = "#464646",
      --   grey_fg = "#4c4c4c",
      --   grey_fg2 = "#555555",
      --   light_grey = "#5f5f5f",
      --   red = "#ee5396",
      --   baby_pink = "#ff7eb6",
      --   pink = "#be95ff",
      --   line = "#383747", -- for lines like vertsplit
      --   green = "#42be65",
      --   vibrant_green = "#08bdba",
      --   nord_blue = "#78a9ff",
      --   blue = "#33b1ff",
      --   yellow = "#FAE3B0",
      --   sun = "#ffe9b6",
      --   purple = "#d0a9e5",
      --   dark_purple = "#c7a0dc",
      --   teal = "#B5E8E0",
      --   orange = "#F8BD96",
      --   cyan = "#3ddbd9",
      --   statusline_bg = "#202020",
      --   lightbg = "#2a2a2a",
      --   pmenu_bg = "#3ddbd9",
      --   folder_bg = "#78a9ff",
      --   lavender = "#c7d1ff",

      --  jabuti
      --  local bg             = '#292a37'
      --  local bg_dark        = '#292a37'
      --  local bg_darker      = '#252632'
      --  local bg_light       = '#2e303e'
      --  local bg_lighter     = '#303241'
      --  local light_grey     = '#44465c'
      --  local grey           = '#9699b7'
      --  local grey_dark      = '#393a4d'
      --  local red            = '#ec6a88'
      --  local heavy_red      = '#e95678'
      --  local green          = '#3fdaa4'
      --  local blue           = '#3fc6de'
      --  local blue_light     = '#26bbd9'
      --  local yellow         = '#efb993'
      --  local orange         = '#efb993'
      --  local magenta        = '#b072d1'
      --  local pink           = '#b771dc'
      --  local cyan           = '#6be6e6'
      --  local cyan_dark      = '#59e3e3'
      --  local fg             = '#d9e0ee'
      --  local fg_light       = '#d9e0ee'
      --  local fg_dark        = '#d9e0ee'
      --  local hollow         = '#393a4d'
      --  local hollow_lighter = '#393a4d'
      --  local white          = '#d9e0ee'
      --  local comment        = '#9699b7'
    },
  },
  -- Oxocarbon base 16 for reference
  --   M.base_16 = {
  --   base00 = "#161616",
  --   base01 = "#262626",
  --   base02 = "#393939",
  --   base03 = "#525252",
  --   base04 = "#dde1e6",
  --   base05 = "#f2f4f8",
  --   base06 = "#ffffff",
  --   base07 = "#08bdba",
  --   base08 = "#3ddbd9",
  --   base09 = "#78a9ff",
  --   base0A = "#ee5396",
  --   base0B = "#33b1ff",
  --   base0C = "#ff7eb6",
  --   base0D = "#42be65",
  --   base0E = "#be95ff",
  --   base0F = "#82cfff",
  -- }
  theme = "oxocarbon",
  transparency = false,

  statusline = {
    theme = "vscode_colored", -- default/vscode/vscode_colored/minimal
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
