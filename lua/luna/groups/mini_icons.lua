local M = {}

function M.get(c)
  local groups = {
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

  -- Bufferline derives state-specific icon groups from the icon highlight
  -- name. Define them explicitly so an icon does not fall back to the
  -- terminal background when its buffer is selected or merely visible.
  local colors = {
    Grey = c.fg,
    Purple = c.type,
    Blue = c.func,
    Azure = c.info,
    Cyan = c.parameter,
    Green = c.ok,
    Yellow = c.warning,
    Orange = c.keyword,
    Red = c.error,
  }
  for name, fg in pairs(colors) do
    groups["BufferLineMiniIcons" .. name] = { bg = c.bg, fg = fg }
    groups["BufferLineMiniIcons" .. name .. "Visible"] = { bg = c.bg, fg = fg }
    groups["BufferLineMiniIcons" .. name .. "Selected"] = { bg = c.bg_alt, fg = fg }
  end

  return groups
end

return M
