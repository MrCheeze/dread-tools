-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: lua/lavazone.lc.local 

-- params : ...
-- function num : 0
(Game.ImportLibrary)("system/scripts/fxcallbacks.lua", false)
;
(Game.ImportLibrary)("actors/props/heatzone/scripts/heatzone.lua", false)
local l_0_0 = {}
l_0_0.iInsideCount = 0
l_0_0.sFXLavaZone = "inflames"
LavaZone = l_0_0
l_0_0 = LavaZone
l_0_0.main = function()
  -- function num : 0_0
end

l_0_0 = LavaZone
l_0_0.Reset = function()
  -- function num : 0_1
  -- DECOMPILER ERROR at PC1: Confused about usage of register: R0 in 'UnsetPending'

  LavaZone.iInsideCount = 0
  ;
  (fxcallbacks.SetFxEnabledOnPlayer)(LavaZone.sFXLavaZone, false, false)
end

l_0_0 = LavaZone
l_0_0.OnPlayerDead = function()
  -- function num : 0_2
  (LavaZone.Reset)()
end

l_0_0 = LavaZone
l_0_0.OnEnter = function(l_4_0, l_4_1, l_4_2)
  -- function num : 0_3
  if l_4_2 == true then
    (LavaZone.OnEnter)()
  end
end

l_0_0 = LavaZone
l_0_0.OnExit = function(l_5_0, l_5_1, l_5_2)
  -- function num : 0_4
  if l_5_2 == true then
    (LavaZone.OnExit)()
  end
end

l_0_0 = LavaZone
l_0_0.OnEnter = function()
  -- function num : 0_5
  (utils.LOG)(utils.LOGTYPE_LOGIC, "LavaZoneEnter inside count" .. LavaZone.iInsideCount)
  if LavaZone.iInsideCount == 0 and (Game.GetGravitySuitOn)() <= 0 then
    (fxcallbacks.SetFxEnabledOnPlayer)(LavaZone.sFXLavaZone, true, true)
  end
  -- DECOMPILER ERROR at PC29: Confused about usage of register: R0 in 'UnsetPending'

  LavaZone.iInsideCount = LavaZone.iInsideCount + 1
end

l_0_0 = LavaZone
l_0_0.OnExit = function()
  -- function num : 0_6
  (utils.LOG)(utils.LOGTYPE_LOGIC, "LavaZoneExit inside count" .. LavaZone.iInsideCount)
  -- DECOMPILER ERROR at PC13: Confused about usage of register: R0 in 'UnsetPending'

  LavaZone.iInsideCount = LavaZone.iInsideCount - 1
  if LavaZone.iInsideCount == 0 and (Game.GetGravitySuitOn)() <= 0 then
    (fxcallbacks.SetFxEnabledOnPlayer)(LavaZone.sFXLavaZone, false, false)
  end
  -- DECOMPILER ERROR at PC35: Confused about usage of register: R0 in 'UnsetPending'

  if LavaZone.iInsideCount < 0 then
    LavaZone.iInsideCount = 0
  end
end

l_0_0 = LavaZone
l_0_0.OnDisable = function()
  -- function num : 0_7
  (LavaZone.Reset)()
end


