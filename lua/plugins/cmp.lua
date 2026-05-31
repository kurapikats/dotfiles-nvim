return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require "cmp"
      
      opts.mapping = opts.mapping or {}

      opts.mapping["<Tab>"] = cmp.mapping.select_next_item()
      opts.mapping["<S-Tab>"] = cmp.mapping.select_prev_item()
      opts.mapping["<CR>"] = cmp.mapping.confirm { select = true }

      return opts
    end,
  },
}
