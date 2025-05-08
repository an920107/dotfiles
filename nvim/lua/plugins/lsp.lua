local function mason_setup()
	require("mason-lspconfig").setup({
		automatic_enable = true,
		ensure_installed = {
			"clangd",
			"lua_ls",
      "pyright",
			"rust_analyzer",
			"ts_ls",
		},
	})
end

local function nvim_lsp_setup()
  vim.lsp.enable("clangd")
  vim.lsp.enable("dartls")
  vim.lsp.enable("lua_ls")
  vim.lsp.enable("pyright")
  vim.lsp.enable("rust_analyzer")
  vim.lsp.enable("ts_ls")

	vim.keymap.set("n", "<Leader><Enter>", vim.lsp.buf.hover, {})
	vim.keymap.set("n", "<Leader>r", vim.lsp.buf.rename, {})
	vim.keymap.set("n", "<Leader>i", vim.lsp.buf.format, {})
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
	vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
	vim.keymap.set({ "n", "v", "i" }, "<C-.>", vim.lsp.buf.code_action, {})
end

return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = mason_setup,
	},
	{
		"neovim/nvim-lspconfig",
		config = nvim_lsp_setup,
	},
}
