local M = {}

local neon_vommit = {
	-- Fondo
	bg = "#222222", -- Fondo principal
	cursor_line = "#2d3149", -- Fondo de línea activa (más oscuro, no gris)

	-- Texto principal y secundario
	fg_main = "#00A49D", -- Tu color elegido: sustituye al blanco
	fg_sub = "#66D9EF", -- Cian neón para secundario
	fg_comment = "#BB77FF", -- Morado neón para comentarios

	-- Sintaxis
	string = "#CBC3FF", -- Rosa neón
	string_html = "#66D9EF", -- Cian HTML
	number = "#33CC99", -- Verde número
	constant = "#4499FF", -- Azul constante
	keyword = "#FF00AA", -- Rosa fuerte
	func = "#76EE00", -- Verde lima
	variable = "#66D9EF", -- Cian
	type = "#CC33FF", -- Morado eléctrico
	operator = "#FFFF00", -- Amarillo neón
	yellow = "#FD971F", -- Naranja
	purple = "#BB77FF", -- Morado

	-- Estado
	error = "#f44747", -- Rojo error
	warning = "#EEEE22", -- Amarillo advertencia
	info = "#6796e6", -- Azul info
	debug = "#b267e6", -- Púrpura debug
	added = "#76EE00", -- Verde agregado
	deleted = "#FF00AA", -- Rosa eliminado

	-- Editor
	selection = "#3c3c3c", -- Selección oscura
	whitespace = "#222222", -- Espacios en fondo
	cursor_fg = "#66D9EF", -- Cursor en cian
}

-- Función auxiliar
local function hl(group, style)
	vim.api.nvim_set_hl(0, group, style)
end

-- Carga del tema
function M.load()
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.o.termguicolors = true
	vim.g.colors_name = "neon_vommit"

	-- Grupo principal
	hl("Normal", { fg = neon_vommit.fg_main, bg = neon_vommit.bg })
	hl("NormalNC", { bg = neon_vommit.bg })
	hl("NormalFloat", { bg = neon_vommit.bg, fg = neon_vommit.fg_main })
	hl("FloatBorder", { fg = neon_vommit.fg_comment, bg = neon_vommit.bg })

	-- Sintaxis
	hl("Comment", { fg = neon_vommit.fg_comment, italic = true })
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
	hl("Delimiter", { fg = neon_vommit.fg_sub })
	hl("SpecialComment", { fg = neon_vommit.fg_comment })

	hl("Todo", { fg = neon_vommit.bg, bg = neon_vommit.warning, bold = true })
	hl("Error", { fg = neon_vommit.bg, bg = neon_vommit.error })
	hl("WarningMsg", { fg = neon_vommit.warning })

	hl("Title", { fg = neon_vommit.func, bold = true })

	-- Diff
	hl("DiffAdd", { bg = "#003300", fg = neon_vommit.added })
	hl("DiffDelete", { bg = "#330000", fg = neon_vommit.deleted })
	hl("DiffChange", { bg = "#333300", fg = neon_vommit.warning })
	hl("DiffText", { bg = "#444400", fg = neon_vommit.fg_main, bold = true })

	-- Cursor y selección
	hl("Cursor", { fg = neon_vommit.bg, bg = neon_vommit.cursor_fg })
	hl("CursorLine", { bg = neon_vommit.cursor_line })
	hl("CursorColumn", { bg = neon_vommit.cursor_line })
	hl("ColorColumn", { bg = neon_vommit.bg })

	hl("Visual", { bg = neon_vommit.selection })
	hl("VisualNOS", { bg = neon_vommit.selection })

	-- Líneas
	hl("LineNr", { fg = neon_vommit.fg_sub, bg = neon_vommit.bg })
	hl("CursorLineNr", { fg = neon_vommit.func, bg = neon_vommit.cursor_line, bold = true })
	hl("SignColumn", { bg = neon_vommit.bg })
	hl("Folded", { fg = neon_vommit.fg_comment, bg = neon_vommit.bg })
	hl("FoldColumn", { fg = neon_vommit.fg_comment, bg = neon_vommit.bg })

	-- Estado
	hl("StatusLine", { fg = neon_vommit.fg_main, bg = "#333333", bold = true })
	hl("StatusLineNC", { fg = neon_vommit.fg_comment, bg = "#333333" })
	hl("WinBar", { fg = neon_vommit.fg_main, bg = neon_vommit.bg })
	hl("WinBarNC", { fg = neon_vommit.fg_comment, bg = neon_vommit.bg })
	hl("VertSplit", { fg = neon_vommit.fg_sub, bg = neon_vommit.fg_sub })

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
	hl("markdownBold", { fg = neon_vommit.fg_main, bold = true })
	hl("markdownItalic", { fg = neon_vommit.fg_main, bold = true })
	hl("markdownH1", { fg = neon_vommit.func, bold = true })
	hl("markdownH2", { fg = neon_vommit.func, bold = true })
	hl("markdownH3", { fg = neon_vommit.yellow, bold = true })
	hl("markdownLink", { fg = neon_vommit.func, underline = true })
	hl("markdownCode", { fg = neon_vommit.keyword })
	hl("markdownListMarker", { fg = neon_vommit.purple })
	hl("markdownHeadingRule", { fg = neon_vommit.operator })
	hl("markdownUrl", { fg = neon_vommit.fg_main })

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
	hl("jsonKeyword", { fg = neon_vommit.fg_main })
	hl("jsonString", { fg = neon_vommit.string_html })
	hl("jsonNumber", { fg = neon_vommit.func })
	hl("jsonEscape", { fg = neon_vommit.operator })

	-- Misc
	hl("Underlined", { fg = neon_vommit.func, underline = true })
	hl("Ignore", { fg = neon_vommit.fg_comment })
	hl("NonText", { fg = neon_vommit.whitespace })
	hl("EndOfBuffer", { fg = neon_vommit.bg })

	-- Treesitter
	hl("TSComment", { fg = neon_vommit.fg_comment, italic = true })
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
end

return M
