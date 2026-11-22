hl.config({
  general = {
    gaps_in          = 3,
    gaps_out         = 6,

    border_size      = 0,

    col              = {
      active_border   = "rgba(40404040)",
      inactive_border = "rgba(504945aa)",
    },

    snap             = {
      enabled = true,
    },

    -- Set to true to enable resizing windows by clicking
    -- and dragging on borders and gaps
    resize_on_border = true,

    allow_tearing    = false,

    layout           = "dwindle",
  },

  decoration = {
    rounding         = 10,
    rounding_power   = 10,

    -- Change transparency of focused and unfocused windows
    active_opacity   = 1.0,
    inactive_opacity = 1.0,

    dim_inactive     = true,
    dim_strength     = 0.2,

    shadow           = {
      enabled      = true,
      range        = 6,
      render_power = 3,
      color        = 0xee1a1a1a,
    },

    blur             = {
      enabled  = true,
      size     = 3,
      passes   = 1,
      vibrancy = 0.1696,
    },
  },

  animations = {
    enabled = true,
  },
})

-- Smooth animation profile
hl.curve("smooth",
  { type = "bezier", points = { { 0.53, -0.17 }, { 0.52, 0.98 }, }, })
hl.curve("smoothInOut",
  { type = "bezier", points = { { 0.57, 0.1 }, { 0.56, 1.25 }, }, })

hl.animation({
  leaf = "global",
  enabled = true,
  speed = 10,
  bezier = "smoothInOut",
})

hl.animation({
  leaf = "border",
  enabled = true,
  speed = 5,
  bezier = "smooth",
})

hl.animation({
  leaf = "windows",
  enabled = true,
  speed = 5,
  bezier = "smooth",
})

hl.animation({
  leaf = "windowsIn",
  enabled = true,
  speed = 4,
  bezier = "smooth",
  style = "popin 90%",
})

hl.animation({
  leaf = "windowsOut",
  enabled = true,
  speed = 4,
  bezier = "smoothInOut",
  style = "popin 90%",
})

hl.animation({
  leaf = "fadeIn",
  enabled = true,
  speed = 4,
  bezier = "smooth",
})

hl.animation({
  leaf = "fadeOut",
  enabled = true,
  speed = 4,
  bezier = "smoothInOut",
})

hl.animation({
  leaf = "fade",
  enabled = true,
  speed = 4,
  bezier = "smooth",
})

hl.animation({
  leaf = "layers",
  enabled = true,
  speed = 4,
  bezier = "smooth",
})

hl.animation({
  leaf = "layersIn",
  enabled = true,
  speed = 4,
  bezier = "smooth",
  style = "fade",
})

hl.animation({
  leaf = "layersOut",
  enabled = true,
  speed = 4,
  bezier = "smoothInOut",
  style = "fade",
})

hl.animation({
  leaf = "fadeLayersIn",
  enabled = true,
  speed = 4,
  bezier = "smooth",
})

hl.animation({
  leaf = "fadeLayersOut",
  enabled = true,
  speed = 4,
  bezier = "smoothInOut",
})

hl.animation({
  leaf = "workspaces",
  enabled = true,
  speed = 4,
  bezier = "smoothInOut",
  style = "slide",
})

hl.animation({
  leaf = "workspacesIn",
  enabled = true,
  speed = 4,
  bezier = "smooth",
  style = "slide",
})

hl.animation({
  leaf = "workspacesOut",
  enabled = true,
  speed = 4,
  bezier = "smoothInOut",
  style = "slide",
})

hl.animation({ leaf = "zoomFactor", enabled = true, speed = 5, bezier = "smooth", })

hl.config({
  dwindle = {
    preserve_split = true, -- You probably want this
  },
})

hl.config({
  master = {
    new_status = "master",
  },
})

hl.config({
  scrolling = {
    fullscreen_on_one_column = true,
  },
})

