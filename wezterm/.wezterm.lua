-- Pull in the wezterm API
local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Color Scheme
config.color_scheme = "Kanagawa (Gogh)"
config.font = wezterm.font("MesloLGL Nerd Font")
config.font_size = 14

-- Window Background
config.window_background_opacity = 0.95
config.window_background_image = os.getenv("HOME") .. "/.dotfiles/wezterm/background/vagabond-2.jpg"
config.window_background_image_hsb = {
	brightness = 0.01, -- Float in range [0, 1]. The bigger, the brighter
}
config.text_background_opacity = 1.0

-- Return the configuration to wezterm
return config
