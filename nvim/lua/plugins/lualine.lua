return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local theme = require("lualine.themes.auto")
    local colors = {
      darkbg  = "#232326",
      bg      = "#3d3d42",
      fg      = "#e0e2ea",
      normal  = "#20b9e5",
      visual  = "#bb70d2",
      replace = "#dc5c5c"
    }
    theme.normal = {
      a = { bg = colors.normal, fg = colors.bg, gui = "bold" },
      b = { bg = colors.bg, fg = colors.fg },
      c = { bg = colors.bg, fg = colors.fg },
    }
    theme.visual = {
      a = { bg = colors.visual, fg = colors.bg, gui = "bold" },
      b = { bg = colors.bg, fg = colors.fg },
      c = { bg = colors.bg, fg = colors.fg },
    }
    theme.replace = {
      a = { bg = colors.replace, fg = colors.bg, gui = "bold" },
      b = { bg = colors.bg, fg = colors.fg },
      c = { bg = colors.bg, fg = colors.fg },
    }
    theme.inactive = {
      a = { bg = colors.darkbg, fg = colors.fg, gui = "bold" },
      b = { bg = colors.darkbg, fg = colors.fg },
      c = { bg = colors.darkbg, fg = colors.fg },
    }
    require("lualine").setup({
      options = {
        theme = theme
      },
    })
  end
}
