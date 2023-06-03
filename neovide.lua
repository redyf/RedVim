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
  -- vim.g.neovide_refresh_rate_idle = 5 -- This might not have an effect on every platform (e.g. Wayland).

  -- Neovide Fonts
  -- vim.o.guifont = "Maple Mono NF:h12:b"
  -- vim.o.guifont = "CaskaydiaCove Nerd Font:h12:b"
  vim.o.guifont = "JetBrainsMono Nerd Font:h12:b"
  -- vim.o.guifont = "FiraCode Nerd Font:h12:b"
  -- vim.o.guifont = "SF Mono:h12:b"
  -- vim.o.guifont = "BlexMono Nerd Font Mono:h12:b"
end
