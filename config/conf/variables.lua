------------------------------------------------------------------------------------------
-- HYPRLAND VARIABLES
------------------------------------------------------------------------------------------

-- Created by mugiwara@loki.local on Sun Feb 01 2026

-- Shared values, required by other conf files with:
--   local vars = require("conf.variables")
-- (each require() gets its own scope, so these can't just be `local` in-place)

local M = {}

M.mainMod = "SUPER" -- Sets "Windows" key as main modifier

-----------------
-- MONITORS --
-----------------

M.monitor1 = "DP-3"
M.monitor2 = "HDMI-A-2"

-----------------
-- PROGRAMS --
-----------------

M.terminal = "kitty"
M.fileManager = "thunar"
M.browser = "google-chrome-stable"
M.menu = "rofi -show drun"
M.picker = "hyprpicker -al"
M.lock = "hyprlock"
M.editor = "cursor"
M.screenshot = [[grim -g "$(slurp)" - | wl-copy]]

-------------------------
-- CACHE VARIABLES --
-------------------------

M.wallpaperCache = "~/.cache/appearance/wallpaper.png"
M.pfpCache = "~/.cache/appearance/pfp.jpg"

--------------------------
-- SCRIPT VARIABLES --
--------------------------

M.wallpaperScript = "~/.local/bin/select_wallpaper.sh"
M.toggleRofiScript = "~/.local/bin/toggle_rofi.sh"
M.songDetailScript = "~/.local/bin/song_detail.sh"
M.reloadScript = "~/.local/bin/reload_all_services.sh"

return M
