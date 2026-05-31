--------------------------------------------------
-- FZF-LUA
--------------------------------------------------

return {

  {
    "ibhagwan/fzf-lua",

    dependencies = {

      "nvim-tree/nvim-web-devicons",
    },

    config = function()

      local fzf =
          require("fzf-lua")

      --------------------------------------------------
      -- SETUP
      --------------------------------------------------

      fzf.setup({

--------------------------------------------------
-- GLOBAL UI
--------------------------------------------------

winopts = {

  --------------------------------------------------
  -- MAIN WINDOW
  --------------------------------------------------

      width = 0.75,
      height = 0.80,

      row = 0.50,
      col = 0.50,

      border = "rounded",

      backdrop = false,

      fullscreen = false,

      title_flags = false,

      preview = {

    --------------------------------------------------
    -- PREVIEW WINDOW
    --------------------------------------------------

      border = "rounded",

      layout = "horizontal",

      horizontal = "right:50%",

      hidden = false,

      scrollbar = false,

      title = true,

      wrap = false,
    },
},

--------------------------------------------------
-- FZF WINDOW
--------------------------------------------------

fzf_opts = {

  ["--layout"] = "reverse",

  ["--info"] = "inline-right",

  ["--margin"] = "0",

  ["--padding"] = "0,1",

  ["--pointer"] = "▶",

  ["--marker"] = "✓",

  ["--separator"] = " ",

  ["--scrollbar"] = " ",

    ["--color"] =
      "bg:#202020," .. --background
      "bg+:#343234," .. --background for the current selection
      "fg:#b6b6b6," .. --foreground
      "fg+:#a5a5a5," .. --foreground for the current selection
      "hl:#89b4fa," .. --highlighted text
      "hl+:#1ff6d0," .. --highlighted text for the current selection
      "info:#89b4fa," .. --info text
      "prompt:#89b4fa," .. --prompt text
      "input-bg:#202020," ..
      "input-border:#2b2f36," .. 
      "label:#ff82ab," ..   
      "pointer:#f38ba8," ..
      "marker:#a6e3a1," ..
      "spinner:#55687a," ..
      "header:#55687a",

  
},

--------------------------------------------------
-- HIGHLIGHTS
--------------------------------------------------

hls = {

  --------------------------------------------------
  -- MAIN
  --------------------------------------------------

  normal = "FzfLuaNormal",
  border = "FzfLuaBorder",
  marker = "FzfLuaMarker",

  --------------------------------------------------
  -- PREVIEW
  --------------------------------------------------

  preview_normal = "FzfLuaPreviewNormal",
  preview_border = "FzfLuaPreviewBorder",

  --------------------------------------------------
  -- CURSOR
  --------------------------------------------------

  cursor =  "NONE",
  cursorline = "FzfLuaCursorLine",

  --------------------------------------------------
  -- SEARCH
  --------------------------------------------------

  search = "IncSearch",

  --------------------------------------------------
  -- TITLES
  --------------------------------------------------

  title = "FzfLuaTitle",
},

--------------------------------------------------
-- FILES
--------------------------------------------------

files = {

  prompt = "   Find Files ",

  cwd_prompt = false,

  cwd_header = false,

  git_icons = true,

  file_icons = true,

  color_icons = true,

  fd_opts = [[
    --type f
    --hidden
    --follow
    --exclude .git
  ]],

  previewers = {
    builtin = {
      extensions = {
        png = "none",
        jpg = "none",
        jpeg = "none",
        webp = "none",
      },
    },
  },

  winopts = {

    width = 0.80,
    height = 0.85,

    row = 0.50,
    col = 0.50,

    border = "rounded",

    title = " Find Files ",

    title_pos = "center",

    preview = {

      layout = "horizontal",

      horizontal = "right:45%",

      border = "rounded",

      hidden = false,

      title = true,
    },
  },
},



--------------------------------------------------
-- BUFFERS
--------------------------------------------------

buffers = {

  prompt = "   Buffers ",

  previewer = true,

  winopts = {

    preview = {

      layout = "horizontal",

      horizontal = "right:55%",
    },

    title = " Buffers ",

    title_pos = "center",
  },
},

--------------------------------------------------
-- LIVE GREP
--------------------------------------------------

grep = {

  prompt = "   Live Grep ",

  previewer = true,

  winopts = {

    preview = {

      layout = "horizontal",

      horizontal = "right:55%",
    },

    title = " Live Grep ",

    title_pos = "center",
  },
},

--------------------------------------------------
-- OLD FILES
--------------------------------------------------

oldfiles = {

  prompt = "   Recent Files ",

  previewer = true,

  winopts = {

    preview = {

      layout = "horizontal",

      horizontal = "right:55%",
    },

    title = " Oldfiles ",

    title_pos = "center",
  },
},

--------------------------------------------------
-- LSP SYMBOLS
--------------------------------------------------

lsp = {

  prompt_postfix = "❯ ",

  symbols = {

    previewer = true,

    winopts = 
    {

      preview = 
      {

        layout = "horizontal",

        horizontal = "right:55%",

      },

      title = " LSP Document Symbols ",

      title_pos = "center",
    },

    symbol_icons = {
      File = "󰈙",
      Module = "",
      Namespace = "󰌗",
      Package = "",
      Class = "󰌗",
      Method = "󰆧",
      Property = "",
      Field = "",
      Constructor = "",
      Enum = "󰕘",
      Interface = "󰕘",
      Function = "󰊕",
      Variable = "󰆧",
      Constant = "󰏿",
      String = "󰀬",
      Number = "󰎠",
      Boolean = "◩",
      Array = "󰅪",
      Object = "󰅩",
      Key = "󰌋",
      Null = "󰟢",
      EnumMember = "",
      Struct = "󰌗",
      Event = "",
      Operator = "󰆕",
      TypeParameter = "󰊄",
    },
  },
},
      })




      --------------------------------------------------
      -- KEYMAPS
      --------------------------------------------------

      local map =
          vim.keymap.set

    
      --------------------------------------------------
      -- LIVE GREP
      --------------------------------------------------

      map("n", "<leader>fg",

        function()

          fzf.live_grep()

        end,

        {
          desc = "Live Grep",
        }
      )

      --------------------------------------------------
      -- BUFFERS
      --------------------------------------------------

      map("n", "<leader>fb",

        function()

          fzf.buffers()

        end,

        {
          desc = "Buffers",
        }
      )




      --------------------------------------------------
      -- RECENT FILES
      --------------------------------------------------


      map("n", "<leader>fr",

        function()

          fzf.oldfiles()

        end,

        {
          desc = "Recent Files",
        }
      )

      --------------------------------------------------
      -- HELP
      --------------------------------------------------

      map("n", "<leader>fh",

        function()

          fzf.help_tags()

        end,

        {
          desc = "Help",
        }
      )

      --------------------------------------------------
      -- KEYMAPS
      --------------------------------------------------

      map("n", "<leader>fk",

        function()

          fzf.keymaps()

        end,

        {
          desc = "Keymaps",
        }
      )

      --------------------------------------------------
      -- DIAGNOSTICS
      --------------------------------------------------

      map("n", "<leader>fa",

        function()

          fzf.diagnostics_document()

        end,

        {
          desc = "Diagnostics",
        }
      )



      map("n", "<leader>fc",

        function()

          fzf.live_grep({

            cwd =
                vim.fn.stdpath(
                  "config"
                ),
          })

        end,

        {
          desc = "Search Config",
        }
      )



      map("n", "<leader>ff", 
      function()
          fzf.files()
        end)







        map("n", "<leader>fw", function()
            require("fzf-lua").blines({
              prompt = " Find Word ",

              winopts = {
                width = 0.40,
                height = 0.40,

                row = 0.50,
                col = 0.40,

                border = " ",

                preview = {
                  hidden = true,
                },

                title = " Find ",
                title_pos = "center",
              },

              fzf_opts = {
                ["--color"] =
                  "bg:#181818," ..
                  "bg+:#343234," ..
                  "fg:#b6b6b6," ..
                  "fg+:#bdb9b9," ..
                  "hl:#1ce27f," ..
                  "hl+:#3662da," ..
                  "border:#181818,"..
                  "info:#3a7eeb,"..

                  -- input area
                  "input-bg:#1a1a1a," ..
                  "input-fg:#89b4fa," ..
                  "input-border:#2b2f36," .. 

                  -- prompt
                  "prompt:#64c394," ..

                  

                  -- info
                  "info:#89b4fa,"
              },
            })
        end)






      

      

 
    end,
  },
}







