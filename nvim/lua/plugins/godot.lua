return {
  -- LazyVim's typescript extra sets opts for nvim-dap, which triggers
  -- lazy.nvim auto-config to call setup() — but nvim-dap has no setup().
  -- This dummy config prevents that crash.
  {
    "nvim-dap",
    config = function() end,
  },
  {
    "Mathijs-Bakker/godotdev.nvim",
    dependencies = { "nvim-dap", "nvim-dap-ui", "nvim-treesitter" },
    config = function()
      require("godotdev").setup()
    end,
  },
}
