return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  event = { "BufReadPost", "BufNewFile" },
  config = function()
  	require("nvim-treesitter").setup({
		ensure_installed = {
			"javascript",
        		"typescript",
        		"c",
        		"python",
        		"lua",
        		"c_sharp",
        		"markdown",
        		"sql",
        		"terraform",
        		"html",
        		"prisma",
        		"json",
        		"haskell",
      		},

      		highlight = {
        		enable = true,
			additional_vim_regex_highlighting = false,
      		},

      		indent = {
        		enable = false,
      		},

      		auto_install = true,
    	})

    	-- Optional: treesitter-based folding
    	vim.opt.foldmethod = "expr"
    	vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
end,
}
