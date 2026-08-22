local function set_transparent()
  local groups = {
    "Normal",
    "NormalNC",
    "SignColumn",
    "StatusLine",
    "StatusLineNC",
    "EndOfBuffer",
    "MsgArea",
    "NormalFloat",
    "FloatBorder",
  }
  for _, group in ipairs(groups) do
    vim.api.nvim_set_hl(0, group, { bg = "NONE", ctermbg = "NONE" })
  end
end

return {
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    init = function()
      vim.api.nvim_create_autocmd("ColorScheme", {
        callback = set_transparent,
      })
    end,
  },
  { "catppuccin/nvim", lazy = true },
  { "rebelot/kanagawa.nvim", lazy = true },
  { "wtfox/luna.nvim", lazy = false },
  {
    "Aejkatappaja/cendre",
    lazy = false,
    priority = 1000,
    config = function()
      require("cendre").setup({
        background = "hard", -- "hard" | "medium" | "soft"
        italic_virtual_text = false,
      })
    end,
  },
  { "elvessousa/sobrio", lazy = true },
  { "ray-x/aurora", lazy = true },
  { "EdenEast/nightfox.nvim", lazy = true },
  { "liuchengxu/space-vim-dark", lazy = true },
  { "gruvbox-community/gruvbox", lazy = true },
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "solarized-osaka",
      colorscheme = "cendre",
    },
  },
}
