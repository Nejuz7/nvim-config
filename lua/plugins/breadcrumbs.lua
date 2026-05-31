return {
  {
    "utilyre/barbecue.nvim",

    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons",
    },

    config = function()

      require("barbecue").setup({
        show_modified = true,
        show_dirname = true,
        show_basename = true,
        show_navic = true,
      })

    end,
  },
}