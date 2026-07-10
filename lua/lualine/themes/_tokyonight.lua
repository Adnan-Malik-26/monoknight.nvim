local M = {}

---@param style? string
function M.get(style)
  local colors, config = require("tokyonight.colors").setup({
    style = style,
  })

  local hl = {}

  hl.normal = {
    a = { bg = colors.blue, fg = colors.bg_dark },
    b = { bg = colors.fg_gutter, fg = colors.bg_dark },
    c = { bg = colors.bg_statusline, fg = colors.fg },
  }

  hl.insert = {
    a = { bg = colors.green, fg = colors.bg_dark },
    b = { bg = colors.fg_gutter, fg = colors.green },
  }

  hl.command = {
    a = { bg = colors.yellow, fg = colors.bg_dark },
    b = { bg = colors.purple, fg = colors.bg_dark },
  }

  hl.visual = {
    a = { bg = colors.magenta, fg = colors.bg_dark },
    b = { bg = colors.blue, fg = colors.bg_dark },
  }

  hl.replace = {
    a = { bg = colors.red, fg = colors.bg_dark },
    b = { bg = colors.orange, fg = colors.bg_dark },
  }

  hl.terminal = {
    a = { bg = colors.green1, fg = colors.bg_dark },
    b = { bg = colors.blue1, fg = colors.bg_dark },
  }

  hl.inactive = {
    a = { bg = colors.bg_statusline, fg = colors.blue },
    b = { bg = colors.bg_statusline, fg = colors.fg_gutter, gui = "bold" },
    c = { bg = colors.bg_statusline, fg = colors.fg_gutter },
  }

  if config.lualine_bold then
    for _, mode in pairs(hl) do
      mode.a.gui = "bold"
    end
  end
  return hl
end

return M
