local M = {}

function M.get(c)
  local groups = {
    MiniIconsGrey = { bg = c.bg_alt, fg = c.fg },
    MiniIconsPurple = { bg = c.bg_alt, fg = c.type },
    MiniIconsBlue = { bg = c.bg_alt, fg = c.func },
    MiniIconsAzure = { bg = c.bg_alt, fg = c.info },
    MiniIconsCyan = { bg = c.bg_alt, fg = c.parameter },
    MiniIconsGreen = { bg = c.bg_alt, fg = c.ok },
    MiniIconsYellow = { bg = c.bg_alt, fg = c.warning },
    MiniIconsOrange = { bg = c.bg_alt, fg = c.keyword },
    MiniIconsRed = { bg = c.bg_alt, fg = c.error },
  }

  -- Bufferline derives state-specific icon groups from the icon highlight
  -- name. Match each icon background to its buffer state so icons do not
  -- appear as contrasting blocks inside the tab.
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
    groups["BufferLineMiniIcons" .. name] = { bg = c.bg_alt, fg = fg }
    groups["BufferLineMiniIcons" .. name .. "Visible"] = { bg = c.bg_alt, fg = fg }
    groups["BufferLineMiniIcons" .. name .. "Selected"] = { bg = c.bg_alt, fg = fg }
  end

  return groups
end

return M
