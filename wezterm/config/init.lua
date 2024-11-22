local wezterm = require("wezterm")

local config = {}
config.__index = config

function config:setup()
	local config = setmetatable({ options = {} }, self)
	return config
end

function config:append(options)
	for name, value in pairs(options) do
		self.options[name] = value
	end
	return self
end

return config

