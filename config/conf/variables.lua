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
M.songDetailScript = "~/.local/bin/song_detail.sh"
M.reloadScript = "~/.local/bin/reload_all_services.sh"

-- rofi is gone; these open widgets in the shell's center island. Ids are
-- listed by `qs ipc call island list`.
M.launcherScript = "qs ipc call island toggle launcher"
M.islandHome = "qs ipc call island toggle home"
M.themeWidget = "qs ipc call island toggle theme"
M.clipboardWidget = "qs ipc call island toggle clipboard"
M.emojiWidget = "qs ipc call island toggle emoji"
M.agentsWidget = "qs ipc call island toggle agents"
M.pomodoroWidget = "qs ipc call island toggle pomodoro"
M.settingsWidget = "qs ipc call island toggle settings"

----------------------------
-- QUICKSHELL --
----------------------------

-- The shell is a directory symlink to ~/.config/quickshell, which Quickshell
-- registers as its 'default' config, so the invocation is plain `qs` —
-- `qs -c quickshell` does NOT work here (verified).
M.quickshell = "qs"
M.quickshellDismissAll = "qs ipc call popups closeAll"

return M
