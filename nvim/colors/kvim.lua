vim.cmd("highlight clear")
vim.cmd("syntax reset")

vim.o.background = "dark"
vim.g.colors_name = "kvim"
local set = vim.api.nvim_set_hl

local colors = {
  bg          = "#232326",
  floatbg     = "#2c2c2e",
  fg          = "#e0e2ea",

  warning     = "#d9d570",
  error       = "#dc5c5c",

  kword       = "#20b9e5",
  kwordbright = "#58d8fc",

  str         = "#8fb573",

  type        = "#909091",
  typedim     = "#636363",

  selected    = "#3d3d42",

  comment     = "#526941",
}


set(0, "Normal", { fg = colors.fg, bg = colors.bg })
set(0, "String", { fg = colors.str })
set(0, "Character", { fg = colors.str })
set(0, "Special", { fg = colors.kword })
set(0, "SpecialChar", { fg = colors.str })
set(0, "Delimiter", { fg = colors.fg })
set(0, "Boolean", { fg = colors.kword, bold = true })
set(0, "Identifier", { fg = colors.fg })
set(0, "PreProc", { fg = colors.type })
set(0, "Type", { fg = colors.type })
set(0, "Statement", { fg = colors.kword, bold = true })
set(0, "Function", { fg = colors.fg })
set(0, "Comment", { fg = colors.comment })

set(0, "Directory", { fg = colors.kword, bold = true })

set(0, "CurSearch", { fg = colors.bg, bg = colors.kwordbright })
set(0, "Substitute", { fg = colors.fg, bg = colors.typedim })
set(0, "Search", { fg = colors.fg, bg = colors.typedim })

set(0, "Error", { fg = colors.fg, bg = colors.error })
set(0, "Todo", { fg = colors.warning, bold = true})

set(0, "WinSeparator", { fg = colors.selected, })
set(0, "NormalFloat", { fg = colors.fg, bg = colors.floatbg })
set(0, "FloatBorder", { fg = colors.fg, bg = colors.floatbg })
set(0, "Pmenu", { fg = colors.fg, bg = colors.selected })

set(0, "StatusLine", { fg = colors.fg, bg = colors.selected })
set(0, "StatusLineNC", { fg = colors.selected, bg = colors.floatbg })

set(0, "WarningMsg", { fg = colors.warning, bold = true })
set(0, "ErrorMsg", { fg = colors.error, bold = true })
set(0, "ModeMsg", { fg = colors.str, bold = true })

set(0, "Question", { fg = colors.kword })
set(0, "QuickFixLine", { fg = colors.kword })
set(0, "MoreMsg", { fg = colors.kword })

set(0, "Added", { fg = colors.str })
set(0, "Changed", { fg = colors.kword })
set(0, "Removed", { fg = colors.error })
