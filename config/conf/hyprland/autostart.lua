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
    hl.exec_cmd("/usr/lib/xdg-desktop-portal")
    hl.exec_cmd("usr/lib/xdg-desktop-portal-hyprland")

    -- Quickshell is the whole shell: bar, frame, notifications, launcher,
    -- emoji picker, wallpaper control (via awww), and the polkit agent. It
    -- replaced waybar/rofi/dunst/eww/hyprpaper/hyprpolkitagent.
    hl.exec_cmd(vars.quickshell)

    -- awww's daemon is started here rather than by the shell: a child process
    -- of `qs` dies with it, but the daemon needs to outlive shell restarts so
    -- the wallpaper does not blink out every time the config reloads.
    hl.exec_cmd("awww-daemon")

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