local wezterm = require("wezterm")
local colors = require("color").colors.tab_bar

local function format_right_status()
	return {
		{ Background = { Color = colors.inactive_tab.bg_color } },
		{ Foreground = { Color = colors.inactive_tab.fg_color } },
		{ Text = os.date("󱑍 %H:%M ") },
	}
end

local M = {}

M.setup = function()
	wezterm.on("update-right-status", function(window, pane)
		window:set_right_status(wezterm.format(format_right_status()))
	end)
end

return M

