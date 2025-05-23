local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "x", '"_x')

-- neotree
--keymap.set("n", "<leader>b", ":Neotree filesystem reveal right<CR>", opts)

-- reverse 'j' and 'k' key functionality.
keymap.set("n", "j", "k", opts)
keymap.set("n", "k", "j", opts)

-- Increment/Decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- New tab
keymap.set("n", "te", ":tabedit<Return>", opts)
-- keymap.set("n", "<tab>", ":tabnext<Return>", opts)
-- keymap.set("n", "<S-tab>", ":tabprev<Return>", opts)
keymap.set("n", "tw", ":tabclose<Return>", opts)

-- switch between buffers
keymap.set("n", "<tab>", ":bnext<Return>", opts)
keymap.set("n", "<S-tab>", ":bprevious<Return>", opts)

-- goto implementation lsp using Telescope
keymap.set("n", "<C-enter>", "<cmd>Telescope lsp_implementations<CR>", opts)

-- undo/redo using undo tree
keymap.set("i", "<D-z>", "<esc>u<CR>i", opts)
keymap.set("i", "<D-S-z>", "<esc><C-r><CR>i", opts)

-- delete left word mapping
keymap.set("i", "<A-backspace>", "<C-w>", opts)

keymap.set("i", "<A-h>", "<S-left>", opts)
keymap.set("i", "<A-l>", "<S-right>", opts)
-- in normal mode
keymap.set("n", "<A-h>", "b", opts)
keymap.set("n", "<A-l>", "e", opts)

-- delete without yank
keymap.set("n", "<leader>d", '"_d', opts)
keymap.set("v", "<leader>d", '"_d', opts)

-- Move text up and down
keymap.set("n", "<C-j>", ":m .+1<CR>==", opts)
keymap.set("n", "<C-k>", ":m .-2<CR>==", opts)
-- keymap.set("v", "p", '"_dP', opts)

-- use capslock for esc
keymap.set("i", "<C-c>", "<esc>", opts)

keymap.set("i", "<tab>", "<C-v><tab>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return><C-w>w", opts)
keymap.set("n", "sv", ":vsplit<Return><C-w>w", opts)

-- close current window
keymap.set("n", "sw", "<C-w>c", opts)
-- keymap.set("i", "jj", "<esc>", opts)

-- save and exit
keymap.set("n", "<C-s>", ":update<Return>", opts)
keymap.set("i", "<C-s>", "<Esc>:update<Return>", opts)

-- keymap to delete all buffers and windows
keymap.set("n", "<C-x>", ":bufdo bdelete<Return>", opts)

-- key mapping to close current buffer and window
keymap.set("n", "<C-w>", ":bdelete<Return>", opts)
keymap.set("n", "<C-q>", ":q<Return>", opts)
keymap.set("n", "<C-Q>", ":qa!<Return>", opts)

-- Move window
keymap.set("n", "sh", "<C-w>h", opts)
keymap.set("n", "sl", "<C-w>l", opts)
keymap.set("n", "sk", "<C-w>k", opts)
keymap.set("n", "sj", "<C-w>j", opts)

-- navigate paragraphs up and down
keymap.set("n", "<A-j>", "5j", opts)
keymap.set("n", "<A-k>", "5k", opts)

-- navigate paragraphs up and down in insert mode
keymap.set("i", "<A-j>", "<C-o>}", opts)
keymap.set("i", "<A-k>", "<C-o>{", opts)

-- move paragraphs up and down
keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv", opts)
keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv", opts)

-- Resize window
keymap.set("n", "<C-S><up>", ":resize +2<Return>", opts)
keymap.set("n", "<C-S><down>", ":resize -2<Return>", opts)
keymap.set("n", "<C-S><left>", ":vertical resize -2<Return>", opts)
keymap.set("n", "<C-S><right>", ":vertical resize +2<Return>", opts)

keymap.set("n", "<leader>o", "<cmd>Telescope find_files<cr>", opts)
keymap.set("n", "<leader>f", "<cmd>Telescope live_grep<cr>", opts)

-- Diagnostics
-- keymap.set("n", "<C-j>", function()
--     vim.diagnostic.goto_next()
-- end, opts)

-- neotree mappings
-- keymap.set("n", "<leader>e", ":Neotree filesystem toggle right<CR>", opts)
-- keymap.set("n", "<C>g", ":Neotree git_status toggle right<CR>", opts)
-- keymap.set("n", "<C>b", ":Neotree buffers toggle right<CR>", opts)
