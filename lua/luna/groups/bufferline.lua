local M = {}

function M.get(c, opts)
  local bg = opts.transparent and "NONE" or c.tabline
  local selected_bg = opts.transparent and "NONE" or c.bg

  return {
    BufferLineFill = { bg = bg },
    BufferLineBackground = { bg = bg, fg = c.grey },
    BufferLineBuffer = { bg = bg, fg = c.grey_light },
    BufferLineBufferVisible = { bg = bg, fg = c.grey_light },
    BufferLineBufferSelected = { bg = selected_bg, fg = c.fg_bright },
    BufferLineTab = { bg = bg, fg = c.grey },
    BufferLineTabSelected = { bg = selected_bg, fg = c.silver },
    BufferLineSeparator = { bg = bg, fg = c.border },
    BufferLineSeparatorVisible = { bg = bg, fg = c.border },
    BufferLineSeparatorSelected = { bg = selected_bg, fg = c.border },
    BufferLineTabSeparator = { bg = bg, fg = c.border },
    BufferLineTabSeparatorVisible = { bg = bg, fg = c.border },
    BufferLineTabSeparatorSelected = { bg = selected_bg, fg = c.border },
    BufferLineIndicatorSelected = { bg = selected_bg, fg = c.signal },
    BufferLineIndicatorVisible = { bg = bg, fg = c.signal },
    BufferLineModified = { bg = bg, fg = c.warning },
    BufferLineModifiedVisible = { bg = bg, fg = c.warning },
    BufferLineModifiedSelected = { bg = selected_bg, fg = c.warning },
    BufferLineCloseButton = { bg = bg, fg = c.grey },
    BufferLineCloseButtonVisible = { bg = bg, fg = c.grey },
    BufferLineCloseButtonSelected = { bg = selected_bg, fg = c.error },
    BufferLineDuplicate = { bg = bg, fg = c.grey_light },
    BufferLineDuplicateVisible = { bg = bg, fg = c.grey_light },
    BufferLineDuplicateSelected = { bg = selected_bg, fg = c.fg_bright },
    BufferLineError = { bg = bg, fg = c.error },
    BufferLineErrorSelected = { bg = selected_bg, fg = c.error },
    BufferLineWarning = { bg = bg, fg = c.warning },
    BufferLineWarningSelected = { bg = selected_bg, fg = c.warning },
    BufferLineInfo = { bg = bg, fg = c.info },
    BufferLineInfoSelected = { bg = selected_bg, fg = c.info },
    BufferLineHint = { bg = bg, fg = c.hint },
    BufferLineHintSelected = { bg = selected_bg, fg = c.hint },
  }
end

return M
