local function setup()
  vim.keymap.set("n", "<Leader>j", ":Neotree filesystem reveal left<CR>")
  vim.keymap.set("n", "<Leader>b", ":Neotree buffers toggle bottom<CR>")
  vim.keymap.set("n", "<Leader>J", ":Neotree filesystem close left<CR>")
  vim.keymap.set("n", "<Leader>q", ":Neotree filesystem close left<CR>:q<CR>")
end

return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  lazy = false,
  config = setup,
}

