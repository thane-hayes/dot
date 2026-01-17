return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("nvim-tree").setup({
      view = { width = 30 },
      renderer = { icons = { show = { git = true } } },
      filters = { dotfiles = false },
    })
    vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true, desc = "Toggle file explorer" })
    vim.keymap.set("n", "<leader>nf", ":NvimTreeFindFile<CR>", { silent = true, desc = "Find file in tree" })
  end,
}
