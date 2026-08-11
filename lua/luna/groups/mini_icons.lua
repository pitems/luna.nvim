local M = {}

function M.get(c)
  return {
    -- Explicit transparency matters in tabline segments: without it,
    -- Neovim can render the terminal's black background behind each icon.
    MiniIconsGrey = { bg = "NONE", fg = c.fg },
    MiniIconsPurple = { bg = "NONE", fg = c.type },
    MiniIconsBlue = { bg = "NONE", fg = c.func },
    MiniIconsAzure = { bg = "NONE", fg = c.info },
    MiniIconsCyan = { bg = "NONE", fg = c.parameter },
    MiniIconsGreen = { bg = "NONE", fg = c.ok },
    MiniIconsYellow = { bg = "NONE", fg = c.warning },
    MiniIconsOrange = { bg = "NONE", fg = c.keyword },
    MiniIconsRed = { bg = "NONE", fg = c.error },
  }
end

return M
