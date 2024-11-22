local config = require("config")

require("event.tab-title").setup()
require("event.window-title").setup()
require("event.right-status").setup()

return config:setup()
	:append(require("config.launch"))
	:append(require("config.appearance"))
	:append(require("config.keybinding")).options

