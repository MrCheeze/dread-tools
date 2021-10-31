-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: lua/damageplants.lc.local 

-- params : ...
-- function num : 0
local l_0_0 = {}
l_0_0.iInsideCount = 0
l_0_0.pPlantsEntityCurrent = nil
l_0_0.iLastUpdatedCount = 0
DamagePlants = l_0_0
l_0_0 = DamagePlants
l_0_0.main = function()
  -- function num : 0_0
  (Game.ImportLibraryWithName)("actors/characters/samus/scripts/samus.lua", "Samus")
end

l_0_0 = DamagePlants
l_0_0.OnPlayerDead = function()
  -- function num : 0_1
  -- DECOMPILER ERROR at PC1: Confused about usage of register: R0 in 'UnsetPending'

  DamagePlants.iInsideCount = 0
  ;
  (DamagePlants.UpdateFeedback)(nil)
  ;
  (utils.LOG)(utils.LOGTYPE_LOGIC, "DamagePlants.OnPlayerDead")
end

l_0_0 = DamagePlants
l_0_0.OnEnter = function(l_3_0, l_3_1, l_3_2)
  -- function num : 0_2
  -- DECOMPILER ERROR at PC4: Confused about usage of register: R3 in 'UnsetPending'

  DamagePlants.iInsideCount = DamagePlants.iInsideCount + 1
  ;
  (DamagePlants.UpdateFeedback)(l_3_0)
  ;
  (utils.LOG)(utils.LOGTYPE_LOGIC, "DamagePlants.OnEnter")
end

l_0_0 = DamagePlants
l_0_0.UpdateFeedback = function(l_4_0)
  -- function num : 0_3
  if l_4_0 == nil then
    l_4_0 = pPlantsEntityCurrent
  end
  if l_4_0 ~= nil then
    print(l_4_0.sName)
    local l_4_1 = l_4_0.SCENEANIM
    if l_4_1 ~= nil then
      if DamagePlants.iInsideCount > 0 and (Samus.IsESActive)() then
        l_4_1.sModelAnim = "damageblocked"
      else
        l_4_1.sModelAnim = "default"
      end
    end
  end
  do
    if DamagePlants.iInsideCount == 0 then
      pPlantsEntityCurrent = nil
    else
      if l_4_0 ~= nil then
        pPlantsEntityCurrent = l_4_0
      end
    end
    if DamagePlants.iInsideCount > 0 and not (Samus.IsESActive)() then
      ((Game.GetPlayer)()):PlayEntityLoop("actors/samus/damage_alarm.wav", 0.40000000596046, 100000, 100, 1, false)
      ;
      (Game.PlayEntitySound)("levels/zarzas_pain_0" .. (math.random)(2) .. ".wav", ((Game.GetPlayer)()).sName, 0.34999999403954, 500, 5000, 0.80000001192093)
      ;
      (guicallbacks.OnPlayerContinuousDamageStart)()
      ;
      (utils.LOG)(utils.LOGTYPE_LOGIC, "DamagePlants.DamageStart")
    else
      if (DamagePlants.iInsideCount > 0 and (Samus.IsESActive)()) or DamagePlants.iInsideCount == 0 and DamagePlants.iLastUpdatedCount > 0 then
        (guicallbacks.OnPlayerContinuousDamageEnd)()
        ;
        ((Game.GetPlayer)()):StopEntityLoopWithFade("actors/samus/damage_alarm.wav", 0.60000002384186)
        ;
        (utils.LOG)(utils.LOGTYPE_LOGIC, "DamagePlants.DamageEnd")
      end
    end
    -- DECOMPILER ERROR at PC117: Confused about usage of register: R1 in 'UnsetPending'

    DamagePlants.iLastUpdatedCount = DamagePlants.iInsideCount
  end
end

l_0_0 = DamagePlants
l_0_0.OnExit = function(l_5_0, l_5_1, l_5_2)
  -- function num : 0_4
  -- DECOMPILER ERROR at PC4: Confused about usage of register: R3 in 'UnsetPending'

  DamagePlants.iInsideCount = DamagePlants.iInsideCount - 1
  ;
  (DamagePlants.UpdateFeedback)(l_5_0)
  -- DECOMPILER ERROR at PC14: Confused about usage of register: R3 in 'UnsetPending'

  if DamagePlants.iInsideCount < 0 then
    DamagePlants.iInsideCount = 0
  end
  ;
  (utils.LOG)(utils.LOGTYPE_LOGIC, "DamagePlants.OnExit")
end


