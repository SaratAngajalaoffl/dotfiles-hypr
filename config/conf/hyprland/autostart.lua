------------------------------------------------------------------------------------------
-- HYPRLAND AUTOSTART
------------------------------------------------------------------------------------------

-- Created by mugiwara@loki.local on Sun Feb 01 2026

-- This file contains autostart scripts for the Hyprland configuration.

local vars = require("conf.variables")

-- hl.exec_cmd(vars.terminal)
-- hl.exec_cmd("nm-applet")
-- hl.exec_cmd("waybar & hyprpaper & firefox")

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/
hl.on("hyprland.start", function()
    ------------------------
    -- PROGRAMS AUTOSTART --
    ------------------------
    hl.exec_cmd("systemctl --user start hyprpolkitagent")
    hl.exec_cmd("/usr/lib/xdg-desktop-portal")
    hl.exec_cmd("usr/lib/xdg-desktop-portal-hyprland")
    hl.exec_cmd("systemctl --user start hyprpolkitagent")
    hl.exec_cmd("waybar")
    hl.exec_cmd("eww daemon")
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("hyprsunset")
    hl.exec_cmd("nm-applet")
    hl.exec_cmd("gnome-keyring-daemon --start --components=secrets")
    hl.exec_cmd("openrgb --gui --startminimized")
    hl.exec_cmd("wl-paste --type text --watch cliphist store")
    hl.exec_cmd("wl-paste --type image --watch cliphist store")
    hl.exec_cmd("cliamp --daemon")

    -----------------------
    -- SCRIPT AUTOSTART --
    -----------------------
    hl.exec_cmd(vars.wallpaperScript)
end)
