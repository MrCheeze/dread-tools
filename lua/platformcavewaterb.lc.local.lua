-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: lua/platformcavewaterb.lc.local 

-- params : ...
-- function num : 0
(Game.ImportLibraryWithName)("actors/props/usable/scripts/usable.lua", "Usable")
PlatformCaveWater = {}
local l_0_0 = setmetatable
local l_0_1 = PlatformCaveWater
local l_0_2 = {}
l_0_2.__index = Usable
l_0_0(l_0_1, l_0_2)
l_0_0 = PlatformCaveWater
l_0_1 = function(l_1_0, l_1_1)
  -- function num : 0_0
end

l_0_0.ShowDialogChoice = l_0_1
l_0_0 = PlatformCaveWater
l_0_1 = function(l_2_0)
  -- function num : 0_1
  (CurrentScenario.Event_WaterPoolInfiltration_Activate)()
end

l_0_0.OnUseCompleted = l_0_1

