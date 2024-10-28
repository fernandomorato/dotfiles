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

config.keys = {
  { -- Split Horizontal
    key = "-",
    mods = "CTRL",
    action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
  },
  { -- Split Vertical
    key = "\\",
    mods = "CTRL",
    action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
  },
  -- Move focus to the pane on the left
  {
    key = "h",
    mods = "CTRL|SHIFT",
    action = wezterm.action.ActivatePaneDirection("Left"),
  },
  -- Move focus to the pane on the right
  {
    key = "l",
    mods = "CTRL|SHIFT",
    action = wezterm.action.ActivatePaneDirection("Right"),
  },
  -- Move focus to the pane above
  {
    key = "k",
    mods = "CTRL|SHIFT",
    action = wezterm.action.ActivatePaneDirection("Up"),
  },
  -- Move focus to the pane below
  {
    key = "j",
    mods = "CTRL|SHIFT",
    action = wezterm.action.ActivatePaneDirection("Down"),
  },
  -- Resize Pane Up
  {
    key = "K",
    mods = "ALT|SHIFT",
    action = wezterm.action.AdjustPaneSize({ "Up", 1 }),  -- Increase height
  },
  -- Resize Pane Down
  {
    key = "J",
    mods = "ALT|SHIFT",
    action = wezterm.action.AdjustPaneSize({ "Down", 1 }),  -- Decrease height
  },
  -- Resize Pane Left
  {
    key = "H",
    mods = "ALT|SHIFT",
    action = wezterm.action.AdjustPaneSize({ "Left", 1 }),  -- Decrease width
  },
  -- Resize Pane Right
  {
    key = "L",
    mods = "ALT|SHIFT",
    action = wezterm.action.AdjustPaneSize({ "Right", 1 }),  -- Increase width
  },
}

-- Return the configuration to wezterm
return config
