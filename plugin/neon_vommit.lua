-- plugin/neon_vommit.lua
-- Entry point: registra el tema para que aparezca en `:colorscheme`

-- Función para cargar el tema
local function load()
	-- Limpiar tema anterior
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	-- Cargar definición
	require("neon_vommit")

	-- Marcar como actual
	vim.g.colors_name = "neon_vommit"
end

-- 🟩 Registramos el nombre para que aparezca en `:colorscheme`
-- Esto activa el autocompletado
if not vim.g.loaded_colorschemes then
	vim.g.loaded_colorschemes = {}
end
vim.g.loaded_colorschemes["neon_vommit"] = true

-- Cargar si ya se pidió
if vim.g.colors_name == "neon_vommit" then
	load()
end

-- Escuchar cambios a `colors_name`
vim.api.nvim_create_autocmd("OptionSet", {
	pattern = "colors_name",
	callback = function()
		if vim.v.option_new == "neon_vommit" then
			load()
		end
	end,
})

-- Permitir `:colorscheme neon_vommit` (para compatibilidad)
vim.api.nvim_create_user_command("Colorscheme", function(opts)
	if opts.args == "neon_vommit" then
		vim.g.colors_name = "neon_vommit"
		load()
	end
end, {
	nargs = 1,
	complete = function()
		return { "neon_vommit" }
	end,
})
