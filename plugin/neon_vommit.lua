if vim.g.colors_name ~= "neon_vommit" and not vim.env.LAZY then
	return
end

require("colorscheme.neon_vommit")

vim.api.nvim_create_autocmd("OptionSet", {
	pattern = "colors_name",
	callback = function()
		if vim.v.option_old == "neon_vommit" or vim.v.option_new == "neon_vommit" then
			require("colorscheme.neon_vommit")
		end
	end,
})
