# Dotfiles

Dotfiles for a Linux i3-based desktop environment, configured by Damian Posada.

## Features by Program

### i3 (i3/)
- **Modifier**: Mod4 (Windows key)
- **Terminal**: Wezterm (opens with `$mod+Return`, floating window at 1850x865)
- **Application launcher**: rofi (`$mod+40`)
- **Multimedia controls**: Volume and playback controls with XF86 keys
- **Window management**: 4px gaps (inner/outer), smart_gaps enabled
- **Autostart**: dex for XDG applications, nm-applet, cinnamon-settings-daemon, caffeine, polybar
- **Screen lock**: i3lock with custom wallpaper
- **Wallpaper**: Automatic change every 1900s using `~/.scripts/random_background.sh`

### Polybar (polybar/)
- **Bar**: HDMI-1 monitor with LVDS-1 fallback
- **Left modules**: Workspaces (xworkspaces)
- **Right modules**: temperature, audio, memory, CPU, filesystem, systray, network, date
- **Fonts**: VictorMono Nerd Font Mono (13px), Font Awesome 5 Free
- **Weather**: OpenWeatherMap API integration (Buenos Aires, Argentina)
- **Colors**: Gruvbox-based scheme

### tmux (tmux/)
- **Prefix**: `C-a` (not default `C-b`)
- **Status bar**: Positioned at the top
- **Plugins** (via TPM):
  - tmux-yank (copy/paste)
  - tmux-resurrect (session save)
  - tmux-continuum (auto-save)
  - tmux-battery (battery status)
  - tmux-weather (weather)
  - vim-tmux-navigator (integrated navigation)
- **Navigation**: vim keys (h,j,k,l) to move between panes
- **Renumbering**: Windows and panes start at 1

### Wezterm (wezterm/)
- **Color scheme**: GruvboxDarkHard with black background
- **Transparency**: 0.7
- **Font**: VictorMono Nerd Font Mono (size 15)
- **Interface**: Tab bar disabled, resize-only decorations
- **Padding**: 0px on all sides
- **Auto-reload**: Config reloads on save

### lf (lf/.config/lf/)
- **File manager**: Terminal file manager with preview
- **Preview**: Uses `bat` for text files, `file` for others
- **Icons**: Enabled
- **Quick navigation**:
  - `gh` → `~`
  - `gd` → `~/Descargas`
  - `gg` → `~/Documentos`
- **Editor**: nvim (mapped to `i`)

### Neovim (nvim/)
- Directory present but empty (configuration pending)

## Installation with GNU Stow

This repository uses [GNU Stow](https://www.gnu.org/software/stow/) to manage symbolic links.

### Prerequisites

```bash
sudo pacman -S stow  # Arch Linux
sudo apt install stow  # Debian/Ubuntu
```

### Installation

1. Clone the repository to `~/.dotfiles` or your preferred location:
   ```bash
   git clone <repo-url> ~/.dotfiles
   cd ~/.dotfiles
   ```

2. Create the `~/.config` directory if it doesn't exist:
   ```bash
   mkdir -p ~/.config
   ```

3. Use stow to create symbolic links:
   ```bash
   stow -t ~/.config i3
   stow -t ~/.config polybar
   stow -t ~/.config tmux
   stow -t ~/.config wezterm
   stow -t ~/.config lf
   stow -t ~/.config nvim
   ```

   Or install everything at once:
   ```bash
   for dir in i3 polybar tmux wezterm lf nvim; do
     stow -t ~/.config "$dir"
   done
   ```

4. If stow reports conflicts, remove existing configuration files in `~/.config` first.

### Uninstallation

```bash
stow -t ~/.config -D i3  # Uninstall a program
```

## External Dependencies

### Main programs
- i3, polybar, lf, tmux, wezterm

### Additional tools
- **i3**: rofi, nm-applet, dex, caffeine, playerctl, pactl, xss-lock, i3lock, cinnamon-settings-daemon, cinnamon-panel
- **polybar**: curl (for weather), OpenWeatherMap API key in `~/.owm-key`
- **tmux**: TPM (must be cloned to `~/.tmux/plugins/tpm/`), acpi (battery)
- **lf**: bat (preview)

### Fonts
- VictorMono Nerd Font Mono
- Font Awesome 5 Free

## Known Issues

- **polybar/config.ini:69**: Typo: `label-occupied-backgroud` should be `label-occupied-background`
- **nvim/**: Empty directory, no Neovim configuration present
