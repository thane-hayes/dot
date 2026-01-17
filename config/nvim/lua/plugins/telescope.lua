return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  config = function()
    local telescope = require("telescope")
    telescope.setup({
      defaults = {
        file_ignore_patterns = { "node_modules", ".git/" },
      },
      pickers = {
        find_files = { sorting_strategy = "ascending" },
      },
    })
    telescope.load_extension("fzf")

    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>f", builtin.find_files, { desc = "Find files" })
    vim.keymap.set("n", "<leader>g", builtin.live_grep, { desc = "Grep" })
    vim.keymap.set("n", "<leader>b", builtin.buffers, { desc = "Buffers" })
    vim.keymap.set("n", "<leader>r", builtin.oldfiles, { desc = "Recent files" })
    vim.keymap.set("n", "<leader>v", builtin.registers, { desc = "Registers" })
  end,
}
