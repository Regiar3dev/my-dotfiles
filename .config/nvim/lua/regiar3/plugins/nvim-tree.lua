return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons"
	},
	config = function()
		local nvimtree = require("nvim-tree")

		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

		nvimtree.setup({
			view = {
        side = right,
				width = 35,
        adaptive_size = false,
        preserve_window_proportions = true,
				relativenumber = true,
			},
      update_focused_file = {
        enable = true,
        update_root = true,
      },
      sync_root_with_cwd = true,
			renderer = {
        			indent_markers = {
          				enable = true,
        			},
              group_empty = true,
	        		icons = {
          				glyphs = {
            					folder = {
              						arrow_closed = "", -- arrow when folder is closed
              						arrow_open = "", -- arrow when folder is open
            					},
          				},
        			},
      			},
      			-- disable window_picker for
      			-- explorer to work well with
      			-- window splits
      			actions = {
      		  		open_file = {
                    resize_window = false,
                    quit_on_open = false,
      		    			window_picker = {
      		      				enable = false,
      		    			},
      		  		},
      			},
      			filters = {
              dotfiles = false,
        			custom = { ".DS_Store" },
      			},
      			git = {
        			ignore = false,
      			},
    		})

    		-- set keymaps
    		local keymap = vim.keymap -- for conciseness

    		keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
    		keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" }) -- toggle file explorer on current file
    		keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
    		keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer
	end,
}
