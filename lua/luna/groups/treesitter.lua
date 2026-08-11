local Util = require("luna.util")

local M = {}

function M.get(c, opts)
  opts = opts or {}
  return {
    ["@annotation"] = "PreProc",
    ["@attribute"] = "PreProc",
    ["@boolean"] = "Boolean",
    ["@character"] = "Character",
    ["@character.printf"] = "SpecialChar",
    ["@character.special"] = "SpecialChar",
    ["@comment"] = "Comment",
    ["@constant"] = "Constant",
    ["@constant.builtin"] = "Type",
    ["@constant.macro"] = "Define",
    ["@constructor"] = "Type",
    ["@diff.delta"] = "DiffChange",
    ["@diff.minus"] = "DiffDelete",
    ["@diff.plus"] = "DiffAdd",
    ["@function"] = "Function",
    ["@function.builtin"] = "Function",
    ["@function.call"] = "@function",
    ["@function.macro"] = { fg = c.keyword },
    ["@function.method"] = "Function",
    ["@function.htmldjango"] = "Function",
    ["@function.method.call"] = "@function.method",
    ["@keyword"] = { fg = c.keyword },
    ["@keyword.conditional"] = "Conditional",
    ["@keyword.conditional.htmldjango"] = "@function.method",
    ["@keyword.coroutine"] = "@keyword",
    ["@keyword.debug"] = "Debug",
    ["@keyword.directive"] = "PreProc",
    ["@keyword.directive.define"] = "Define",
    ["@keyword.exception"] = "Exception",
    ["@keyword.function"] = { fg = c.keyword }, -- For keywords used to define a function.
    ["@keyword.import"] = { fg = c.grey_warm },
    ["@keyword.export"] = { fg = c.keyword }, -- split out via after/queries/ecma/highlights.scm
    ["@keyword.operator"] = "@operator",
    ["@keyword.repeat"] = "Repeat",
    ["@keyword.return"] = { fg = c.keyword },
    ["@keyword.storage"] = "StorageClass",
    ["@label"] = { fg = c.keyword }, -- For labels: `label:` in C and `:label:` in Lua.
    ["@markup"] = "@none",
    ["@markup.emphasis"] = { fg = c.type, italic = true },
    ["@markup.environment"] = "Macro",
    ["@markup.environment.name"] = "Type",
    ["@markup.heading"] = "Title",
    ["@markup.raw.markdown_inline"] = { fg = c.string, bg = c.bg_alt },
    ["@markup.heading.1.markdown"] = "RenderMarkdownH1Bg",
    ["@markup.heading.2.markdown"] = "RenderMarkdownH2Bg",
    ["@markup.heading.3.markdown"] = "RenderMarkdownH3Bg",
    ["@markup.heading.4.markdown"] = "RenderMarkdownH4Bg",
    ["@markup.heading.5.markdown"] = "RenderMarkdownH5Bg",
    ["@markup.heading.6.markdown"] = "RenderMarkdownH6Bg",
    ["@markup.italic"] = { fg = c.type, italic = true },
    ["@markup.italic.markdown"] = { fg = c.type, italic = true },
    ["@markup.link"] = { fg = c.func, underline = true },
    ["@markup.link.markdown_inline"] = { fg = c.func, underline = true },
    ["@markup.link.url"] = { fg = c.info, underline = true },
    ["@markup.link.label"] = "SpecialChar",
    ["@markup.link.label.symbol"] = "Identifier",
    ["@markup.list"] = { fg = c.func }, -- For special punctutation that does not fall in the categories before.
    ["@markup.list.checked"] = { fg = c.ok }, -- For brackets and parens.
    ["@markup.list.markdown"] = { fg = c.func },
    ["@markup.list.unchecked"] = { fg = c.func }, -- For brackets and parens.
    ["@markup.math"] = "Special",
    ["@markup.raw"] = { fg = c.string },
    ["@markup.raw.markdown"] = { fg = c.string },
    ["@markup.strikethrough"] = { strikethrough = true },
    ["@markup.strong"] = { fg = c.keyword, bold = true },
    ["@markup.strong.markdown"] = { fg = c.keyword, bold = true },
    ["@markup.underline"] = { underline = true },
    ["@module"] = "Include",
    ["@module.builtin"] = { fg = c.grey_light }, -- Variable names that are defined by the languages, like `this` or `self`.
    ["@namespace.builtin"] = "@variable.builtin",
    ["@none"] = {},
    ["@number"] = "Number",
    ["@number.float"] = "Float",
    ["@operator"] = "Operator",
    ["@property"] = { fg = c.ok },
    ["@property.toml"] = "Property",
    ["@toml.tableKey"] = { fg = c.type },
    ["@punctuation.bracket"] = { fg = c.grey_light }, -- For brackets and parens.
    ["@punctuation.delimiter"] = { fg = c.grey_light }, -- For delimiters ie: `.`
    ["@punctuation.special"] = "SpecialChar",
    ["@markup.quote"] = { fg = c.info },
    ["@markup.quote.markdown"] = { fg = c.info },
    ["@punctuation.special.markdown"] = { fg = c.grey_warm }, -- For special symbols (e.g. `{}` in string interpolation)
    ["@punctuation.special.htmldjango"] = { fg = c.grey_light },
    ["@string"] = "String",
    ["@string.documentation"] = "@comment",
    ["@string.escape"] = { fg = c.signal }, -- For escape characters within a string.
    ["@string.regexp"] = { fg = c.string }, -- For regexes.
    ["@tag"] = "Label",
    ["@tag.attribute"] = "@property",
    ["@tag.delimiter"] = "Delimiter",
    ["@tag.delimiter.tsx"] = { fg = c.grey_light },
    ["@tag.tsx"] = { fg = c.type },
    ["@tag.jsx"] = { fg = c.type },
    ["@tag.javascript"] = { fg = c.type },
    ["@type"] = "Type",
    ["@type.builtin"] = { fg = c.keyword },
    ["@type.definition"] = "Typedef",
    ["@type.qualifier"] = "@keyword",
    ["@variable"] = {
      fg = c.fg,
      -- style = opts.styles.variables
    }, -- Any variable name that does not have another highlight.
    ["@variable.member"] = { fg = c.ok }, -- For fields.
    ["@variable.parameter"] = { fg = c.parameter }, -- For parameters and named arguments.
    ["@variable.parameter.builtin"] = { fg = Util.blend_fg(c.cream, 0.8) }, -- For builtin parameters of a function, e.g. "..." or Smali's p[1-99]

    -- JSX/TSX
    ["@tag.builtin.tsx"] = { fg = c.type },

    -- Rust
    ["@character.rust"] = "String",
  }
end

return M
