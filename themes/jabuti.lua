-- atheme.lua file be like
-- black = usually your theme bg 
-- darker_black = 6% darker than black
-- black2 = 6% lighter than black
--
-- onebg = 10% lighter than black
-- oneb2 = 19% lighter than black
-- oneb3 = 27% lighter than black
--
-- grey = 40% lighter than black (the % here depends so choose the perfect grey!)
-- grey_fg = 10% lighter than grey
-- grey_fg2 = 20% lighter than grey
-- light_grey = 28% lighter than grey
--
-- baby_pink = 15% lighter than red or any babypink color you like!
-- line = 15% lighter than black 
--
-- nord_blue = 13% darker than blue 
-- sun = 8% lighter than yellow
--
-- statusline_bg = 4% lighter than black
-- lightbg = 13% lighter than statusline_bg
-- lightbg2 = 7% lighter than statusline_bg
--
-- folder_bg = blue color
--
local M = {}

M.base_30 = {
  -- some colors
}

M.base_16 = {
  base00 = "#292a37"
  base01 = "#303241"
  base02 = '#2e303e'
  base03 = '#9699b7'
}

M.type = "dark" -- this can be either dark or light

M = require("base46").override_theme(M, "atheme")

return M
