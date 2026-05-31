return {
  {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
      cmd = {
    "ObsidianQuickSwitch",
    "ObsidianNew",
    "ObsidianToday",
    "ObsidianSearch",
  },
    ft = "markdown",

    dependencies = {
      "nvim-lua/plenary.nvim",
    },

    opts = {
      workspaces = {
        {
          name = "vault",
          path = "E:/Projects/Observe",
        },
      },

      completion = {
        nvim_cmp = true,
      },

      notes_subdir = "notes",

      daily_notes = {
        folder = "daily",
      },

      ui = {
        enable = true,
      },
    },
  },
}