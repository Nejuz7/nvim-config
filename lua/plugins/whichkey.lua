return {
  "folke/which-key.nvim",

  event = "VeryLazy",


opts = {
		preset = "helix",
		plugins = {
			marks = false,
			operators = false,
			windows = false,
			nav = false,
		},
		win = {
			padding = { 1, 1 },
			title = false,
			border = "none",
		},
		icons = {
			breadcrumb = ">>=",
			separator = ":: ",
			group = " ++ ",
			keys = {},
		},
	},

 config = function()
    require("which-key").setup()
  end

}