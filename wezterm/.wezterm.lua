-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {
	font_size = 16,
}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = "Catppuccin Mocha"
config.color_scheme = "rose-pine"

-- config.font = wezterm.font("JetBrains Mono")
config.font = wezterm.font("FiraCode Nerd Font", { weight = "Medium" })
config.font_size = 16
-- config.window_background_opacity = 0.9
config.window_decorations = "RESIZE"
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

config.initial_cols = 200
config.initial_rows = 50

-- and finally, return the configuration to wezterm
return config
