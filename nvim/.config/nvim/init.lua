vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.cmd("set number relativenumber")

local mason_path = vim.fn.stdpath("data") .. "/mason/bin"
vim.env.PATH = mason_path .. ":" .. vim.env.PATH

--vim.diagnostic.config({
--  virtual_text = {
--    prefix = "●", -- or "→", "■", etc
--    spacing = 2,
--  },
--  signs = true,
--  underline = true,
--  update_in_insert = false,
--})

vim.o.updatetime = 200

vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    vim.diagnostic.open_float(nil, { focusable = false })
  end,
})

require("config.lazy")

vim.cmd.colorscheme("colorbuddy")
