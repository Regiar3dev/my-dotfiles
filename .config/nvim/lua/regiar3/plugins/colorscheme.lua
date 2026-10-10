function ColorMyScheme()
	vim.cmd([[colorscheme nightfly]])
	vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
end

return {
	"bluz71/vim-nightfly-guicolors",
	priority = 1000,
	config = function()
		vim.cmd([[colorscheme nightfly]])
		vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
	end,
}
