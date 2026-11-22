hl.on("hyprland.start", function()
  --   dunst is a notifications program
  --   and configuration path ~/.config/dunst/dunstrc
  hl.exec_cmd("dunst")
  hl.exec_cmd("nm-applet")
  hl.exec_cmd("waybar")
  hl.exec_cmd("hyprctl setcursor Bibata-Modern-Classic 18")
  -- hypridle
  -- block automatically window
  hl.exec_cmd("hypridle")
  hl.exec_cmd("hyprpaper")
end)
