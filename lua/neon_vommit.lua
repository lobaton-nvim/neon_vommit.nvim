-- lua/neon_vommit.lua
-- Neon Vommit - Retro-neon colorscheme for Neovim

local neon_vommit = {
	bg = "#222222",
	fg = "#f0f0f0",
	comment = "#BBAA99",
	string = "#CBC3FF",
	string_html = "#66D9EF",
	number = "#33CC99",
	constant = "#4499FF",
	keyword = "#FF00AA",
	func = "#76EE00",
	variable = "#66D9EF",
	type = "#CC33FF",
	operator = "#FFFF00",
	warning = "#EEEE22",
	error = "#f44747",
	info = "#6796e6",
	debug = "#b267e6",
	added = "#76EE00",
	deleted = "#FF00AA",
	yellow = "#FD971F",
	purple = "#BB77FF",
}

local function hl(group, style)
	vim.api.nvim_set_hl(0, group, style)
end

-- Limpiar antes de definir
vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
	vim.cmd("syntax reset")
end

vim.o.termguicolors = true

-- Aplicar el tema
hl("Normal", { fg = neon_vommit.fg, bg = neon_vommit.bg })
hl("NormalNC", { bg = neon_vommit.bg })
hl("NormalFloat", { bg = neon_vommit.bg, fg = neon_vommit.fg })
hl("FloatBorder", { fg = neon_vommit.comment, bg = neon_vommit.bg })

-- Sintaxis
hl("Comment", { fg = neon_vommit.comment, italic = true })
hl("Constant", { fg = neon_vommit.constant })
hl("String", { fg = neon_vommit.string })
hl("Character", { fg = neon_vommit.string })
hl("Number", { fg = neon_vommit.number })
hl("Boolean", { fg = neon_vommit.constant })
hl("Float", { fg = neon_vommit.number })

hl("Identifier", { fg = neon_vommit.variable })
hl("Function", { fg = neon_vommit.func })

hl("Statement", { fg = neon_vommit.keyword })
hl("Keyword", { fg = neon_vommit.keyword })
hl("Operator", { fg = neon_vommit.operator })
hl("PreProc", { fg = neon_vommit.keyword })
hl("Define", { fg = neon_vommit.keyword })
hl("Include", { fg = neon_vommit.keyword })
hl("Macro", { fg = neon_vommit.keyword })
hl("Conditional", { fg = neon_vommit.keyword })
hl("Repeat", { fg = neon_vommit.keyword })
hl("Label", { fg = neon_vommit.keyword })

hl("Type", { fg = neon_vommit.func })
hl("StorageClass", { fg = neon_vommit.keyword })
hl("Structure", { fg = neon_vommit.keyword })
hl("Typedef", { fg = neon_vommit.func })

hl("Special", { fg = neon_vommit.yellow })
hl("SpecialChar", { fg = neon_vommit.error })
hl("Tag", { fg = neon_vommit.keyword })
hl("Delimiter", { fg = neon_vommit.fg })
hl("SpecialComment", { fg = neon_vommit.comment })

hl("Todo", { fg = neon_vommit.bg, bg = neon_vommit.warning, bold = true })
hl("Error", { fg = neon_vommit.bg, bg = neon_vommit.error })
hl("WarningMsg", { fg = neon_vommit.warning })

hl("Title", { fg = neon_vommit.func, bold = true })

-- Cursor
hl("Cursor", { fg = neon_vommit.bg, bg = neon_vommit.fg })
hl("CursorLine", { bg = "#3c3c3c" })
hl("CursorColumn", { bg = "#3c3c3c" })
hl("ColorColumn", { bg = "#333333" })

hl("Visual", { bg = "#646464" })
hl("VisualNOS", { bg = "#555555" })

-- Líneas
hl("LineNr", { fg = "#3a3a3a", bg = neon_vommit.bg })
hl("CursorLineNr", { fg = neon_vommit.func, bg = "#3c3c3c", bold = true })
hl("SignColumn", { bg = neon_vommit.bg })
hl("Folded", { fg = neon_vommit.comment, bg = neon_vommit.bg })
hl("FoldColumn", { fg = neon_vommit.comment, bg = neon_vommit.bg })

-- Estado
hl("StatusLine", { fg = neon_vommit.fg, bg = "#333333", bold = true })
hl("StatusLineNC", { fg = neon_vommit.comment, bg = "#333333" })
hl("WinBar", { fg = neon_vommit.fg, bg = neon_vommit.bg })
hl("WinBarNC", { fg = neon_vommit.comment, bg = neon_vommit.bg })
hl("VertSplit", { fg = "#3a3a3a", bg = "#3a3a3a" })

-- Búsqueda
hl("Search", { bg = neon_vommit.warning, fg = neon_vommit.bg })
hl("IncSearch", { bg = neon_vommit.operator, fg = neon_vommit.bg })

-- Diagnósticos
hl("DiagnosticError", { fg = neon_vommit.error })
hl("DiagnosticWarn", { fg = neon_vommit.warning })
hl("DiagnosticInfo", { fg = neon_vommit.info })
hl("DiagnosticHint", { fg = neon_vommit.debug })
hl("DiagnosticOk", { fg = neon_vommit.added })

hl("DiagnosticSignError", { fg = neon_vommit.error })
hl("DiagnosticSignWarn", { fg = neon_vommit.warning })
hl("DiagnosticSignInfo", { fg = neon_vommit.info })
hl("DiagnosticSignHint", { fg = neon_vommit.debug })
hl("DiagnosticSignOk", { fg = neon_vommit.added })

hl("DiagnosticUnderlineError", { underline = true, sp = neon_vommit.error })
hl("DiagnosticUnderlineWarn", { underline = true, sp = neon_vommit.warning })
hl("DiagnosticUnderlineInfo", { underline = true, sp = neon_vommit.info })
hl("DiagnosticUnderlineHint", { underline = true, sp = neon_vommit.debug })

-- LSP
hl("LspReferenceRead", { bg = "#444455" })
hl("LspReferenceText", { bg = "#444455" })
hl("LspReferenceWrite", { bg = "#554455" })

-- Markdown
hl("markdownBold", { fg = neon_vommit.fg, bold = true })
hl("markdownItalic", { fg = neon_vommit.fg, bold = true })
hl("markdownH1", { fg = neon_vommit.func, bold = true })
hl("markdownH2", { fg = neon_vommit.func, bold = true })
hl("markdownH3", { fg = neon_vommit.yellow, bold = true })
hl("markdownLink", { fg = neon_vommit.func, underline = true })
hl("markdownCode", { fg = neon_vommit.keyword })
hl("markdownListMarker", { fg = neon_vommit.purple })
hl("markdownHeadingRule", { fg = neon_vommit.operator })
hl("markdownUrl", { fg = neon_vommit.fg })

-- HTML
hl("htmlTag", { fg = neon_vommit.keyword })
hl("htmlEndTag", { fg = neon_vommit.keyword })
hl("htmlTagName", { fg = neon_vommit.keyword })
hl("htmlArg", { fg = neon_vommit.func })
hl("htmlScriptTag", { fg = neon_vommit.yellow })
hl("htmlTitle", { fg = neon_vommit.func, bold = true })

-- CSS / SCSS
hl("cssAtRule", { fg = neon_vommit.yellow })
hl("cssIdentifier", { fg = neon_vommit.func })
hl("cssClassName", { fg = neon_vommit.func })
hl("cssIdSelector", { fg = neon_vommit.keyword })
hl("cssInclude", { fg = neon_vommit.yellow })
hl("scssVariable", { fg = neon_vommit.yellow })
hl("scssMixin", { fg = neon_vommit.yellow })
hl("scssSelector", { fg = neon_vommit.func })

-- Python
hl("pythonBuiltin", { fg = neon_vommit.variable })
hl("pythonFunction", { fg = neon_vommit.func })

-- JavaScript / TypeScript
hl("jsFunction", { fg = neon_vommit.func })
hl("jsFuncCall", { fg = neon_vommit.func })
hl("jsVariableDef", { fg = neon_vommit.variable })
hl("jsObjectKey", { fg = neon_vommit.purple })
hl("tsType", { fg = neon_vommit.type })
hl("typescriptTypeName", { fg = neon_vommit.func })
hl("typescriptTypeParameter", { fg = neon_vommit.type })
hl("typescriptKeyword", { fg = neon_vommit.keyword })

-- JSON
hl("jsonKeyword", { fg = neon_vommit.fg })
hl("jsonString", { fg = neon_vommit.string_html })
hl("jsonNumber", { fg = neon_vommit.func })
hl("jsonEscape", { fg = neon_vommit.operator })

-- Misc
hl("Underlined", { fg = neon_vommit.func, underline = true })
hl("Ignore", { fg = neon_vommit.comment })
hl("NonText", { fg = "#4a4a4a" })
hl("EndOfBuffer", { fg = "#333333" })

-- Treesitter
hl("TSComment", { fg = neon_vommit.comment, italic = true })
hl("TSConstant", { fg = neon_vommit.constant })
hl("TSString", { fg = neon_vommit.string })
hl("TSNumber", { fg = neon_vommit.number })
hl("TSBoolean", { fg = neon_vommit.constant })
hl("TSFuncBuiltin", { fg = neon_vommit.variable })
hl("TSFunction", { fg = neon_vommit.func })
hl("TSMethod", { fg = neon_vommit.func })
hl("TSFuncMacro", { fg = neon_vommit.keyword })
hl("TSKeyword", { fg = neon_vommit.keyword })
hl("TSOperator", { fg = neon_vommit.operator })
hl("TSParameter", { fg = neon_vommit.yellow })
hl("TSVariable", { fg = neon_vommit.variable })
hl("TSVariableBuiltin", { fg = neon_vommit.keyword })
hl("TSType", { fg = neon_vommit.func })
hl("TSTypeBuiltin", { fg = neon_vommit.type })
hl("TSField", { fg = neon_vommit.purple })
hl("TSProperty", { fg = neon_vommit.purple })
hl("TSTag", { fg = neon_vommit.keyword })
hl("TSTagDelimiter", { fg = neon_vommit.keyword })

-- Marcar como cargado
_G.neon_vommit_loaded = true
