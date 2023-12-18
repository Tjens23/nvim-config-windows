require("nvim-treesitter.configs").setup {
  modules = {
    "nvim-treesitter-lua",
    "nvim-treesitter-python",
    "nvim-treesitter-rust",
    "nvim-treesitter-tsx",
    "nvim-treesitter-javascript",
    "nvim-treesitter-typescript",
    "nvim-treesitter-java",
    "nvim-treesitter-vim",
    "nvim-treesitter-vimdoc",
    "nvim-treesitter-go",
  },
  ignore_install = { "lua" },
  ensure_installed = { "javascript", "typescript", "rust", "tsx", "python", "java", "vim", "vimdoc", "go"},
  sync_install = false,
  auto_install = true,
}



-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })
