return {
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        'nosduco/remote-sshfs.nvim',
    },
    config = function()
    	local telescope = require("telescope")
      local builtin = require("telescope.builtin")
	    vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
	    vim.keymap.set("n", "<C-r>", builtin.git_files, {})
	    vim.keymap.set("n", "<leader>fs", function()
		    builtin.grep_string({ search = vim.fn.input("Grep > ") });
	    end)

      telescope.setup({})
      telescope.load_extension('remote-sshfs')
    end,
}
