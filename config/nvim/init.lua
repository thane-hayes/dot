-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({ "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- Basic options
vim.opt.number = true
vim.opt.signcolumn = "yes"
vim.opt.termguicolors = true
vim.opt.shell = "/opt/homebrew/bin/bash"
vim.opt.autoread = true
vim.opt.scrollback = 100000
vim.opt.clipboard = "unnamedplus"
vim.api.nvim_create_autocmd({"FocusGained", "BufEnter"}, { command = "checktime" })
vim.api.nvim_create_autocmd("TermOpen", { command = "setlocal number" })

-- Keymaps
vim.g.mapleader = " "
vim.keymap.set('i', 'jj', '<Esc>')
vim.keymap.set('t', 'jj', [[<C-\><C-n>]])

-- Window navigation
vim.keymap.set('n', '<leader>h', '<C-w>h')
vim.keymap.set('n', '<leader>j', '<C-w>j')
vim.keymap.set('n', '<leader>k', '<C-w>k')
vim.keymap.set('n', '<leader>l', '<C-w>l')

-- Page navigation
vim.keymap.set('n', '<leader>u', '<C-u>')
vim.keymap.set('n', '<leader>d', '<C-d>')

-- Session search
vim.keymap.set('n', '<leader>ss', ':SessionSearch<CR>')

-- LSP keymaps
vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration)
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation)
vim.keymap.set('n', 'K', vim.lsp.buf.hover)
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename)
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action)
vim.keymap.set('n', 'gr', vim.lsp.buf.references)

-- Plugins
require("lazy").setup({
  -- Session management
  { "rmagatti/auto-session",
    lazy = false,
    opts = { suppressed_dirs = { "~/", "~/Downloads", "/" } }
  },

  -- Colorscheme
  { "folke/tokyonight.nvim", priority = 1000, config = function()
    vim.cmd[[colorscheme tokyonight]]
  end },

  -- File browser
  { "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup()
      vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>')
      vim.keymap.set('n', '<leader>f', ':NvimTreeFindFile<CR>')
    end
  },

  -- Git signs in gutter
  { "lewis6991/gitsigns.nvim",
    config = function() require("gitsigns").setup() end
  },

  -- Git commands
  { "tpope/vim-fugitive" },

  -- Fuzzy finder
  { "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup({
        pickers = { find_files = { sorting_strategy = "ascending" } },
      })
      local builtin = require("telescope.builtin")
      vim.keymap.set('n', '<leader>p', builtin.find_files)
      vim.keymap.set('n', '<leader>g', builtin.live_grep)
      vim.keymap.set('n', '<leader>b', builtin.buffers)
      vim.keymap.set('n', '<leader>r', builtin.oldfiles)
      vim.keymap.set('n', '<leader>v', builtin.registers)
    end
  },

  -- Mason (auto-install LSP servers)
  { "williamboman/mason.nvim", config = function() require("mason").setup() end },
  { "williamboman/mason-lspconfig.nvim",
    dependencies = { "mason.nvim", "neovim/nvim-lspconfig" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "ts_ls", "pyright", "jdtls", "rust_analyzer" },
        handlers = {
          function(server) require("lspconfig")[server].setup{} end,
        },
      })
    end
  },
})
