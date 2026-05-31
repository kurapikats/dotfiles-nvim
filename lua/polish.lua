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
