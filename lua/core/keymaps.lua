

local map = vim.keymap.set

--------------------------------------------------
-- SAVE / QUIT
--------------------------------------------------

vim.keymap.set("n", "<leader>w", "<cmd>w<CR>")

vim.keymap.set("n", "<leader>q", function()

  local buffers =
      vim.fn.getbufinfo({ buflisted = 1 })

  if #buffers <= 1 then

    vim.cmd("enew")
    

  else

    vim.cmd("bd")
  end
end, {
  desc = "Close buffer or open dashboard"
})

vim.opt.backspace = "indent,eol,start"

--------------------------------------------------
-- WINDOW NAVIGATION
--------------------------------------------------

vim.keymap.set( "n", "<leader>tn", "<cmd>tabnew<CR>", { desc = "New Tab", } )

vim.keymap.set("n", "<C-f>", "/")

vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")


-- Easy window navigation from terminal
vim.keymap.set("t", "<C-h>", [[<C-\><C-n><C-w>h]])
vim.keymap.set("t", "<C-j>", [[<C-\><C-n><C-w>j]])
vim.keymap.set("t", "<C-k>", [[<C-\><C-n><C-w>k]])
vim.keymap.set("t", "<C-l>", [[<C-\><C-n><C-w>l]])


--------------------------------------------------
-- Split
--------------------------------------------------

vim.keymap.set("n", "<leader>tv", "<C-w>v", {
  desc = "Vertical Split",
})


vim.keymap.set("n", "<leader>th", "<C-w>s", {
  desc = "Horizontal Split",
})


--------------------------------------------------
-- RESIZE
--------------------------------------------------

vim.keymap.set("n", "=", "<cmd>vertical resize +5<CR>")
vim.keymap.set("n", "-", "<cmd>vertical resize -5<CR>")
vim.keymap.set("n", "+", "<cmd>horizontal resize +5<CR>")

--------------------------------------------------
-- CENTERED SCROLL
--------------------------------------------------

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")







--Obsidian

vim.keymap.set("n", "<leader>oo", ":ObsidianQuickSwitch<CR>")
vim.keymap.set("n", "<leader>on", ":ObsidianNew<CR>")
vim.keymap.set("n", "<leader>ot", ":ObsidianToday<CR>")
vim.keymap.set("n", "<leader>os", ":ObsidianSearch<CR>")







     --------------------------------------------------
      -- THEME PICKER
      --------------------------------------------------

        map("n", "<C-n>", function()

          local fzf = require("fzf-lua")

          fzf.colorschemes({

            previewer = false,

            actions = {["default"] = function(selected)

                  local theme = selected[1]

                  vim.cmd.colorscheme(theme)

                  local theme_file =
                    vim.fn.stdpath("data") .. "/current_theme"

                  vim.fn.writefile({ theme }, theme_file)

                  package.loaded["themes.custom"] = nil
                  require("themes.custom").setup()

                end


                    --[[

                    ["default"] = function(selected)

                      local theme = selected[1]

                      vim.cmd.colorscheme(theme)

                      --------------------------------------------------
                      -- RELOAD YOUR CUSTOM UI
                      --------------------------------------------------

                      package.loaded["themes.custom"] = nil

                      require("themes.custom").setup()

                    end,
                    --]]
            },
          })

        end, {
          desc = "Syntax Theme Picker",
        })

      
                vim.keymap.set(

                  "n",
                  "<leader>fe",
                  function()

                    Snacks.explorer.open()

                  end,
                  {
                    desc = "Explorer",
                  }

                )


                vim.keymap.set("n", "<leader>tf", function()

                  require("core.floatterm").toggle()

                end, {
                  desc = "Floating Terminal",
                })


                






                
                 





  
   




