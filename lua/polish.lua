-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here
 
vim.keymap.set("n", "<C-b>", function()
  require("neo-tree.command").execute({
    toggle = true,
    reveal = true,
    focus = true,
  })
end, {
  silent = true,
  desc = "Toggle Neo-tree",
})

vim.keymap.set("n", "<C-S-p>", function()
  require("telescope.builtin").commands()
end, {
  desc = "Command Palette",
  silent = true,
})
vim.keymap.set("n", "<C-p>", function()
  require("telescope.builtin").find_files()
end)

vim.keymap.set("n", "<C-S-f>", "<cmd>Telescope live_grep<cr>")

vim.keymap.set("n", "<S-l>", "<cmd>bnext<cr>")
vim.keymap.set("n", "<S-h>", "<cmd>bprevious<cr>")

vim.keymap.set("n", "<C-`>", "<cmd>ToggleTerm<cr>")
vim.keymap.set("t", "<C-`>", [[<C-\><C-n><cmd>ToggleTerm<cr>]])

vim.keymap.set("n", "]c", "<cmd>Gitsigns next_hunk<cr>")
vim.keymap.set("n", "[c", "<cmd>Gitsigns prev_hunk<cr>")

vim.keymap.set("n", "<C-S-m>", "<cmd>Telescope diagnostics<cr>")

