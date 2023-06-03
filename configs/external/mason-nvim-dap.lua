require("mason-nvim-dap").setup {
  ensure_installed = { "debugpy", "js-debug-adapter" },
  handlers = {
    function(config)
      require("mason-nvim-dap").default_setup(config)
    end,
    python = function(config)
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
