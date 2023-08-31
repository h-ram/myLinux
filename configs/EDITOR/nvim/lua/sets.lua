
vim.opt.number = true
vim.opt.mouse = "a"
vim.opt.syntax = "on"
vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.smartcase = true
vim.opt.autowrite = true
vim.opt.titlestring = "%t"
vim.opt.title = true
vim.opt.ruler = true
vim.opt.confirm = true
vim.opt.laststatus = 2
vim.opt.cursorline = true
vim.opt.history = 1000
vim.opt.wrap = false
vim.opt.wildmenu = true
vim.opt.encoding = "UTF-8"
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.filetype = "on"
vim.opt.termguicolors = true
vim.cmd([[
filetype indent on	"Load indentation settings for this filetype
filetype plugin on	"Load plugging set for this filetype
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx "
]])
