-- OS detection
local is_mac = vim.loop.os_uname().sysname == "Darwin"

return {
  "rmagatti/auto-session",
  enabled = is_mac,
  lazy = false,
  opts = {
    suppressed_dirs = { "~/", "~/Downloads", "/" },
  },
  keys = {
    { "<leader>ss", ":SessionSearch<CR>", desc = "Session search" },
  },
}
