require "custom.configs.external.neovide"
require "custom.extras"

local opt = vim.opt
local g = vim.g

-- Vim options
opt.timeoutlen = 10 -- Which-key timeout in ms
opt.backup = false
opt.swapfile = false
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"
opt.shiftwidth = 2

local create_cmd = vim.api.nvim_create_user_command

create_cmd("AutosaveToggle", function()
  vim.api.nvim_echo({}, false, {})
  vim.g.autosave = not vim.g.autosave

  if vim.g.autosave then
    vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
      group = vim.api.nvim_create_augroup("Autosave", {}),
      callback = function()
        -- save files only
        if vim.api.nvim_buf_get_name(0) and #vim.bo.buftype == 0 then
          vim.cmd "silent w"

          vim.api.nvim_echo(
            { { "󰄳", "LazyProgressDone" }, { " file autosaved at " .. os.date "%I:%M %p" } },
            false,
            {}
          )

          -- clear msg after 500ms
          vim.defer_fn(function()
            vim.api.nvim_echo({}, false, {})
          end, 800)
        end
      end,
    })
  else
    vim.api.nvim_del_augroup_by_name "Autosave"
  end
end, {})
