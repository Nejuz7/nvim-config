return {

  {
    "rmagatti/auto-session",

    config = function()

      require("auto-session").setup({

        auto_save_enabled = true,

        auto_restore_enabled = false,

        auto_session_suppress_dirs = {

          "~/",

          "~/Downloads",

          "/",
        },

        session_lens = {

          load_on_setup = true,
        },

        bypass_session_save_file_types = {
            "alpha",
            "dashboard",
            "lazy",
            "mason",
        },
      })

      --------------------------------------------------
      -- KEYMAPS
      --------------------------------------------------

      vim.keymap.set(
        "n",
        "<leader>wr",
        "<cmd>AutoSession restore<CR>",
        {
          desc = "Restore Session",
        }
      )

      vim.keymap.set(
        "n",
        "<leader>ws",
        "<cmd>AutoSession save<CR>",
        {
          desc = "Save Session",
        }
      )
    end,
  },
}