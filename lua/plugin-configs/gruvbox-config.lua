-- setup must be called before loading the colorscheme
-- Default options:
require("gruvbox").setup({
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = false,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {
    -- https://www.reddit.com/r/neovim/comments/jmuxm0/help_seeing_red_blocks_in_hover_definitions/
    -- otherwise background color for underscores in the signature help will be red
    MarkdownError = {
      bg = "#3b3836"
    }
  },
  dim_inactive = false,
  transparent_mode = false,
})
vim.cmd("colorscheme gruvbox")
