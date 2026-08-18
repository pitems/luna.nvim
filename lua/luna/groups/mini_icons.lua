local M = {}

function M.get(c)
  local groups = {
    -- These base groups are shared by Neo-tree and other UI components.
    -- Keep them transparent; Bufferline gets explicit state-specific groups
    -- below so it can paint its icons without creating blocks elsewhere.
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
    groups["BufferLineMiniIcons" .. name] = { bg = c.tabline, fg = fg }
    groups["BufferLineMiniIcons" .. name .. "Inactive"] = { bg = c.tabline, fg = fg }
    groups["BufferLineMiniIcons" .. name .. "Visible"] = { bg = c.tabline, fg = fg }
    groups["BufferLineMiniIcons" .. name .. "Selected"] = { bg = c.bg, fg = fg }
  end

  return groups
end

return M
