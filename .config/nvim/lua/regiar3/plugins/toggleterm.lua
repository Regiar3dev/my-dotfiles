return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 15,
      open_mapping = [[<leader>``]],
      direction = "horizontal",
      shade_terminals = false,
    })
  end,
}
