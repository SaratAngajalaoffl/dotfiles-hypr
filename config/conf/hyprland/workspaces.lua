------------------------------------------------------------------------------------------
-- HYPRLAND WORKSPACES
------------------------------------------------------------------------------------------

-- Created by mugiwara@loki.local on Sun Feb 01 2026

-- This file contains workspaces for the Hyprland configuration.

local vars = require("conf.variables")

hl.workspace_rule({ workspace = "1",  monitor = vars.monitor1 })
hl.workspace_rule({ workspace = "2",  monitor = vars.monitor2, layout = "scrolling" })
hl.workspace_rule({ workspace = "3",  monitor = vars.monitor2 })
hl.workspace_rule({ workspace = "4",  monitor = vars.monitor2 })
hl.workspace_rule({ workspace = "5",  monitor = vars.monitor2 })
hl.workspace_rule({ workspace = "6",  monitor = vars.monitor1 })
hl.workspace_rule({ workspace = "7",  monitor = vars.monitor2 })
hl.workspace_rule({ workspace = "8",  monitor = vars.monitor1 })
hl.workspace_rule({ workspace = "9",  monitor = vars.monitor2, layout = "scrolling" })
hl.workspace_rule({ workspace = "10", monitor = vars.monitor2, layout = "scrolling" })

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
