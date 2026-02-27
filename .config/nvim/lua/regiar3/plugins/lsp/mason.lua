return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      "ts_ls",
      "lua_ls",
      "html",
      "cssls",
      "tailwindcss",
      "prismals",
      "pyright",
      "eslint",
      "jdtls",
    },
  },
  dependencies = {
    {
	    "mason-org/mason.nvim",
	    opts = {
		    ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
          },
        },
	    },
    },
    "neovim/nvim-lspconfig",
  }
}
