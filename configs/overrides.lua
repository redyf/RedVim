local M = {}

M.mason = {
  ensure_installed = {
    "html-lsp",
    "css-lsp",
    "typescript-language-server",
    "prettierd",
    "tailwindcss-language-server",
    "pyright",
    "lua-language-server",
    "nil_ls",
    "clangd",
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
    "toml",
    "yaml",
    "yuck",
  },
}

return M
