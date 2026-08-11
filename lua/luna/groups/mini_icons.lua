local M = {}

function M.get(c)
  return {
    MiniIconsGrey = { fg = c.fg },
    MiniIconsPurple = { fg = c.type },
    MiniIconsBlue = { fg = c.func },
    MiniIconsAzure = { fg = c.info },
    MiniIconsCyan = { fg = c.parameter },
    MiniIconsGreen = { fg = c.ok },
    MiniIconsYellow = { fg = c.warning },
    MiniIconsOrange = { fg = c.keyword },
    MiniIconsRed = { fg = c.error },
  }
end

return M
