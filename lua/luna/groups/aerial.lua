local M = {}

function M.get(c, opts)
  local bg = opts.transparent and "NONE" or c.bg

  return {
    AerialNormal = { bg = bg, fg = c.fg },
    AerialNormalFloat = { bg = bg, fg = c.fg },
    AerialLine = { bg = c.selection, fg = c.func },
    AerialLineNC = { bg = c.selection, fg = c.func },
    AerialGuide = { fg = c.comment },
    AerialPrivate = { fg = c.comment },
    AerialProtected = { fg = c.comment },

    -- Keep the text readable while giving the outline the same semantic
    -- color language as the editor.
    AerialClass = { fg = c.type },
    AerialEnum = { fg = c.type },
    AerialInterface = { fg = c.type },
    AerialStruct = { fg = c.type },
    AerialType = { fg = c.type },
    AerialFunction = { fg = c.func },
    AerialMethod = { fg = c.func },
    AerialConstructor = { fg = c.func },
    AerialField = { fg = c.parameter },
    AerialProperty = { fg = c.parameter },
    AerialVariable = { fg = c.fg },
    AerialConstant = { fg = c.keyword },
    AerialString = { fg = c.string },
    AerialNumber = { fg = c.keyword },
    AerialBoolean = { fg = c.keyword },
    AerialNull = { fg = c.keyword },

    AerialClassIcon = { fg = c.type },
    AerialEnumIcon = { fg = c.type },
    AerialInterfaceIcon = { fg = c.type },
    AerialStructIcon = { fg = c.type },
    AerialTypeIcon = { fg = c.type },
    AerialTypeParameterIcon = { fg = c.parameter },
    AerialFunctionIcon = { fg = c.func },
    AerialMethodIcon = { fg = c.func },
    AerialConstructorIcon = { fg = c.func },
    AerialFieldIcon = { fg = c.parameter },
    AerialPropertyIcon = { fg = c.parameter },
    AerialVariableIcon = { fg = c.fg },
    AerialConstantIcon = { fg = c.keyword },
    AerialEnumMemberIcon = { fg = c.parameter },
    AerialNamespaceIcon = { fg = c.info },
    AerialModuleIcon = { fg = c.info },
    AerialPackageIcon = { fg = c.info },
    AerialStringIcon = { fg = c.string },
    AerialNumberIcon = { fg = c.keyword },
    AerialBooleanIcon = { fg = c.keyword },
    AerialNullIcon = { fg = c.keyword },
    AerialOperatorIcon = { fg = c.keyword },
    AerialArrayIcon = { fg = c.keyword },
    AerialObjectIcon = { fg = c.type },
    AerialKeyIcon = { fg = c.parameter },
    AerialEventIcon = { fg = c.signal },
    AerialFileIcon = { fg = c.string },
  }
end

return M
