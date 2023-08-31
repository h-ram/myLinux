
vim.g.mapleader = " " 

vim.keymap.set("i","jj","<ESC>")
vim.keymap.set("v","ii","<ESC>")
vim.keymap.set("s","jj","<ESC>")


vim.keymap.set("n",";",":")
vim.keymap.set("n","<c-s>",":w<CR>")

-- Move 3 times faster by pressing shift
vim.keymap.set("n","<s-j>","3j")
vim.keymap.set("n","<s-k>","3k")
