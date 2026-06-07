
return {
  {
    "mfussenegger/nvim-dap",

    dependencies = {
      "rcarriga/nvim-dap-ui",
      "nvim-neotest/nvim-nio",
      "williamboman/mason.nvim",
      "jay-babu/mason-nvim-dap.nvim",
      "theHamsta/nvim-dap-virtual-text",
    },

    config = function()
      --------------------------------------------------
      -- REQUIRE
      --------------------------------------------------
     local dap = require("dap")
      --local dapui = require("dapui")

      --------------------------------------------------
      -- MASON
      --------------------------------------------------
      require("mason").setup()

      require("mason-nvim-dap").setup({
        ensure_installed = {
          "codelldb",
        },

        automatic_installation = true,
      })



      --------------------------------------------------
      -- CODELLDB
      --------------------------------------------------
      local mason_path = vim.fn.stdpath("data")

      local codelldb_path =
        mason_path
        .. "/mason/packages/codelldb/extension/adapter/codelldb.exe"

      dap.adapters.codelldb = {
        type = "server",
        port = "${port}",

        executable = {
          command = codelldb_path,
          args = { "--port", "${port}" },
        },
      }

      --------------------------------------------------
      -- C++/C
      --------------------------------------------------
      dap.configurations.cpp = {
        {
          
        name = "Launch file",
        type = "codelldb",
        request = "launch",



        sourceLanguages = { "c", "cpp" },

           -- initCommands = {
            --    "settings set target.process.thread.step-avoid-regexp 'std::|ucrt|msvcrt|kernel32|ntdll'"
            -- },



           program = function()
          return vim.fn.expand("%:p:r") .. ".exe"
        end,

          

          cwd = "${workspaceFolder}",

          env = {
                   PATH =
                          "C:\\msys64\\clang64\\bin;"
                        .. os.getenv("PATH"),
                },

          stopOnEntry = false,
          
          runInTerminal = false,

          

        },
      }



  dap.configurations.c = dap.configurations.cpp




--------------------------------------------------
-- BUILD
--------------------------------------------------
vim.keymap.set("n", "<F9>", function()
  vim.cmd("write")

  local file = vim.fn.expand("%:p")
  local ext = vim.fn.expand("%:e")
  local exe = vim.fn.expand("%:p:r") .. ".exe"

  local cmd

  if ext == "c" then
    cmd = {
      "clang",
      "-g",
      "-O0",
      "-std=c99",
      "-Wall",
      "-Wextra",
      file,
      "-o",
      exe,
    }
  else
    cmd = {
      "clang++",
      "-g",
      "-O0",
      "-std=c++20",
      "-Wall",
      "-Wextra",
      file,
      "-o",
      exe,
    }
  end

  print("\nCompiling...\n")

  local result = vim.fn.system(cmd)

  print(result)

  if vim.v.shell_error ~= 0 then
    print("Build failed!")
    return
  end

  print("Build success!")
  print("Executable: " .. exe)
end)







--------------------------------------------------
-- DISABLE SWAP FOR DAP BUFFERS
--------------------------------------------------

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    pattern = { "dap-*", "dap-src://*" },

    callback = function()
        vim.opt_local.swapfile = false
        vim.opt_local.bufhidden = "wipe"
    end,
})





      --------------------------------------------------
      -- KEYMAPS
      --------------------------------------------------
      vim.keymap.set("n", "<F5>", dap.continue)
      vim.keymap.set("n", "<F8>", dap.toggle_breakpoint)
      vim.keymap.set("n", "<F10>", dap.step_over)
      vim.keymap.set("n", "<F11>", dap.step_into)
      vim.keymap.set("n", "<F12>", dap.step_out)
      vim.keymap.set("n", "<leader>dr", dap.repl.open)
      
      
      
      
    








     
    end,
  },
}
