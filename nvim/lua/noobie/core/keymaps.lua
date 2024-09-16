vim.g.mapleader = " "

local keymap = vim.keymap --for conciesness

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert with jk" })
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear Search Highlights" })

keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment No" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement No" })

keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split Window Horizontally" })
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split Window Vertically" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Split Window Equally" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close Current Split" })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open New Tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close Current Tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to Next Tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to Prev Tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open Current Buffer in new Tab" })
