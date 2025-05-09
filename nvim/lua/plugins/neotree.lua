local function setup()
  require("neo-tree").setup({
    close_if_last_window = true,
    -- popup_border_style = "winborder",
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
      },
      hide_by_name = {
        ".git",
        "node_modules",
      },
    },
  })

  vim.keymap.set("n", "<Leader>j", ":Neotree filesystem reveal left<CR>")
  vim.keymap.set("n", "<Leader>b", ":Neotree buffers toggle bottom<CR>")
  vim.keymap.set("n", "<Leader>J", ":Neotree filesystem close left<CR>")
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

