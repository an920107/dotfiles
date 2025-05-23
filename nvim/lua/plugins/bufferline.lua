local function setup()
	vim.opt.termguicolors = true
	require("bufferline").setup({})
end

return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = setup,
}
