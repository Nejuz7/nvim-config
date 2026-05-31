local M = {}

function M.toggle()

  -- Current file directory
  local dir = vim.fn.expand("%:p:h")

  -- Change local cwd
  vim.cmd("silent lcd " .. vim.fn.fnameescape(dir))

  local buf = vim.api.nvim_create_buf(false, true)

  local width = math.floor(vim.o.columns * 0.75)
  local height = math.floor(vim.o.lines * 0.60)

  local row = math.floor((vim.o.lines - height) / 2)
  local col = math.floor((vim.o.columns - width) / 2)

  local win = vim.api.nvim_open_win(buf, true, {
    relative = "editor",
    width = width,
    height = height,
    row = row,
    col = col,
    border = "rounded",
    style = "minimal",
  })

  vim.cmd("terminal")

  vim.cmd("startinsert")

  --------------------------------------------------
  -- TERMINAL KEYMAPS
  --------------------------------------------------

vim.keymap.set("t", "<Esc>", function()

  vim.cmd("stopinsert")

  vim.api.nvim_win_close(win, true)

end, {
  buffer = buf,
  silent = true,
})

end




return M