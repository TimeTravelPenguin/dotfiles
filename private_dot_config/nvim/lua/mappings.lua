require "nvchad.mappings"

local nomap = vim.keymap.del

nomap("n", "<leader>v")
nomap("n", "<leader>h")
nomap("n", "<leader>n")
nomap("n", "<leader>rn")

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jj", "<ESC>", { desc = "Exit insert mode" })

-- Remaps
map("n", "<leader>ln", "<cmd>set nu!<CR>", { desc = "Toggle Line number" })
map("n", "<leader>lrn", "<cmd>set rnu!<CR>", { desc = "Toggle Relative number" })
map("x", "p", "P", { silent = true, remap = false, desc = "Paste without yanking" })

map("n", "<C-s>", "<CMD> w <CR>", { desc = "Save file" })
map({ "i", "v" }, "<C-s>", "<ESC> <CMD> w <CR>", { desc = "Save file and exit mode" })

map({ "n", "v" }, "<C-u>", "<C-u>zz", { desc = "Move line down", remap = false })
map({ "n", "v" }, "<C-d>", "<C-d>zz", { desc = "Half page down", remap = false })

map("n", "<M-j>", ":m +1<CR>", { desc = "Move line down" })
map("n", "<M-k>", ":m -2<CR>", { desc = "Move line up" })

-- Blink on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

require "mappings.dap-python"
require "mappings.dap-ui"
require "mappings.git"
