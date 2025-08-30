-- plugin/neon_vommit.lua

-- Registrar el tema como disponible para :colorscheme
if vim.g.loaded_colorschemes == nil then
	vim.g.loaded_colorschemes = {}
end

-- Marca este tema como "cargable"
if not vim.tbl_contains(vim.g.loaded_colorschemes, "neon_vommit") then
	table.insert(vim.g.loaded_colorschemes, "neon_vommit")
end

-- Función para cargar el tema
local function load()
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	require("neon_vommit")
	vim.g.colors_name = "neon_vommit"
end

-- Cargar si ya se pidió
if vim.g.colors_name == "neon_vommit" then
	load()
end

-- Escuchar cambios futuros a colors_name
vim.api.nvim_create_autocmd("OptionSet", {
	pattern = "colors_name",
	callback = function()
		if vim.v.option_new == "neon_vommit" then
			load()
		end
	end,
})
