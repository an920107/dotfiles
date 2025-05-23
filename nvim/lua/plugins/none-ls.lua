local function setup()
  local null_ls = require("null-ls")
  null_ls.setup({
    sources = {
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.prettier,
      null_ls.builtins.formatting.black,
      null_ls.builtins.formatting.isort,
      null_ls.builtins.completion.spell,
    },
  })
end

return {
  "nvimtools/none-ls.nvim",
  config = setup,
}
