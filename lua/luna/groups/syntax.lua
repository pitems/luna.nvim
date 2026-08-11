local M = {}

function M.get(c, opts)
  local ret = {
    Bold = {},
    Comment = { fg = c.comment },
    Constant = { fg = c.type },
    Define = { fg = c.comment },
    Delimiter = { fg = c.grey_mid },
    Error = { bg = c.error },
    Exception = { fg = c.keyword },
    Function = { fg = c.func },
    Identifier = { fg = c.fg },
    Include = { fg = c.grey_mid },
    Italic = {},
    Keyword = { fg = c.keyword },
    Number = { fg = c.number },
    Operator = { fg = c.grey_light },
    PreProc = { fg = c.comment },
    Property = { fg = c.fg },
    Special = { fg = c.grey_light },
    SpecialChar = { fg = c.grey_light },
    Statement = { link = "Keyword" },
    String = { fg = c.string },
    Structure = { fg = c.type },
    Todo = { fg = c.silver },
    Type = { fg = c.type },
    Underlined = { undercurl = true },
    Variable = { fg = c.fg },

    -- LSP
    LspDiagnosticsDefaultError = { fg = c.error },
    LspDiagnosticsDefaultWarning = { fg = c.grey },
    LspDiagnosticsDefaultInformation = { fg = c.diag.info },
    LspDiagnosticsDefaultHint = { fg = c.diag.hint },
    LspReferenceRead = { bg = c.selection },
    LspReferenceWrite = { bg = c.selection },
    LspReferenceText = { bg = c.selection },
    LspSignatureActiveParameter = { fg = c.warning },

    -- HTML
    htmlTag = { fg = c.grey_light },
    htmlEndTag = { fg = c.grey_light },
    htmlTagName = { fg = c.type },
    htmlArg = { fg = c.grey_light },
    htmlTitle = { fg = c.fg },
    htmlSpecialTagName = { fg = c.silver },
    htmlLink = { fg = c.grey_light, underline = true },
    htmlSpecialChar = { fg = c.signal },

    -- Markdown
    markdownHeadingDelimiter = { fg = c.grey_warm },
    markdownBold = { fg = c.keyword, bold = true },
    markdownItalic = { fg = c.type, italic = true },
    markdownCode = { fg = c.string },
    markdownCodeBlock = { fg = c.string },
    markdownLinkText = { fg = c.func, underline = true },
    markdownUrl = { fg = c.info, underline = true },
    markdownListMarker = { fg = c.func },
    markdownBlockquote = { fg = c.info },
    RenderMarkdownCodeInline = { bg = c.surface, fg = c.string },
  }

  local headings = { c.func, c.type, c.info, c.warning, c.ok, c.keyword }
  for level, color in ipairs(headings) do
    ret["markdownH" .. level] = { fg = color, bold = true }
    ret["RenderMarkdownH" .. level .. "Bg"] = {
      bg = opts.transparent and "NONE" or c.bg,
      fg = color,
      bold = true,
    }
  end

  return ret
end

return M
