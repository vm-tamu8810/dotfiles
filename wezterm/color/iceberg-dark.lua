local palette = {
	color00 = "#1E2132",
	color01 = "#E27878",
	color02 = "#B4BE82",
	color03 = "#E2A478",
	color04 = "#84A0C6",
	color05 = "#A093C7",
	color06 = "#89B8C2",
	color07 = "#C6C8D1",
	color08 = "#6B7089",
	color09 = "#E98989",
	color0A = "#C0CA8E",
	color0B = "#E9B189",
	color0C = "#91ACD1",
	color0D = "#ADA0D3",
	color0E = "#95C4CE",
	color0F = "#D2D4DE",
}

return {
	palette = palette,
	colors = {
		background = palette.color00,
		foreground = palette.color07,
		cursor_bg = palette.color07,
		cursor_fg = palette.color00,
		cursor_border = palette.color07,
		selection_bg = palette.color06,
		selection_fg = palette.color00,
		ansi = {
			palette.color00,
			palette.color01,
			palette.color02,
			palette.color03,
			palette.color04,
			palette.color05,
			palette.color06,
			palette.color07,
		},
		brights = {
			palette.color08,
			palette.color09,
			palette.color0A,
			palette.color0B,
			palette.color0C,
			palette.color0D,
			palette.color0E,
			palette.color0F,
		},
		tab_bar = {
			background = palette.color00,
			active_tab = {
				bg_color = palette.color07,
				fg_color = palette.color00,
			},
			inactive_tab = {
				bg_color = palette.color00,
				fg_color = palette.color07,
			},
			inactive_tab_hover = {
				bg_color = palette.color00,
				fg_color = palette.color07,
				italic = false,
			},
		},
	},
}

