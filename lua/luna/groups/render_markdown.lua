local M = {}

function M.get(c, opts)
  local headings = { c.func, c.type, c.info, c.warning, c.ok, c.keyword }
  local ret = {
    RenderMarkdownCode = { bg = c.bg_alt },
    RenderMarkdownCodeInline = { bg = c.surface, fg = c.string },
    RenderMarkdownBullet = { fg = c.func },
    RenderMarkdownQuote = { fg = c.info },
    RenderMarkdownLink = { fg = c.func, underline = true },
    RenderMarkdownDash = { fg = c.border },
    RenderMarkdownTableHead = { fg = c.silver, bold = true },
    RenderMarkdownTableRow = { fg = c.fg },
    RenderMarkdownTableFill = { fg = c.border },
  }

  for level, color in ipairs(headings) do
    ret["RenderMarkdownH" .. level] = { fg = color, bold = true }
    ret["RenderMarkdownH" .. level .. "Bg"] = { fg = color, bold = true }
  end

  return ret
end

return M
