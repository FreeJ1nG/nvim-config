local conform = require("conform")

conform.setup({
	formatters_by_ft = {
		javascript = { { "eslint", "prettierd" } },
		typescript = { { "eslint", "prettierd" } },
		javascriptreact = { { "eslint", "prettierd" } },
		typescriptreact = { { "eslint", "prettierd" } },
		svelte = { "prettierd" },
		css = { "prettierd" },
		html = { "prettierd" },
		json = { "prettierd" },
		yaml = { "prettierd" },
		markdown = { "prettierd" },
		graphql = { "prettierd" },
		lua = { "stylua" },
		python = { "isort", "black" },
		go = { "gci", "goimports", "golines", "gomodifytags" },
	},
	format_on_save = {
		lsp_fallback = true,
		async = false,
		timeout_ms = 500,
	},
})

vim.keymap.set({ "n", "v" }, "<leader>mp", function()
	conform.format({
		lsp_fallback = true,
		async = false,
		timeout_ms = 500,
	})
end, { desc = "Format file or range (in visual mode)" })
