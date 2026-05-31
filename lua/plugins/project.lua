return {

  {
    "ahmedkhalf/project.nvim",

    config = function()

      require("project_nvim").setup({

        manual_mode = false,

        detection_methods = {
          "pattern",
        },

        patterns = {
          ".git",
          "Makefile",
          "package.json",
          "CMakeLists.txt",
        },

        show_hidden = true,

        silent_chdir = true,
      })

      vim.keymap.set(
        "n",
        "<leader>fp",
        function()

          require("fzf-lua").files({
            cwd = "E:/Projects/Dev",
            prompt = "Projects❯ ",
          })

        end,

        {
          desc = "Projects",
        }
      )
    end,
  },
}
