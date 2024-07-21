vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("i", "jj", "<ESC>", { desc = "Exit insert mode with jj" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<C-W>,", "<cmd>vertical resize -10<CR>", {noremap=true}, {desc = "Decrease window size"})
keymap.set("n", "<C-W>.", "<cmd>vertical resize +10<CR>", {noremap=true}, {desc = "Increase window size"})

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

keymap.set("n", "<leader>bf", "<cmd>bfirst<enter>", {noremap=false}, { desc = "Go to first buffer"}) -- go to first buffer
keymap.set("n", "<leader>bl", "<cmd>blast<enter>", {noremap=false}, { desc = "Go to last buffer"}) -- go to last buffer
keymap.set("n", "<leader>bp", "<cmd>bprev<enter>", {noremap=false}, { desc = "Go to previous buffer"}) -- go to previous buffer
keymap.set("n", "<leader>bn", "<cmd>bnext<enter>", {noremap=false}, { desc = "Go to next buffer"}) -- go to next buffer
keymap.set("n", "<leader>bx", "<cmd>bdelete<enter>", {noremap=false}, { desc = "Delete buffer"}) -- delete buffer

keymap.set("n", "TT", ":TransparentToggle<CR>", {noremap=true}, { desc = "Toggle transparent background"})

keymap.set("n", "tw", ":Twilight<enter>", {noremap=false, desc = "Toggle Twilight"}) -- toggle twilight

keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- TODO: move to plugin config file
-- Noice
keymap.set("n", "<leader>nn", "<cmd>Noice dismiss<CR>", {noremap=true})

-- TODO: move to plugin config file
-- Obsidian
keymap.set("n", "<leader>so", ":ObsidianSearch<CR>", {noremap=true}, { desc = "Obsidian Search" })
keymap.set("n", "<leader>ot", ":ObsidianOpen<CR>", {noremap=true}, { desc = "Obsidian New From Template" })

