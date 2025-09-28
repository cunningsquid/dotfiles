return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "master",
		lazy = false,
		build = ":TSUpdate",
		config = function()
			auto_install = true
			highlight = { enable = true }
			indent = { enable = true }
		end,
	},
}
