local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local lspconfig = require "lspconfig"
local util = require "lspconfig/util"
local servers = { "html", "cssls", "tsserver", "clangd", "rust_analyzer", "dartls", "nil_ls", "pyright" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- Enable LSPs here in case adding them to servers doesn't work

-- lspconfig.nil_ls.setup {}
-- lspconfig.denols.setup {}
--
-- require("lspconfig").rust_analyzer.setup {
--   cmd = { "rust-analyzer" },
--   filetypes = { "rust" },
--   root_dir = util.root_pattern("Cargo.toml", "rust-project.json"),
-- }

-- lspconfig.gopls.setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
--   cmd = { "gopls" },
--   filetypes = { "go", "gomod", "gowork", "gotmpl" },
--   root_dir = util.root_pattern("go.work", "go.mod", ".git"),
--   settings = {
--     gopls = {
--       completeUnimported = true,
--       usePlaceholders = true,
--       analyses = {
--         unusedparams = true,
--       },
--     },
--   },
-- }
