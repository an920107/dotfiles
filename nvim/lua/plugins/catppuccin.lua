local function setup()
  require("catppuccin").setup({
    flavour = "mocha",
    transparent_background = true,
    custom_highlights = function(colors)
      return {
        CursorLine = { bg = "#282828" },
      }
    end,
  })
  vim.cmd("colorscheme catppuccin")
end

return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = setup,
}

