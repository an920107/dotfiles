local function setup()
  local configs = require("nvim-treesitter.configs")
  configs.setup({
    ensure_installed = {
      "bash",
      "c",
      "cpp",
      "dart",
      "dockerfile",
      "gitignore",
      "go",
      "html",
      "java",
      "javascript",
      "json",
      "kotlin",
      "lua",
      "python",
      "rust",
      "sql",
      "toml",
      "tsx",
      "typescript",
      "xml",
      "yaml",
    },
    sync_install = true,
    highlight = { enable = true },
    indent = { enable = true },
  })
end

return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = setup,
}

