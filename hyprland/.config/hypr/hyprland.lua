-- moduls works in this way
package.path = os.getenv("HOME") .. "/dotfiles/hyprland/.config/hypr/?.lua;" .. package.path

---- MONITORS ----
require("./modules.monitors")
---- KEYBINDINGS ----
require("modules.keymaps")
---- AUTOSTART ----
require("modules.autostart")
---- ENVIRONMENT VARIABLES ----
require("modules.env")
----- PERMISSIONS -----
require("modules.permissions")
---- LOOK AND FEEL ----
require("modules.look-and-feel")
----  MISC  ----
require("modules.misc")
---- INPUT ----
require("modules.input")
---- WINDOWS AND WORKSPACES ----
require("modules.workspaces")

