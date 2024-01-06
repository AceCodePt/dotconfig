-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	{
		"elentok/format-on-save.nvim",
		config = function()
			local format_on_save = require("format-on-save")
			local formatters = require("format-on-save.formatters")

			format_on_save.setup({
				exclude_path_patterns = {
					"/node_modules/",
					".local/share/nvim/lazy",
				},
				formatter_by_ft = {

					-- Add conditional formatter that only runs if a certain file exists
					-- in one of the parent directories.
					typescript = {
						formatters.if_file_exists({
							pattern = ".eslintrc.*",
							formatter = formatters.eslint_d_fix
						}),
						formatters.if_file_exists({
							pattern = { ".prettierrc", ".prettierrc.*", "prettier.config.*" },
							formatter = formatters.prettierd,
						}),
					},
					typescriptreact = {
						formatters.if_file_exists({
							pattern = ".eslintrc.*",
							formatter = formatters.eslint_d_fix
						}),
						formatters.if_file_exists({
							pattern = { ".prettierrc", ".prettierrc.*", "prettier.config.*" },
							formatter = formatters.prettierd,
						}),
					},
					javascript = {
						formatters.if_file_exists({
							pattern = ".eslintrc.*",
							formatter = formatters.eslint_d_fix
						}),
						formatters.if_file_exists({
							pattern = { ".prettierrc", ".prettierrc.*", "prettier.config.*" },
							formatter = formatters.prettierd,
						}),
					},
				}
			})
		end
	}
}
