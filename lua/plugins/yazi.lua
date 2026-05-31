return {
  {
    "mikavilpas/yazi.nvim",

    dependencies = {
      "nvim-lua/plenary.nvim",
    },

    keys = {
      {
        "<leader>yy",

        function()
          require("yazi").yazi()
        end,
        
        desc = "Open Yazi",
      },
      
    },

    opts = {
      open_for_directories = true,

      floating_window_scaling_factor = 0.50,

      yazi_floating_window_border = "",

       integrations = {
        grep_in_directory = "live_grep",
      },

    },

    config = function(_, opts)

      require("yazi").setup(opts)



    end,
  },
}