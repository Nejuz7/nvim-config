return {

  --------------------------------------------------
  -- MARKDOWN
  --------------------------------------------------

  {
    "MeanderingProgrammer/render-markdown.nvim",

    ft = "markdown",
  },

  --------------------------------------------------
  -- Custom
  --------------------------------------------------

 {
  "Mofiqul/vscode.nvim",

  priority = 1000,

  config = function()

    vim.o.background = "dark"

local theme_file = vim.fn.stdpath("data") .. "/current_theme"

local theme = "vscode"

if vim.fn.filereadable(theme_file) == 1 then
  theme = vim.fn.readfile(theme_file)[1]
end

vim.cmd.colorscheme(theme)

     

      --------------------------------------------------
      -- REMOVE ~
      --------------------------------------------------

      vim.opt.fillchars = {

        eob = " "
      }
    end,
  },
}