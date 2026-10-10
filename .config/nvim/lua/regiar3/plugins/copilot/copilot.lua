return { 
  {
	  "github/copilot.vim",
    event = "InsertEnter",
    config = function()
      vim.g.copilot_no_tab_map = true
      vim.api.nvim_set_keymap("i", "<S-Tab>", 'copilot#Accept("\\<S-Tab>")', { silent = true, expr = true })
    end
  }
}

