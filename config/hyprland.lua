------------------------------------------------------------------------------------------
-- HYPRLAND CONFIGURATION
------------------------------------------------------------------------------------------

-- Created by mugiwara@loki.local on Sun Feb 01 2026
-- Migrated from hyprlang to Lua on 2026-08-22 (hyprlang deprecated since Hyprland 0.55)

-- This file is just an entrypoint, edit relevant files or create new ones to configure Hyprland.
-- See https://wiki.hypr.land/Configuring/Start/

--------------------------------------
-- Load all configuration files --
--------------------------------------

require("conf.hyprland.monitors")
require("conf.hyprland.keybinds")
require("conf.hyprland.windowrules")
require("conf.hyprland.workspaces")
require("conf.hyprland.look_and_feel")
require("conf.hyprland.autostart")
require("conf.hyprland.misc")
require("conf.hyprland.env")
require("conf.hyprland.input")
