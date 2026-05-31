return {

  --------------------------------------------------
  -- TREESITTER
  --------------------------------------------------

  {
    "nvim-treesitter/nvim-treesitter",

    "nvim-tree/nvim-web-devicons",

    "folke/trouble.nvim",

    build = ":TSUpdate",

    lazy = false,

    priority = 1000,

    config = function()

      local ok, configs =
        pcall(require, "nvim-treesitter.configs")

      if not ok then
        return
      end

      configs.setup({

        highlight = {
          enable = true,
        },

        indent = {
          enable = true,
        },

      })
    end,
  },

  --------------------------------------------------
  -- TREESITTER CONTEXT
  --------------------------------------------------

  {
    "nvim-treesitter/nvim-treesitter-context",

    opts = {
      max_lines = 4,
    },
  },
}