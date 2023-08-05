if vim.g.neovide then
  -- Neovide options
  vim.g.neovide_fullscreen = false
  vim.g.neovide_hide_mouse_when_typing = false
  vim.g.neovide_refresh_rate = 165
  vim.g.neovide_cursor_vfx_mode = "ripple"
  vim.g.neovide_cursor_animate_command_line = true
  vim.g.neovide_cursor_animate_in_insert_mode = true
  vim.g.neovide_cursor_vfx_particle_lifetime = 5.0
  vim.g.neovide_cursor_vfx_particle_density = 14.0
  vim.g.neovide_cursor_vfx_particle_speed = 12.0
  vim.g.neovide_transparency = 0.8
  -- vim.g.neovide_refresh_rate_idle = 5 -- This might not have an effect on every platform (e.g. Wayland).

  -- Neovide Fonts
  vim.o.guifont = "Liga SFMono Nerd Font:h15:b"
  -- vim.o.guifont = "JetBrainsMono Nerd Font:h13:b"
  -- vim.o.guifont = "RyanMono Nerd Font:h16:b"
  -- vim.o.guifont = "Agave Nerd Font:h17:b"
  -- vim.o.guifont = "CaskaydiaCove Nerd Font:h14:b"
  -- vim.o.guifont = "BlexMono Nerd Font Mono:h13:b"
  -- vim.o.guifont = "FiraCode Nerd Font:h14:b"
  -- vim.o.guifont = "Maple Mono NF:h14:b"
end
