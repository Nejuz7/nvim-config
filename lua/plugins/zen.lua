return {

  {
    "folke/zen-mode.nvim",

    cmd = "ZenMode",

    config = function()

      require("zen-mode").setup({

        window = {

          backdrop = 1,

          width = 1,

          height = 1,

          options = {

            number = false,

            relativenumber = false,
          },
        },

        plugins = {

          options = {

            enabled = true,

            ruler = false,

            showcmd = false,
          },

          twilight = {

            enabled = false,
          },
        },
      })

      vim.keymap.set(
        "n",
        "<leader>z",
        "<cmd>ZenMode<CR>",
        {
          desc = "Zen Mode",
        }
      )
    end,
  },
}