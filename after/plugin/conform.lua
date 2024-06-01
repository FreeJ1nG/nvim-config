local conform = require("conform")

conform.setup({
	formatters_by_ft = {
		javascript = { { "prettierd", "prettier" }, { "eslint", "eslint_d" } },
		typescript = { { "prettierd", "prettier" }, { "eslint", "eslint_d" } },
		javascriptreact = { { "prettierd", "prettier" }, { "eslint", "eslint_d" } },
		typescriptreact = { { "prettierd", "prettier" }, { "eslint", "eslint_d" } },
		svelte = { "prettierd" },
		css = { "cssls", "prettierd" },
		html = { "prettierd" },
		json = { "prettierd" },
		yaml = { "prettierd" },
		markdown = { "prettierd" },
		graphql = { "prettierd" },
		lua = { "stylua" },
		python = { "isort", "black" },
		go = { "gci", "goimports", "golines", "gomodifytags" },
		terraform = { "terraform_fmt" },
	},
	format_on_save = {
		lsp_fallback = true,
		async = true,
		timeout_ms = 1500,
	},
})

vim.keymap.set({ "n", "v" }, "<leader>mp", function()
	conform.format({
		lsp_fallback = true,
		async = false,
		timeout_ms = 500,
	})
end, { desc = "Format file or range (in visual mode)" })
