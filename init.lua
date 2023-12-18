require("bitofabyte")
require('nvim-web-devicons').setup({
    default = true,
    override = {
        -- Optional: Set custom icons for file types
        -- Example:
        ['html'] = { icon = '', color = '#6d8086', name = 'html' },
        -- ['css'] = { icon = '', color = '#61afef', name = 'css' },
    },
})


vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
	sort_by = "case_sensitive",
	view = {
		width = 30,
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
	},
})
