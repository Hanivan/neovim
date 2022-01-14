local ls = require("luasnip")
-- local s = ls.snippet

ls.config.set_config({
	history = true,
	updateevents = "TextChanged,TextChangedI",
})

ls.snippets = { all = {}, html = {} }

-- enable html snippets in javascript/javascript(REACT)
ls.snippets.javascript = ls.snippets.html
ls.snippets.javascriptreact = ls.snippets.html
ls.snippets.typescriptreact = ls.snippets.html
require("luasnip.loaders.from_vscode").load({ include = { "html" } })
require("luasnip.loaders.from_vscode").load({ include = { "javascriptreact" } })

--[[
-- Beside defining your own snippets you can also load snippets from "vscode-like" packages
-- that expose snippets in json files, for example <https://github.com/rafamadriz/friendly-snippets>.
-- Mind that this will extend  `ls.snippets` so you need to do it after your own snippets or you
-- will need to extend the table yourself instead of setting a new one.
]]

-- require("luasnip/loaders/from_vscode").load({ include = { "python" } }) -- Load only python snippets
-- require("luasnip/loaders/from_vscode").load({ paths = { "~/.config/nvim/extra/snippets" } }) -- Load snippets from my-snippets folder

-- You can also use lazy loading so you only get in memory snippets of languages you use
require("luasnip.loaders.from_vscode").lazy_load({
	paths = { "~/.config/nvim/extra/snippets" },
})
