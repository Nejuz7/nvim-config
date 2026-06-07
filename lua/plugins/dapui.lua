return {
    "rcarriga/nvim-dap-ui",

    dependencies = {
        "mfussenegger/nvim-dap",
        "nvim-neotest/nvim-nio",
    },

    config = function()
    local dap = require("dap")
    local dapui = require("dapui")

    dapui.setup()

    dap.listeners.after.event_initialized["dapui"] = function()
        dapui.open()
    end

   local dap = require("dap")
local dapui = require("dapui")

local function cleanup_dap()
    vim.schedule(function()
        dapui.close()

        for _, buf in ipairs(vim.api.nvim_list_bufs()) do
            local name = vim.api.nvim_buf_get_name(buf)

            if name:match("dap%-terminal") then
                vim.api.nvim_buf_delete(buf, { force = true })
            end
        end
    end)
end



    vim.keymap.set("n", "<Leader>du", dapui.toggle)

  
  
  
  
    vim.keymap.set("n", "<S-F5>", function()
    local dap = require("dap")
    local dapui = require("dapui")

    dap.terminate()

    vim.defer_fn(function()
        dapui.close()

        for _, buf in ipairs(vim.api.nvim_list_bufs()) do
            local name = vim.api.nvim_buf_get_name(buf)

            if name:find("dap%-terminal")
                or name:find("Launch file")
            then
                pcall(vim.api.nvim_buf_delete, buf, { force = true })
            end
        end
    end, 300)
end, { desc = "Stop Debugging" })


end
}






