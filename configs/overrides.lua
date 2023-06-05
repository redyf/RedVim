local M = {}

M.mason = {
  ensure_installed = {
    "html-lsp",
    "css-lsp",
    "typescript-language-server",
    "deno",
    "prettierd",
    "tailwindcss-language-server",
    "pyright",
    "lua-language-server",
    "nil_ls",
    "stylua",
  },
}

M.treesitter = {
  ensure_installed = {
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "bash",
    "c",
    "cpp",
    "python",
    "dart",
    "nix",
    "markdown",
    "yaml",
    "toml",
  },
}

return M
