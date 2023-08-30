
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
vim.cmd([[
set encoding=UTF-8  "sets encoding to UTF-8
set scrolloff=8   "minimum number of lines to keep above/below cursor
set sidescrolloff=8 "minimum number of columns to keep from edges of the cursor
filetype on			"Detect filetype
filetype indent on	"Load indentation settings for this filetype
filetype plugin on	"Load plugging set for this filetype
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx "
set termguicolors  	"add the colors that come with the terminal

"Keyboard Mapping : (:help mapping)

inoremap jj <ESC>		"map jj to switch to normal mode in insert mode
vnoremap ii <ESC>		"map ii to switch to normal mode in visual mode	
snoremap jj <ESC> 		"map jj to switch to normal mode in replace mode 

noremap <c-s> :w<cr>	"Save file by  pressing Ctrl+s
noremap <F8> :w<CR>		"Save the file by pressing <F8>
noremap ; :


nnoremap <s-j> <c-w>j	"Navigate the split view easier
nnoremap <s-k> <c-w>k
nnoremap <s-h> <c-w>h
nnoremap <s-l> <c-w>l


noremap <c-up> <c-w>+	"Resize the split view
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

vnoremap <c-j> :m .-2<CR>==v
vnoremap <c-k> :m .-2<CR>==v	"Move text up/down
vnoremap p _dP

xnoremap J :move '>+1<CR>gv-gv	"Move text blocks up/ down
xnoremap K :move '<-2<CR>gv-gv
xnoremap <c-j> :move '>+1<CR>gv-gv
xnoremap <c-k> :move '<-2<CR>gv-gv

nnoremap <c-j> <ESC>:m .+1<CR>	"Move line up/down
nnoremap <c-k> <Esc>:m .-2<Cr>

vnoremap > >gv
vnoremap < <gv



noremap <c-r> :w<CR>:!java %<CR> 	"switch '!java' with the language you want

"running code using <F9>
autocmd FileType java map <buffer> <F9> :w<CR>:exec '!java' shellescape(@%, 1)<CR>
autocmd FileType java imap <buffer> <F9> <esc>:w<CR>:exec '!java' shellescape(@%, 1)<CR>

autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

"Move 3 times faster by pressing shift
noremap <s-j> 3j
noremap <s-k> 3k

"Copy/Paste to clipboard (requires gvim)
vnoremap <C-c> "+y
noremap <C-v> "+P
]])
