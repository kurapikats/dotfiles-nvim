return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        follow_current_file = {
          enabled = true,
        },
        hijack_netrw_behavior = "open_current",
      },
      window = {
        width = 32,
        mappings = {
          ["<C-b>"]  = function()
            require("neo-tree.command").execute({ toggle = true })
          end,
        },
      },
    },
  },
}
