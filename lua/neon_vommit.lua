-- lua/neon_vommit.lua

local M = {}

-- Paleta de colores
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

-- Función principal para cargar el tema
function M.load()
	-- Limpiar antes de definir
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.o.termguicolors = true
	vim.g.colors_name = "neon_vommit"

	-- Aplicar todos los highlights
	hl("Normal", { fg = neon_vommit.fg, bg = neon_vommit.bg })
	hl("NormalNC", { bg = neon_vommit.bg })
	hl("NormalFloat", { bg = neon_vommit.bg, fg = neon_vommit.fg })
	hl("FloatBorder", { fg = neon_vommit.comment, bg = neon_vommit.bg })

	hl("Comment", { fg = neon_vommit.comment, italic = true })
	hl("Constant", { fg = neon_vommit.constant })
	hl("String", { fg = neon_vommit.string })
	hl("Number", { fg = neon_vommit.number })
	hl("Function", { fg = neon_vommit.func })
	hl("Keyword", { fg = neon_vommit.keyword })
	hl("Operator", { fg = neon_vommit.operator })
	hl("Type", { fg = neon_vommit.func })
	hl("TSFunction", { fg = neon_vommit.func })
	hl("TSKeyword", { fg = neon_vommit.keyword })
	hl("TSString", { fg = neon_vommit.string })
	hl("TSNumber", { fg = neon_vommit.number })

	-- Cursor
	hl("Cursor", { fg = neon_vommit.bg, bg = neon_vommit.fg })
	hl("CursorLine", { bg = "#3c3c3c" })
	hl("CursorColumn", { bg = "#3c3c3c" })
	hl("ColorColumn", { bg = "#333333" })

	-- Líneas
	hl("LineNr", { fg = "#3a3a3a", bg = neon_vommit.bg })
	hl("CursorLineNr", { fg = neon_vommit.func, bg = "#3c3c3c", bold = true })
	hl("SignColumn", { bg = neon_vommit.bg })

	-- Estado
	hl("StatusLine", { fg = neon_vommit.fg, bg = "#333333", bold = true })
	hl("StatusLineNC", { fg = neon_vommit.comment, bg = "#333333" })

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

	-- HTML
	hl("htmlTag", { fg = neon_vommit.keyword })
	hl("htmlArg", { fg = neon_vommit.func })

	-- CSS
	hl("cssAtRule", { fg = neon_vommit.yellow })
	hl("cssIdentifier", { fg = neon_vommit.func })

	-- Python
	hl("pythonBuiltin", { fg = neon_vommit.variable })
	hl("pythonFunction", { fg = neon_vommit.func })

	-- JavaScript / TypeScript
	hl("jsFunction", { fg = neon_vommit.func })
	hl("jsVariableDef", { fg = neon_vommit.variable })
	hl("tsType", { fg = neon_vommit.type })

	-- JSON
	hl("jsonString", { fg = neon_vommit.string_html })

	-- Treesitter
	hl("TSComment", { fg = neon_vommit.comment, italic = true })
	hl("TSFuncBuiltin", { fg = neon_vommit.variable })
	hl("TSVariableBuiltin", { fg = neon_vommit.keyword })
	hl("TSTypeBuiltin", { fg = neon_vommit.type })
	hl("TSField", { fg = neon_vommit.purple })
	hl("TSProperty", { fg = neon_vommit.purple })

	-- Misc
	hl("Todo", { fg = neon_vommit.bg, bg = neon_vommit.warning, bold = true })
	hl("Error", { fg = neon_vommit.bg, bg = neon_vommit.error })
	hl("WarningMsg", { fg = neon_vommit.warning })
end

return M
