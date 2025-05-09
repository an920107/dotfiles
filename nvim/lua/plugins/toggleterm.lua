local function setup()
  require("toggleterm").setup({})

  vim.keymap.set("n", "<Leader>t", ":ToggleTerm<CR>")
  vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
end

return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = setup,

  -- or
  -- {'akinsho/toggleterm.nvim', version = "*", opts = {--[[ things you want to change go here]]}}
}
