local wezterm = require("wezterm")
local colors = require("color").colors.tab_bar

local function get_tab_colors(tab)
	local bg_color = colors.inactive_tab.bg_color
	local fg_color = colors.inactive_tab.fg_color

	if tab.is_active then
		bg_color = colors.active_tab.bg_color
		fg_color = colors.active_tab.fg_color
	end

	return bg_color, fg_color
end

local function format_tab_title(tab)
	local bg_color, fg_color = get_tab_colors(tab)
	local title = tab.tab_title

	if title == "" then
		title = tostring(tab.tab_id + 1)
	end

	return {
		{ Background = { Color = bg_color } },
		{ Foreground = { Color = fg_color } },
		{ Text = " " .. title .. " " },
	}
end

local M = {}

M.setup = function()
	wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
		return format_tab_title(tab)
	end)
end

return M

