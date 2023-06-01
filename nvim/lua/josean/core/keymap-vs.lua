-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
---------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")
keymap.set("t", "jk", "<C-\\><C-n>")

-- clear search highlights
-- keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- buffer
--
-- workbench.action.quickOpenNavigateNext
--workbench.action.quickOpenNavigatePrevious
-- keymap.set("n", "<S-l>", VSCodeNotify("editor.action.revealDefinitionAside"), {})
-- keymap.set("n", "<S-l", function()
--     VSCodeNotify("workbench.action.quickOpenNavigateNext()")
-- end)

-- keymap.set("n", "<S-h", function()
--     VSCodeNotify("workbench.action.quickOpenNavigateNext")
-- end)
-- keymap.set("n", "<S-h>", ":BufferLineCyclePrev<CR>", {})
-- keymap.set("n", "<leader>x", ":bdelete<CR>", {})

-- tabs
-- keymap.set("n", "<C-h>", "<C-w>h", {})
-- keymap.set("n", "<C-l>", "<C-w>l", {})

-- terminal

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
-- keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- explorer

-- telescope
-- keymap.set("n", "<leader>f", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
-- keymap.set("n", "<leader>ts", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
-- keymap.set("n", "<leader>tc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
-- keymap.set("n", "<leader>tb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
-- keymap.set("n", "<leader>th", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- my custom
vim.cmd([[ nmap <leader>/ <Plug>CommentaryLine ]])
