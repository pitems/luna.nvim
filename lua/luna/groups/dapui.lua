local M = {}

function M.get(c, opts)
  local bg = opts.transparent and "NONE" or c.bg

  return {
    DapUIVariable = { fg = c.parameter },
    DapUIScope = { fg = c.type },
    DapUIType = { fg = c.type },
    DapUIValue = { fg = c.fg },
    DapUIModifiedValue = { fg = c.warning },
    DapUIDecoration = { fg = c.border },
    DapUIThread = { fg = c.ok },
    DapUIStoppedThread = { fg = c.warning },
    DapUIFrameName = { fg = c.func },
    DapUISource = { fg = c.string },
    DapUILineNumber = { fg = c.grey_light },
    DapUIFloatBorder = { bg = bg, fg = c.border },
    DapUIWatchesEmpty = { fg = c.comment },
    DapUIWatchesValue = { fg = c.ok },
    DapUIWatchesError = { fg = c.error },
    DapUIBreakpointsPath = { fg = c.string },
    DapUIBreakpointsInfo = { fg = c.info },
    DapUIBreakpointsCurrentLine = { fg = c.ok },
    DapUIBreakpointsDisabledLine = { fg = c.comment },
    DapUIPlayPause = { fg = c.ok },
    DapUIRestart = { fg = c.ok },
    DapUIStop = { fg = c.error },
    DapUIStepInto = { fg = c.func },
    DapUIStepOver = { fg = c.func },
    DapUIStepBack = { fg = c.func },
    DapUIStepOut = { fg = c.func },
  }
end

return M
