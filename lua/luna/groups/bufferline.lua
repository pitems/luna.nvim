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
    -- The slanted separator is also used after the final buffer. Matching
    -- its foreground to the bar background prevents a grey wedge before
    -- the empty trailing area.
    BufferLineSeparator = { bg = bg, fg = bg },
    BufferLineSeparatorVisible = { bg = bg, fg = bg },
    BufferLineSeparatorSelected = { bg = bg, fg = bg },
    BufferLineTabSeparator = { bg = bg, fg = bg },
    BufferLineTabSeparatorVisible = { bg = bg, fg = bg },
    BufferLineTabSeparatorSelected = { bg = bg, fg = bg },
    BufferLineGroupSeparator = { bg = bg, fg = bg },
    BufferLineGroupSeparatorVisible = { bg = bg, fg = bg },
    BufferLineGroupSeparatorSelected = { bg = bg, fg = bg },
    BufferLineTruncMarker = { bg = bg, fg = bg },
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
