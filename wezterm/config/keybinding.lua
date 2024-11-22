local wezterm = require("wezterm")
local action = wezterm.action

return {
	disable_default_key_bindings = true,
	leader = { key = "Space", mods = "CTRL" },
	keys = {
		{
			key = "y",
			mods = "LEADER",
			action = action.CopyTo("Clipboard"),
		},
		{
			key = "p",
			mods = "LEADER",
			action = action.PasteFrom("Clipboard"),
		},
		{
			key = "w",
			mods = "LEADER",
			action = action.SpawnTab("DefaultDomain"),
		},
		{
			key = "Q",
			mods = "LEADER",
			action = action.CloseCurrentTab({ confirm = false }),
		},
		{
			key = "[",
			mods = "LEADER",
			action = action.ActivateTabRelative(-1),
		},
		{
			key = "]",
			mods = "LEADER",
			action = action.ActivateTabRelative(1),
		},
		{
			key = "s",
			mods = "LEADER",
			action = action.SplitVertical({ domain = "CurrentPaneDomain" }),
		},
		{
			key = "v",
			mods = "LEADER",
			action = action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
		},
		{
			key = "q",
			mods = "LEADER",
			action = action.CloseCurrentPane({ confirm = false }),
		},
		{
			key = "S",
			mods = "LEADER",
			action = action.ActivateKeyTable({
				name = "resize_pane",
				one_shot = false,
			}),
		},
		{
			key = "h",
			mods = "LEADER",
			action = action.ActivatePaneDirection("Left"),
		},
		{
			key = "j",
			mods = "LEADER",
			action = action.ActivatePaneDirection("Down"),
		},
		{
			key = "k",
			mods = "LEADER",
			action = action.ActivatePaneDirection("Up"),
		},
		{
			key = "l",
			mods = "LEADER",
			action = action.ActivatePaneDirection("Right"),
		},
		{
			key = "r",
			mods = "LEADER",
			action = action.PromptInputLine({
				description = "Enter new name for tab",
				action = wezterm.action_callback(function(window, pane, line)
					if line then
						window:active_tab():set_title(line)
					end
				end)
			}),
		},
		{
			key = "c",
			mods = "LEADER",
			action = action.ActivateCopyMode,
		},
	},
	key_tables = {
		resize_pane = {
			{
				key = "h",
				action = action.AdjustPaneSize({ "Left", 1 }),
			},
			{
				key = "j",
				action = action.AdjustPaneSize({ "Down", 1 }),
			},
			{
				key = "k",
				action = action.AdjustPaneSize({ "Up", 1 }),
			},
			{
				key = "l",
				action = action.AdjustPaneSize({ "Right", 1 }),
			},
			{
				key = 'Escape',
				action = 'PopKeyTable',
			},
		},
	},
}

