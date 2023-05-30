local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {
  -- Code actions
  b.code_actions.gitsigns,
  -- Completion
  b.completion.luasnip,
  -- Formatters
  b.formatting.astyle,
  b.formatting.alejandra,
  b.formatting.black.with { extra_args = { "--fast" } },
  b.formatting.dart_format,
  b.formatting.deno_fmt,
  b.formatting.prettierd.with {
    filetypes = {
      "html",
      "css",
      "markdown",
      "json",
    },
  },
  b.formatting.stylua,
  b.formatting.yamlfmt,
  b.formatting.zprint,

  -- diagnostics
  b.diagnostics.cpplint,
  b.diagnostics.clj_kondo,
  b.diagnostics.deno_lint,
  b.diagnostics.flake8,
  b.diagnostics.selene,
  b.diagnostics.statix,
  b.diagnostics.stylelint,
  b.diagnostics.shellcheck,
}

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
null_ls.setup {
  debug = true,
  sources = sources,

  on_attach = function(client, bufnr)
    if client.supports_method "textDocument/formatting" then
      vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format { bufnr = bufnr }
        end,
      })
    end
  end,
}
