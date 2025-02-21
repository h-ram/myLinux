
vim.g.mapleader = " " 

vim.keymap.set("i","jj","<ESC>")
vim.keymap.set("v","ii","<ESC>")
vim.keymap.set("s","jj","<ESC>")


vim.keymap.set("n",";",":")
vim.keymap.set("n","<c-s>",":w<CR>")

-- Move 3 times faster by pressing shift
vim.keymap.set("n","<s-j>","3j")
vim.keymap.set("n","<s-k>","3k")


-- Copy/Paste
vim.keymap.set("v","<C-c>",'"+y')
vim.keymap.set("","<C-v>",'"+P')

-- Split view Navigation
vim.keymap.set("n","<s-j>","<c-w>j")
vim.keymap.set("n","<s-k>","<c-w>k")
vim.keymap.set("n","<s-h>","<c-w>h")
vim.keymap.set("n","<s-l>","<c-w>l")

-- Split view Resize
vim.keymap.set("","<c-up>","<c-w>+")
vim.keymap.set("","<c-down>","<c-w>-")
vim.keymap.set("","<c-left>","<c-w>>")
vim.keymap.set("","<c-right>","<c-w><")

vim.cmd([[

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
autocmd FileType java map <buffer> <F9> :w<CR>:exec '!time java' shellescape(@%, 1)<CR>
autocmd FileType java imap <buffer> <F9> <esc>:w<CR>:exec '!time java' shellescape(@%, 1)<CR>

autocmd FileType python map <buffer> <F9> :w<CR>:exec '!time python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!time python3' shellescape(@%, 1)<CR>

]])


