local present, presence = pcall(require, "presence")

if not present then
  return
end

presence.setup {
  auto_update = true,
  neovim_image_text = "NvChad",
  enable_line_number = true,
  -- main_image = "https://static-00.iconduck.com/assets.00/apps-neovim-icon-512x512-w4ecv3uh.png",
  -- main_image = "https://camo.githubusercontent.com/7ef2897c4de6940f119595f50119a887b538d42d4a0b65a15bd0148e2b6bec5b/68747470733a2f2f692e696d6775722e636f6d2f654e62643975442e706e67",
  main_image = "file",
  log_level = nil,
  client_id = "793271441293967371",
  show_time = true,
  workspace_text = function()
    return "afk lul"
  end,
  file_assets = {
    c = { "C ", "https://raw.githubusercontent.com/leonardssh/vscord/main/assets/icons/c.png" },
    cpp = {
      "C++",
      "https://raw.githubusercontent.com/leonardssh/vscord/main/assets/icons/cpp.png",
    },
    rust = {
      "Rust",
      "https://raw.githubusercontent.com/leonardssh/vscord/main/assets/icons/rust.png",
    },
    html = {
      "HTML",
      "https://raw.githubusercontent.com/leonardssh/vscord/main/assets/icons/html.png",
    },
    css = {
      "CSS",
      "https://raw.githubusercontent.com/leonardssh/vscord/main/assets/icons/css.png",
    },
    scss = {
      "Sass",
      "https://raw.githubusercontent.com/leonardssh/vscord/main/assets/icons/scss.png",
    },
    ["tailwind.config.js"] = {
      "Tailwind",
      "https://avatars.githubusercontent.com/u/70907734?v=4",
    },
    js = {
      "JavaScript",
      "https://raw.githubusercontent.com/leonardssh/vscord/main/assets/icons/js.png",
    },
    ts = {
      "TypeScript",
      "https://raw.githubusercontent.com/leonardssh/vscord/main/assets/icons/ts.png",
    },
    jsx = {
      "React",
      "https://raw.githubusercontent.com/leonardssh/vscord/main/assets/icons/jsx.png",
    },
    tsx = {
      "React",
      "https://raw.githubusercontent.com/leonardssh/vscord/main/assets/icons/tsx.png",
    },
    npm = {
      "NPM",
      "https://raw.githubusercontent.com/leonardssh/vscord/main/assets/icons/npm.png",
    },
    debugging = {
      "Debugging",
      "https://github.com/leonardssh/vscord/blob/main/assets/icons/debugging.png?raw=true",
    },
    docker = {
      "Docker",
      "https://raw.githubusercontent.com/leonardssh/vscord/main/assets/icons/docker.png",
    },
    cl = { "Common Lisp", "lisp" },
    clj = {
      "Clojure",
      "https://raw.githubusercontent.com/leonardssh/vscord/main/assets/icons/clojure.png",
    },
    cljs = { "ClojureScript", "clojurescript" },
    ex = {
      "Elixir",
      "https://github.com/leonardssh/vscord/blob/main/assets/icons/elixir.png",
    },
    exs = {
      "Elixir",
      "https://raw.githubusercontent.com/leonardssh/vscord/main/assets/icons/elixir.png",
    },
    go = {
      "Go",
      "https://raw.githubusercontent.com/leonardssh/vscord/main/assets/icons/go.png",
    },
    lua = {
      "Lua",
      "https://raw.githubusercontent.com/leonardssh/vscord/main/assets/icons/lua.png",
    },
    py = {
      "Python",
      "https://raw.githubusercontent.com/leonardssh/vscord/main/assets/icons/python.png",
    },
    yaml = { "YAML", "https://avatars.githubusercontent.com/u/70907734?v=4" },
    nix = {
      "Nix",
      "https://raw.githubusercontent.com/leonardssh/vscord/main/assets/icons/nix.png",
    },
    norg = {
      "Neorg",
      "neorg",
    },
    md = {
      "Markdown",
      "https://raw.githubusercontent.com/leonardssh/vscord/main/assets/icons/markdown.png",
    },
    ["zshrc"] = {
      "zsh",
      "https://avatars.githubusercontent.com/u/70907734?v=4",
    },
    json = { "JSON", "https://avatars.githubusercontent.com/u/70907734?v=4" },
    conf = {
      "configuration file",
      "https://avatars.githubusercontent.com/u/70907734?v=4",
    },
    config = {
      "Configuration file",
      "https://avatars.githubusercontent.com/u/70907734?v=4",
    },
    sql = {
      "SQL",
      "https://raw.githubusercontent.com/leonardssh/vscord/main/assets/icons/sql.png",
    },
    shell = {
      "Shell",
      "https://avatars.githubusercontent.com/u/70907734?v=4",
    },
  },
}
