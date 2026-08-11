local M = {}

function M.get(c, opts)
  local bg = opts.transparent and "NONE" or c.bg

  return {
    BufferLineFill = { bg = bg },
    BufferLineBackground = { bg = bg, fg = c.grey },
    BufferLineBuffer = { bg = bg, fg = c.grey_light },
    BufferLineBufferVisible = { bg = bg, fg = c.grey_light },
    BufferLineBufferSelected = { bg = bg, fg = c.fg_bright },
    BufferLineTab = { bg = bg, fg = c.grey },
    BufferLineTabSelected = { bg = bg, fg = c.silver },
    BufferLineSeparator = { bg = bg, fg = c.border },
    BufferLineSeparatorVisible = { bg = bg, fg = c.border },
    BufferLineSeparatorSelected = { bg = bg, fg = c.border },
    BufferLineTabSeparator = { bg = bg, fg = c.border },
    BufferLineTabSeparatorVisible = { bg = bg, fg = c.border },
    BufferLineTabSeparatorSelected = { bg = bg, fg = c.border },
    BufferLineIndicatorSelected = { bg = bg, fg = c.signal },
    BufferLineIndicatorVisible = { bg = bg, fg = c.signal },
    BufferLineModified = { bg = bg, fg = c.warning },
    BufferLineModifiedVisible = { bg = bg, fg = c.warning },
    BufferLineModifiedSelected = { bg = bg, fg = c.warning },
    BufferLineCloseButton = { bg = bg, fg = c.grey },
    BufferLineCloseButtonVisible = { bg = bg, fg = c.grey },
    BufferLineCloseButtonSelected = { bg = bg, fg = c.error },
    BufferLineDuplicate = { bg = bg, fg = c.grey_light },
    BufferLineDuplicateVisible = { bg = bg, fg = c.grey_light },
    BufferLineDuplicateSelected = { bg = bg, fg = c.fg_bright },
    BufferLineError = { bg = bg, fg = c.error },
    BufferLineErrorSelected = { bg = bg, fg = c.error },
    BufferLineWarning = { bg = bg, fg = c.warning },
    BufferLineWarningSelected = { bg = bg, fg = c.warning },
    BufferLineInfo = { bg = bg, fg = c.info },
    BufferLineInfoSelected = { bg = bg, fg = c.info },
    BufferLineHint = { bg = bg, fg = c.hint },
    BufferLineHintSelected = { bg = bg, fg = c.hint },
  }
end

return M
