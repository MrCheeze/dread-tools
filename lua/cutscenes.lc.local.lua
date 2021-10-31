-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: lua/cutscenes.lc.local 

-- params : ...
-- function num : 0
(Game.ImportLibrary)("system/scripts/scenario.lua")
local l_0_0 = _G
local l_0_1 = setmetatable
local l_0_2 = Cutscenes
local l_0_3 = {}
l_0_3.__index = _G
l_0_1(l_0_2, l_0_3)
l_0_1 = setfenv
l_0_2 = 1
l_0_3 = Cutscenes
l_0_1(l_0_2, l_0_3)
l_0_1 = function()
  -- function num : 0_0
end

main = l_0_1
l_0_1 = function()
  -- function num : 0_1
  (Game.LoadScenario)(NextLevelId, NextScenearioId, NextStartPoint, "", 1)
end

OnEnd_LoadingCutscene = l_0_1
l_0_1 = function(l_3_0)
  -- function num : 0_2
  for l_3_4,l_3_5 in pairs(l_3_0) do
    (Game.HideScenarioItemByName)((string.lower)(l_3_5), true)
  end
end

HideEntities = l_0_1
l_0_1 = function(l_4_0)
  -- function num : 0_3
  for l_4_4,l_4_5 in pairs(l_4_0) do
    (Game.HideScenarioItemByName)((string.lower)(l_4_5), false)
  end
end

ShowEntities = l_0_1

