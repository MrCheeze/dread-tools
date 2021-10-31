-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: lua/logiccallbacks.lc.local 

-- params : ...
-- function num : 0
logiccallbacks = {}
-- DECOMPILER ERROR at PC4: Confused about usage of register: R0 in 'UnsetPending'

logiccallbacks.OnPlayerDead = function(l_1_0)
  -- function num : 0_0
  if PoisonZone ~= nil then
    (PoisonZone.OnPlayerDead)()
  end
  if HeatZone ~= nil then
    (HeatZone.OnPlayerDead)()
  end
  if DamagePlants ~= nil then
    (DamagePlants.OnPlayerDead)()
  end
  if WaterZone ~= nil then
    (WaterZone.OnPlayerDead)()
  end
  if LavaZone ~= nil then
    (LavaZone.OnPlayerDead)()
  end
  if fxcallbacks then
    (fxcallbacks.OnPlayerDead)()
  end
end

-- DECOMPILER ERROR at PC7: Confused about usage of register: R0 in 'UnsetPending'

logiccallbacks.OnQuit = function()
  -- function num : 0_1
  (logiccallbacks.OnPlayerDead)("")
end


