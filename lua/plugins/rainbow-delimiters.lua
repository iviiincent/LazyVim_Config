return {
  {
    "HiPhish/rainbow-delimiters.nvim", -- Plugin repository
    event = "VeryLazy", -- Load it lazily
    config = function()
      local rainbow_delimiters = require("rainbow-delimiters")

      -- Configuration for rainbow-delimiters
      vim.g.rainbow_delimiters = {
        strategy = {
          [""] = rainbow_delimiters.strategy["global"], -- Default strategy
        },
        query = {
          [""] = "rainbow-delimiters",
        },
        highlight = {
          "RainbowDelimiterRed",
          "RainbowDelimiterYellow",
          "RainbowDelimiterBlue",
          "RainbowDelimiterOrange",
          "RainbowDelimiterGreen",
          "RainbowDelimiterViolet",
          "RainbowDelimiterCyan",
        },
        blacklist = { "markdown" }, -- Disable in specific file types
      }
    end,
  },
}
