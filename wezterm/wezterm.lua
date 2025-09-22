local wezterm = require('wezterm')

local config = wezterm.config_builder()

-- config.font = wezterm.font(
--   "VictorMono Nerd Font Mono,VictorMono NFM"
-- )
config.font_size = 15
config.color_scheme = "GruvboxDarkHard"
config.colors = {
    background = "#000000",
}
-- config.front_end = "WebGpu"
config.prefer_egl = true
config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.automatically_reload_config = true
config.window_background_opacity = 0.7
config.enable_scroll_bar =  false
config.adjust_window_size_when_changing_font_size = false
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

return config
