---@class MDT_Legacy
local addon = select(2, ...)

addon.Data = {
  L = setmetatable({}, { __index = function(_, key) return key end }),
  dungeonEnemies = {},
  dungeonList = {},
  dungeonMaps = {},
  dungeonSubLevels = {},
  dungeonTotalCount = {},
  mapInfo = {},
  mapPOIs = {},
  scaleMultiplier = {},
  zoneIdToDungeonIdx = {},
}

if addon:IsRetail() then
  addon.Seasons = {
    { name = "The War Within Season 3", dungeons = { 123, 30, 37, 38, 113, 111, 115, 119 } },
    { name = "The War Within Season 2", dungeons = { 115, 116, 117, 118, 119, 120, 121, 122 } },
    { name = "The War Within Season 1", dungeons = { 31, 35, 19, 110, 111, 112, 113, 114 } },
    { name = "Dragonflight Season 4", dungeons = { 45, 44, 48, 49, 43, 50, 42, 51 } },
    { name = "Dragonflight Season 3", dungeons = { 15, 103, 104, 4, 100, 101, 105, 102 } },
    { name = "Dragonflight Season 2", dungeons = { 48, 49, 16, 50, 8, 22, 51, 77 } },
    { name = "Dragonflight Season 1", dungeons = { 45, 44, 3, 6, 47, 43, 42, 46 } },
    { name = "Shadowlands Season 4", dungeons = { 40, 38, 25, 122, 41, 9, 10, 37 } },
    { name = "Shadowlands", dungeons = { 29, 38, 30, 35, 31, 32, 33, 34, 37, 121 } },
    { name = "BFA", dungeons = { 15, 16, 17, 120, 18, 19, 20, 23, 22, 102, 25, 122 } },
    { name = "Legion", dungeons = { 12, 103, 2, 3, 4, 5, 6, 9, 7, 8, 11, 10, 13 } },
    { name = "Mists of Pandaria", dungeons = { 130, 131, 132, 133, 134, 135, 136, 137, 138 } },
  }
end
