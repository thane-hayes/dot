-- Disable treesitter for help files (vimdoc parser issue in 0.12-dev)
vim.g.ts_highlight_help = false
vim.api.nvim_create_autocmd("FileType", {
  pattern = "help",
  callback = function(args)
    vim.treesitter.stop(args.buf)
  end,
})

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath,
  })
end
vim.opt.runtimepath:prepend(lazypath)

-- Leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Core options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = "a"
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.wrap = false
vim.opt.breakindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 250
vim.opt.termguicolors = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.cursorline = true
vim.opt.scrolloff = 8
vim.opt.clipboard = "unnamedplus"

-- Load plugins
require("lazy").setup("plugins")

-- Pane navigation
vim.keymap.set("n", "<leader>h", "<C-w>h", { desc = "Move to left pane" })
vim.keymap.set("n", "<leader>j", "<C-w>j", { desc = "Move to lower pane" })
vim.keymap.set("n", "<leader>k", "<C-w>k", { desc = "Move to upper pane" })
vim.keymap.set("n", "<leader>l", "<C-w>l", { desc = "Move to right pane" })
vim.keymap.set("n", "<leader>m", "<C-w>w", { desc = "Cycle through panes" })

-- Exit insert mode with jj
vim.keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode" })

-- Exit terminal mode with Esc or jj
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
vim.keymap.set("t", "jj", "<C-\\><C-n>", { desc = "Exit terminal mode" })
