vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = '[J] Move lines up' })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = '[K] Move lines down' })

vim.keymap.set("n", "J", "mzJ`z", { desc = '[J]oin lines, keep cursor position' })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = 'Half page jump down and center' })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = 'Half page jump up and center' })
vim.keymap.set("n", "n", "nzzzv", { desc = 'Next and center' })
vim.keymap.set("n", "N", "Nzzzv", { desc = 'Prev and center' })

-- greatest remap ever
vim.keymap.set("x", "<leader>p", "\"_dP", { desc = '[P]aste over and keep paste buffer' })

-- next greatest remap ever : asbjornHaland
vim.keymap.set("n", "<leader>y", "\"+y", { desc = '[y]ank to + register' })
vim.keymap.set("v", "<leader>y", "\"+y", { desc = '[y]ank to + register' })
vim.keymap.set("n", "<leader>Y", "\"+Y", { desc = '[Y]ank to + register' })

vim.keymap.set("n", "<leader>d", "\"_d", { desc = '[d]elete to void register' })
vim.keymap.set("v", "<leader>d", "\"_d", { desc = '[d]elete to void register' })

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<C-K>", "<cmd>cnext<CR>zz", { desc = 'Go to next error in quickfix list' })
vim.keymap.set("n", "<C-J>", "<cmd>cprev<CR>zz", { desc = 'Go to previous error in quickfix list' })
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = '[k] Go to next error location' })
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = '[j] Go to previous error location' })

vim.keymap.set("n", "<leader>sr", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>",
    { desc = '[S]earch and [R]eplace current word in file' })
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true, desc = 'Add e[X]ecute to the current file' })

-- move split panes to left/bottom/top/right
vim.keymap.set("n", "<A-h>", "<C-W>H", { desc = 'Move split panes' })
vim.keymap.set("n", "<A-j>", "<C-W>J", { desc = 'Move split panes' })
vim.keymap.set("n", "<A-k>", "<C-W>K", { desc = 'Move split panes' })
vim.keymap.set("n", "<A-l>", "<C-W>L", { desc = 'Move split panes' })

-- move between panes to left/bottom/top/right
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = 'Move between panes' })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = 'Move between panes' })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = 'Move between panes' })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = 'Move between panes' })
