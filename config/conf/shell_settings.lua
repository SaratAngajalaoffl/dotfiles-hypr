------------------------------------------------------------------------------------------
-- SETTINGS FROM THE SHELL
------------------------------------------------------------------------------------------

-- The Quickshell settings widget writes conf/generated/shell_settings.lua
-- (gitignored) and runs `hyprctl reload`. This module loads it, falling back
-- to empty tables when it doesn't exist yet (fresh install, shell never run),
-- so every consumer can index it unconditionally:
--
--   config     -- passed to hl.config() last, overriding look_and_feel.lua
--   monitors   -- { [output] = { disabled = true } }, read by monitors.lua
--   workspaces -- { ["1"] = "DP-3", ... }, read by workspaces.lua
--
-- Anything the shell hasn't set keeps the value written in these conf files.

local ok, s = pcall(require, "conf.generated.shell_settings")
if not ok or type(s) ~= "table" then
    s = {}
end

s.config     = s.config     or {}
s.monitors   = s.monitors   or {}
s.workspaces = s.workspaces or {}

return s
