---@class MDT_Legacy
local addon = select(2, ...)
local API = _G.MythicDungeonToolsAPI

if not API or type(API.RegisterUIInitializer) ~= "function" or not addon:GenericVersionCheck("MythicDungeonTools", "5.6.0") then
  return
end

API:RegisterUIInitializer(function(UI)
  UI:RegisterDungeonData(addon.Data, addon.Seasons)
end)
