# Spec - Repository Specifications

## General Information

- **Name**: Dotfiles
- **Purpose**: Configurations for i3-based Linux desktop environment
- **Author**: Damian Posada
- **Target system**: Linux with X11, i3 window manager
- **Deployment method**: GNU Stow (symlinks to `~/.config/`)

## Repository Structure

```
Dotfiles/
├── i3/
│   └── config                 # i3 configuration (~/.config/i3/)
├── lf/
│   └── .config/lf/
│       ├── lfrc               # lf configuration
│       └── preview.sh         # Preview script
├── nvim/                      # Neovim (empty)
├── polybar/
│   ├── config.ini             # Polybar configuration
│   ├── launch.sh              # Launch script
│   └── weather.sh             # Weather script
├── tmux/
│   ├── .tmux.conf             # tmux configuration
│   ├── .tmux/                 # TPM plugins directory
│   └── .gitignore
├── wezterm/
│   └── wezterm.lua            # Wezterm configuration
├── AGENTS.md                  # Instructions for AI agents
├── SECURITY.md                # Security policy (template)
└── README.md                  # Repository documentation
```

## Program Specifications

### i3 Window Manager

| Property | Value |
|----------|-------|
| Config file | `i3/config` |
| Mod key | Mod4 (Windows key) |
| Terminal | wezterm |
| Launcher | rofi (bindcode $mod+40) |
| Floating terminal size | 1850x865 |
| Gaps outer | 4px |
| Gaps inner | 4px |
| Smart gaps | on |
| Default border | pixel 4 |
| Background script | `~/.scripts/random_background.sh` (1900s interval) |
| Lock screen | i3lock with custom wallpaper |

**Autostart programs**: dex, nm-applet, xss-lock, i3lock, cinnamon-settings-daemon, cinnamon-panel, caffeine, polybar

### Polybar

| Property | Value |
|----------|-------|
| Config file | `polybar/config.ini` |
| Bar name | example |
| Monitor | HDMI-1 (fallback: LVDS-1) |
| Height | 15pt |
| Font-0 | VictorMono Nerd Font Mono (13px) |
| Font-1 | Font Awesome 5 Free (13px) |
| Modules left | xworkspaces |
| Modules right | temperature, pulseaudio, memory, cpu, filesystem, systray, network, date |
| Network interface | wlo1 |
| Thermal zone | 2 (x86_pkg_temp) |

**Known bug**: Line 69 has typo `label-occupied-backgroud` → should be `label-occupied-background`

### Polybar Weather Script

| Property | Value |
|----------|-------|
| API | OpenWeatherMap |
| API key location | `~/.owm-key` |
| Default city | Buenos Aires, Argentina (AR) |
| Units | metric |
| Wind display | knots |
| Language | en |

### tmux

| Property | Value |
|----------|-------|
| Config file | `tmux/.tmux.conf` |
| Prefix | C-a |
| Status position | top |
| Base index | 1 (windows and panes) |
| Mouse | on |
| Mode keys | vi |
| Clipboard | system clipboard enabled |
| Escape time | 1ms |

**Plugins (TPM)**:
- tmux-plugins/tpm
- tmux-plugins/tmux-yank
- tmux-plugins/tmux-sensible
- tmux-plugins/tmux-continuum
- tmux-plugins/tmux-resurrect
- tmux-plugins/tmux-online-status
- tmux-plugins/tmux-battery
- tmux-plugins/tmux-weather
- christoomey/vim-tmux-navigator

**Resurrect strategy**: nvim session

### Wezterm

| Property | Value |
|----------|-------|
| Config file | `wezterm/wezterm.lua` |
| Color scheme | GruvboxDarkHard |
| Background | #000000 |
| Font size | 15 |
| Font | VictorMono Nerd Font Mono (commented) |
| Tab bar | disabled |
| Decorations | RESIZE only |
| Opacity | 0.7 |
| Padding | 0 (all sides) |
| Auto-reload | enabled |
| Scroll bar | disabled |
| EGL | preferred |

### lf File Manager

| Property | Value |
|----------|-------|
| Config file | `lf/.config/lf/lfrc` |
| Preview | enabled |
| Previewer | `~/.config/lf/preview.sh` |
| Icons | enabled |
| Scrolloff | 5 |
| Drawbox | enabled |
| Hidden files | shown |
| Editor mapping | `i` → nvim |
| Preview dependencies | bat, file |

**Quick navigation**:
- `gh` → ~
- `gd` → ~/Descargas
- `gg` → ~/Documentos

## System Dependencies

### Runtime
- i3, polybar, lf, tmux, wezterm
- X11 server

### Utilities
- rofi, nm-applet, dex, caffeine
- playerctl, pactl, xss-lock, i3lock
- cinnamon-settings-daemon, cinnamon-panel
- bat, acpi, curl
- GNU Stow (for installation)

### Fonts
- VictorMono Nerd Font Mono
- Font Awesome 5 Free

### tmux plugins
- TPM must be cloned to `~/.tmux/plugins/tpm/`

## Identified Issues

1. **polybar/config.ini:69** - Typo in xworkspaces configuration
2. **nvim/** - Empty directory, no configuration
3. **SECURITY.md** - Contains GitHub template text, not repository-specific

## Agent Workflow

When working in this repository:
1. No build, test, or lint commands (this is configuration, not code)
2. Changes are verified by restarting the corresponding program
3. For i3: `$mod+Shift+r` to restart, `$mod+Shift+c` to reload
4. For polybar: run `polybar/launch.sh`
5. For tmux: `prefix + r` to reload config
6. For wezterm: changes auto-reload (automatically_reload_config = true)
7. For lf: restart lf or use `:source` within lf
