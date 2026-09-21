return {
  {
    "atomicptr/defold.nvim",
    version = "*",
    lazy = false,

    dependencies = {
      "mfussenegger/nvim-dap",
      "L3MON4D3/LuaSnip",
    },

    build = function()
      require("defold").download()
    end,

    opts = {
      -- your config here
    },
  },
}
