-- Pull in the wezterm API
local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Color Scheme
config.color_scheme = "Gruvbox Material (Gogh)"
config.font = wezterm.font("MesloLGL Nerd Font")
config.font_size = 12

-- Tab bar
config.enable_tab_bar = false
config.window_decorations = "RESIZE"

-- Window Background
config.window_background_opacity = 0.9
config.macos_window_background_blur = 10
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
    key = "k",
    mods = "ALT|SHIFT",
    action = wezterm.action.AdjustPaneSize({ "Up", 5 }),  -- Increase height
  },
  -- Resize Pane Down
  {
    key = "j",
    mods = "ALT|SHIFT",
    action = wezterm.action.AdjustPaneSize({ "Down", 5 }),  -- Decrease height
  },
  -- Resize Pane Left
  {
    key = "h",
    mods = "ALT|SHIFT",
    action = wezterm.action.AdjustPaneSize({ "Left", 5 }),  -- Decrease width
  }, -- Resize Pane Right
  {
    key = "l",
    mods = "ALT|SHIFT",
    action = wezterm.action.AdjustPaneSize({ "Right", 5 }),  -- Increase width
  },
}

-- Return the configuration to wezterm
return config
