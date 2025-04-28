local wezterm = require('wezterm')

local config = wezterm.config_builder()

config.font = wezterm.font('VictorMono Nerd Font Mono')
config.font_size = 14
config.color_scheme = "GruvboxDarkHard"
config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.9
config.enable_scroll_bar =  false
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

return config
