local M = {}

function M.get(c, opts)
  local bg = opts.transparent and "NONE" or c.bg

  return {
    BufferLineFill = { bg = bg },
    BufferLineBackground = { bg = bg, fg = c.grey },
    BufferLineBuffer = { bg = bg, fg = c.grey_light },
    BufferLineBufferSelected = { bg = c.bg_alt, fg = c.fg_bright },
    BufferLineTab = { bg = bg, fg = c.grey },
    BufferLineTabSelected = { bg = c.bg_alt, fg = c.silver },
    BufferLineSeparator = { bg = bg, fg = c.border },
    BufferLineSeparatorSelected = { bg = c.bg_alt, fg = c.border },
    BufferLineIndicatorSelected = { bg = c.bg_alt, fg = c.signal },
    BufferLineModified = { bg = bg, fg = c.warning },
    BufferLineModifiedSelected = { bg = c.bg_alt, fg = c.warning },
    BufferLineCloseButton = { bg = bg, fg = c.grey },
    BufferLineCloseButtonSelected = { bg = c.bg_alt, fg = c.error },
    BufferLineError = { bg = bg, fg = c.error },
    BufferLineErrorSelected = { bg = c.bg_alt, fg = c.error },
    BufferLineWarning = { bg = bg, fg = c.warning },
    BufferLineWarningSelected = { bg = c.bg_alt, fg = c.warning },
    BufferLineInfo = { bg = bg, fg = c.info },
    BufferLineInfoSelected = { bg = c.bg_alt, fg = c.info },
    BufferLineHint = { bg = bg, fg = c.hint },
    BufferLineHintSelected = { bg = c.bg_alt, fg = c.hint },
  }
end

return M
