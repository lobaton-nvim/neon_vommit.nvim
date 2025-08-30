-- plugin/neon_vommit.lua
-- Entry point: permite que `:colorscheme neon_vommit` funcione

local function load()
	-- Limpiar tema anterior
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	-- Cargar el tema
	require("neon_vommit")

	-- Establecer nombre
	vim.g.colors_name = "neon_vommit"
end

-- Cargar automáticamente si el usuario lo configuró
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

-- Permitir `:colorscheme neon_vommit`
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
