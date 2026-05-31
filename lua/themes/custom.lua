
local M = {}

function M.setup()

  local set = vim.api.nvim_set_hl -- For convenience, we can create a local alias for the highlight function

  local hl = vim.api.nvim_set_hl -- Another alias for the highlight function, if needed

--------------------------------------------------
-- COLOR MANAGER
--------------------------------------------------



-- MAIN EDITOR
local editor_bg = "#181818" -- background color for the main editor
local editor_fg = "#a5a5a5" -- foreground color for the main editor (text color)

-- FLOATING WINDOWS
local float_bg = editor_bg    -- background color for floating windows (e.g., FZF, Snacks, Yazi)
local float_fg = "#e1e2e3"   -- foreground color for floating windows (text color)

-- BORDERS
local border = "#2b2f36"    --#2b2f36 -- border color for floating windows

-- SELECTIONS
local selection_bg = "#2a2b3c" -- background color for selected items (e.g., in FZF or Snacks)

-- MUTED TEXT
local muted_fg = "#a6adc8" -- color for less important text (e.g., file paths, line numbers)

local fzf_bg = "#202020" -- background color for FZF windows




--------------------------------------------------
-- DASHBOARD COLOR MANAGER
--------------------------------------------------

local dashboard_bg = editor_bg -- background color for the dashboard
local dashboard_fg = "#444444" -- foreground color for the dashboard ASCII art and main text
local dashboard_header = "#353d4b" -- color for the dashboard header text



hl(0, "SnacksDashboardNormal", {
  fg = dashboard_fg, -- text color for dashboard items
  bg = dashboard_bg, -- background color for the dashboard
})

  set(0, "SnacksDashboardDesc", {
    fg = "#9c9c9c", -- text color for dashboard descriptions (e.g., file paths, line numbers)
  })

  set(0, "SnacksDashboardKey", {
  fg = muted_fg, -- text color for dashboard keybindings
})

set(0, "SnacksDashboardIcon", {
  fg = muted_fg, -- text color for dashboard icons
})

  set(0, "Normal", {
    fg = "#cfcfcf", -- text color for the main editor
    bg = editor_bg, -- background color for the main editor
    
  })

  set(0, "NormalFloat", { 
    fg = "#aaa9a9", -- text color for floating windows
    bg = float_bg, -- background color for floating windows
  })

  set(0, "CursorLine", {--
    bg = "#343234", -- background color for the current line
  })

  set(0, "LineNr", {
    fg = "#5a5a5a", -- text color for line numbers
    bg = float_bg, -- background color for line numbers
  })

  set(0, "CursorLineNr", {
    fg = "#c7e61a", -- text color for the line number of the current line
    bg = float_bg, -- background color for the line number of the current line
    bold = true,
  })








  --------------------------------------------------
-- MAIN EDITOR
--------------------------------------------------

hl(0, "Normal", {
  fg = editor_fg, -- text color for the main editor
  bg = editor_bg, -- background color for the main editor
})

hl(0, "NormalFloat", {
  fg = float_fg, -- text color for floating windows
  bg = editor_bg, -- background color for floating windows
})

  --------------------------------------------------
-- FZF
--------------------------------------------------



          hl(0, "FzfLuaNormal", {
            fg = float_fg, -- text color for FZF file list
            bg = fzf_bg, -- background color for FZF file list
          })

          hl(0, "FzfLuaBorder", {
            fg = fzf_bg, -- border color for FZF windows
            bg = fzf_bg, -- background color for FZF windows
          })

          hl(0, "FzfLuaPreviewNormal", {
            bg = editor_bg, -- background color for FZF preview pane
            fg = float_fg, -- text color for FZF preview pane
          
          })

          hl(0, "FzfLuaTitle", {
            fg = "#f7768e",
            bg = fzf_bg,
            bold = true,
          })

          hl(0, "FzfLuaPreviewTitle", {
            fg = "#f7768e",
            bg = fzf_bg,
            bold = true,
          })

          hl(0, "FzfLuaPreviewBorder", {
            fg = fzf_bg, -- border color for FZF preview pane
            bg = fzf_bg, --
          })

          hl(0, "FzfLuaCursorLine", {
              bg = "#252529",
                  
          })

          hl(0, "FzfLuaMarker", {
            fg = muted_fg, -- text color for the marker (e.g., ">" symbol)
            bg = fzf_bg, -- background color for the marker
          })

  

          
          
        --------------------------------------------------
        -- SEARCH MATCHES
        --------------------------------------------------

        hl(0, "FzfLuaSearch", {
          fg = "#23b6f0", -- text color for search matches in FZF
          bold = true,
        })

        --------------------------------------------------
        -- SCROLLBAR
        --------------------------------------------------

        hl(0, "FzfLuaScrollBorderEmpty", { 
          fg = fzf_bg, -- border color for the empty part of the scrollbar
          bg = fzf_bg, -- background color for the empty part of the scrollbar
        })

        hl(0, "FzfLuaScrollBorderFull", {
          fg = "#89b4fa",
          bg = fzf_bg,
        })


        hl(0, "FzfLuaFilePart", {
         fg = "#89b4fa",})

        hl(0, "FzfLuaDirPart", {
          fg = "#7dcfff",
        })

        

        hl(0, "FzfLuaHeaderBind", {
          fg = "#e0af68",
        })

        hl(0, "FzfLuaPathLineNr", {
          fg = "#7aa2f7",
        })

        hl(0, "FzfLuaBufFlagCur", {
          fg = "#9ece6a",
        })

        hl(0, "FzfLuaBufFlagAlt", {
          fg = "#e0af68",
        })



     --------------------------------------------------
          -- Snacks MAIN
     --------------------------------------------------

          vim.api.nvim_set_hl(0, "SnacksPickerInput", {
              fg = "#64c394", -- text color for the input field in Snacks
              bg = "#1e1e1e", -- background color for the input field in Snacks
            })
            vim.api.nvim_set_hl(0, "FloatTitle", {
              fg = "#d61b1b",
              bold = true,
            })

            vim.api.nvim_set_hl(0, "SnacksPickerInputBorder", {
              fg = "#2b2f36", -- border color
              bg = "#222224", -- background color
            })


            vim.api.nvim_set_hl(0, "SnacksPickerInputTitle", {
              fg = "#64c394",
              bg = fzf_bg,
              bold = true,
            })

            vim.api.nvim_set_hl(0, "SnacksPickerPrompt", {
              fg = "#FFD700",
              bold = true,
            })




            --------------------------------------------------
            -- SNACKS FIND WORD
            --------------------------------------------------

            vim.api.nvim_set_hl(0, "SnacksPicker", {
              bg = "#1a1a1a",
              fg = "#a5a5a5",
            })

            vim.api.nvim_set_hl(0, "SnacksPickerList", {
              bg = "#1a1a1a",
            })

            vim.api.nvim_set_hl(0, "SnacksPickerInput", {
              bg = "#1a1a1a",
              fg = "#64c394",
            })

            vim.api.nvim_set_hl(0, "SnacksPickerInputBorder", {
              bg = "#1a1a1a",
              fg = "#2b2f36",
            })

            vim.api.nvim_set_hl(0, "SnacksPickerInputTitle", {
              bg = "#1a1a1a",
              fg = "#f7768e",
              bold = true,
            })

            vim.api.nvim_set_hl(0, "SnacksPickerMatch", {
              fg = "#2c76ee",
              bold = true,
            })

            vim.api.nvim_set_hl(0, "SnacksPickerSelection", {
              bg = "#8d8dd6",
            })

            vim.api.nvim_set_hl(0, "SnacksPickerCursorLine", {
              bg = "#1a1a1a",
            })

            vim.api.nvim_set_hl(0, "SnacksPickerPathHidden", {
              fg = "#5a5a5a",
            })


 






 --------------------------------------------------
  -- Yazi
  --------------------------------------------------


          set(0, "YaziFloat", {
            bg = bg,
          })

          set(0, "YaziBorder", {
            fg = bg_dark,
            bg = bg,
          })

          set(0, "YaziFloatBorder", {
            fg = bg_dark,
            bg = bg,
          })

  --------------------------------------------------
  -- TELESCOPE
  --------------------------------------------------

  set(0, "TelescopeNormal", {
    bg = "#202020",
  })

  set(0, "TelescopeBorder", {
    fg = "#313244",
    bg = "#202020",
  })

  set(0, "TelescopePromptBorder", {
    fg = "#ce755a",
    bg = "#202020",
  })

  --------------------------------------------------
  -- FLOATS
  --------------------------------------------------

  set(0, "FloatBorder", {
    fg = bg_dark,
    bg = bg,
  })

  --------------------------------------------------
  -- STATUSLINE
  --------------------------------------------------

  set(0, "StatusLine", {
  fg = "#cdd6f4",
  bg = "#171718",
})

set(0, "StatusLineNC", {
  bg = "#171718", -- background color for inactive status line
  fg = "#6c7086", -- text color for inactive status line
})

set(0, "WinBar", {
  bg = "#1d1d1d",
  fg = "#89b4fa",
})

set(0, "WinBarNC", {
  bg = "#1d1d1d",
  fg = "#6c7086",
})

set(0, "NavicText", {
  fg = "#cdd6f4",
})

set(0, "NavicSeparator", {
  fg = "#6c7086",
})

set(0, "NavicIconsFunction", {
  fg = "#89b4fa",
})

set(0, "NavicIconsClass", {
  fg = "#f9e2af",
})

set(0, "TabLineFill", {
  bg = "#171718",


})



 





end

return M



