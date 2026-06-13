return {

  {
    "neovim/nvim-lspconfig",

    dependencies = {

      --------------------------------------------------
      -- MASON
      --------------------------------------------------

      "williamboman/mason.nvim",

      "williamboman/mason-lspconfig.nvim",

      --------------------------------------------------
      -- CMP
      --------------------------------------------------

      "hrsh7th/cmp-nvim-lsp",
    },

    config = function()

      --------------------------------------------------
      -- IMPORTS
      --------------------------------------------------

 

      local capabilities =
          require("cmp_nvim_lsp")
          .default_capabilities()

      --------------------------------------------------
      -- MASON
      --------------------------------------------------

      require("mason").setup()

     

      require("mason-lspconfig").setup({

        ensure_installed = {

          "lua_ls",

          "cmake",

          "powershell_es",
        },
      })

      --------------------------------------------------
      -- DIAGNOSTICS
      --------------------------------------------------

      vim.diagnostic.config({

        virtual_text = true,

        signs = true,

        underline = true,

        update_in_insert = false,

        severity_sort = true,

        float = {

          border = "rounded",

          source = true,
        },
      })

      --------------------------------------------------
      -- LSP ATTACH
      --------------------------------------------------

      vim.api.nvim_create_autocmd(
        "LspAttach",
        {

          callback = function(event)

            local opts = {
              buffer = event.buf,
            }

            local client =
            vim.lsp.get_client_by_id(
              event.data.client_id
            )



            --------------------------------------------------
            -- BASIC LSP
            --------------------------------------------------

            vim.keymap.set(
              "n",
              "K",
              vim.lsp.buf.hover,
              opts
            )

            vim.keymap.set(
              "n",
              "gD",
              vim.lsp.buf.declaration,
              opts
            )

            vim.keymap.set(
              "n",
              "<leader>rn",
              vim.lsp.buf.rename,
              opts
            )

            vim.keymap.set(
              "n",
              "<leader>ca",
              vim.lsp.buf.code_action,
              opts
            )

            vim.keymap.set(
              "n",
              "<leader>h",
              vim.lsp.buf.signature_help,
              opts
            )

            vim.keymap.set(
              "n",
              "<leader>d",
              vim.diagnostic.open_float,
              opts
            )

            vim.keymap.set(
              "n",
              "<leader>lf",
              function()

                vim.lsp.buf.format({
                  async = true,
                })

              end,
              opts
            )

            --------------------------------------------------
            -- DIAGNOSTICS
            --------------------------------------------------

vim.keymap.set(
  "n",
  "[d",
  function()
    vim.diagnostic.jump({
      count = -1
    })
  end,
  opts
)

vim.keymap.set(
  "n",
  "]d",
  function()
    vim.diagnostic.jump({
      count = 1
    })
  end,
  opts
)


          end,
        }
      )

      --------------------------------------------------
      -- CLANGD
      --------------------------------------------------

      vim.lsp.config("clangd", {

        capabilities = capabilities,

        cmd = {

            "C:/msys64/ucrt64/bin/clangd.exe",

            "--background-index",

            "--clang-tidy",

            "--completion-style=detailed",

            "--header-insertion=iwyu",

            "--offset-encoding=utf-16",

            "--pch-storage=memory",

            "--all-scopes-completion",
          },

        filetypes = {

          "c",

          "cpp",

          "objc",

          "objcpp",

          "cuda",
        },

        root_markers = {

          ".git",

          "compile_commands.json",

          "CMakeLists.txt",
        },
      })

      --------------------------------------------------
      -- LUA
      --------------------------------------------------

      vim.lsp.config("lua_ls", {

        capabilities = capabilities,

        settings = {

          Lua = {

            diagnostics = {

              globals = { "vim" },
            },

            workspace = {

              checkThirdParty = false,

              library =
                  vim.api.nvim_get_runtime_file(
                    "",
                    true
                  ),
            },

            telemetry = {

              enable = false,
            },
          },
        },
      })

      --------------------------------------------------
      -- CMAKE
      --------------------------------------------------

      vim.lsp.config("cmake", {

        capabilities = capabilities,
      })

      --------------------------------------------------
      -- POWERSHELL
      --------------------------------------------------

      vim.lsp.config(
        "powershell_es",
        {

          capabilities = capabilities,

          bundle_path =
              vim.fn.stdpath("data")
              ..
              "/mason/packages/powershell-editor-services",
        }
      )

      --------------------------------------------------
      -- ENABLE SERVERS
      --------------------------------------------------

      vim.lsp.enable("clangd")

      vim.lsp.enable("lua_ls")

      vim.lsp.enable("cmake")

      vim.lsp.enable("powershell_es")
    end,
  },
}
