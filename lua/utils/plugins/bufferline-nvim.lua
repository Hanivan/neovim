require("bufferline").setup({
	highlights = {
		fill = {
			guifg = "#282c34",
			--guibg = "#1A1A24",
			guibg = "#21242b",
		},
		tab_close = {
			guibg = "#1A1A24",
		},
	},
	options = {
		offsets = { { filetype = "NvimTree", text = "File Explorer", padding = 1 } },
		buffer_close_icon = "",
		modified_icon = "",
		close_icon = "",
		show_close_icon = false,
		left_trunc_marker = "",
		right_trunc_marker = "",
		max_name_length = 14,
		max_prefix_length = 13,
		tab_size = 18,
		show_tab_indicators = true,
		enforce_regular_tabs = false,
		show_buffer_close_icons = true,
		separator_style = "thick",
		always_show_bufferline = true,
		diagnostics = "coc",
	},
})

-- rest of config ...

--- count is an integer representing total count of errors
--- level is a string "error" | "warning"
--- diagnostics_dict is a dictionary from error level ("error", "warning" or "info")to number of errors for each level.
--- this should return a string
--- Don't get too fancy as this function will be executed a lot
diagnostics_indicator = function(count, level, diagnostics_dict, context)
	local icon = level:match("error") and " " or " "
	return " " .. icon .. count
end

diagnostics_indicator = function(count, level, diagnostics_dict, context)
	if context.buffer:current() then
		return ""
	end

	return ""
end
