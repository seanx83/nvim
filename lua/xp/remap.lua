-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex);

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("x", "<leader>p", "\"_dp")


vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

vim.keymap.set("n", "<leader>wh", "<cmd>wincmd h<CR>zz")
vim.keymap.set("n", "<leader>wl", "<cmd>wincmd l<CR>zz")
vim.keymap.set("n", "<leader>wj", "<cmd>wincmd j<CR>zz")
vim.keymap.set("n", "<leader>wk", "<cmd>wincmd k<CR>zz")

vim.keymap.set("n", "<leader>bk", "<cmd>bnext<CR>zz")
vim.keymap.set("n", "<leader>bj", "<cmd>bprev<CR>zz")

vim.keymap.set("n", "<M-l>", "gt")
vim.keymap.set("n", "<M-h>", "gT")
