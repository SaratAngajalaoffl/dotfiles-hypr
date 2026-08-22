-- Created on: Sun Feb 01 2026
-- System: mugiwara@loki.local
-- Adjust monitor setup and transformations below as needed.

local vars = require("conf.variables")

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
hl.monitor({ output = vars.monitor1, mode = "preferred", position = "0x0",      scale = 1, bitdepth = 10 })
hl.monitor({ output = vars.monitor2, mode = "preferred", position = "2560x0",   scale = 1, bitdepth = 10 })
