------------------------------------------------------------------------------------------
-- HYPRLAND WORKSPACES
------------------------------------------------------------------------------------------

-- Created by mugiwara@loki.local on Sun Feb 01 2026

-- This file contains workspaces for the Hyprland configuration.

local vars = require("conf.variables")
local shell = require("conf.shell_settings")

-- Defaults below; the shell's settings widget can reassign any workspace to
-- another monitor (see conf/shell_settings.lua). Layouts always stay as set here.
local function on(ws, default)
    return shell.workspaces[ws] or default
end

hl.workspace_rule({ workspace = "1",  monitor = on("1",  vars.monitor1) })
hl.workspace_rule({ workspace = "2",  monitor = on("2",  vars.monitor2), layout = "scrolling" })
hl.workspace_rule({ workspace = "3",  monitor = on("3",  vars.monitor2) })
hl.workspace_rule({ workspace = "4",  monitor = on("4",  vars.monitor2) })
hl.workspace_rule({ workspace = "5",  monitor = on("5",  vars.monitor2) })
hl.workspace_rule({ workspace = "6",  monitor = on("6",  vars.monitor1) })
hl.workspace_rule({ workspace = "7",  monitor = on("7",  vars.monitor2) })
hl.workspace_rule({ workspace = "8",  monitor = on("8",  vars.monitor1) })
hl.workspace_rule({ workspace = "9",  monitor = on("9",  vars.monitor2), layout = "scrolling" })
hl.workspace_rule({ workspace = "10", monitor = on("10", vars.monitor2), layout = "scrolling" })

-- See https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/ for more
hl.config({
    scrolling = {
        column_width             = 0.9,
        direction                = "down",
        focus_fit_method         = 0,
        follow_focus             = true,
        follow_min_visible       = 0.4,
        fullscreen_on_one_column = true,
    },
})
