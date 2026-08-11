local Util = require("luna.util")

local M = {}

function M.get(c)
  return {
    DapStoppedLine = { bg = Util.blend_bg(c.warning, 0.10, c.bg) },
    DapBreakpoint = { fg = c.error },
    DapBreakpointCondition = { fg = c.warning },
    DapBreakpointRejected = { fg = c.comment },
    DapLogPoint = { fg = c.info },
    DapStopped = { fg = c.ok },
  }
end

return M
