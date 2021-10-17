local L0_1, L1_1
L0_1 = {}
L0_1.iInsideCount = 0
L0_1.pPlantsEntityCurrent = nil
L0_1.iLastUpdatedCount = 0
DamagePlants = L0_1
L0_1 = DamagePlants
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.ImportLibraryWithName
  L1_2 = "actors/characters/samus/scripts/samus.lua"
  L2_2 = "Samus"
  L0_2(L1_2, L2_2)
end
L0_1.main = L1_1
L0_1 = DamagePlants
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = DamagePlants
  L0_2.iInsideCount = 0
  L0_2 = DamagePlants
  L0_2 = L0_2.UpdateFeedback
  L1_2 = nil
  L0_2(L1_2)
  L0_2 = utils
  L0_2 = L0_2.LOG
  L1_2 = utils
  L1_2 = L1_2.LOGTYPE_LOGIC
  L2_2 = "DamagePlants.OnPlayerDead"
  L0_2(L1_2, L2_2)
end
L0_1.OnPlayerDead = L1_1
L0_1 = DamagePlants
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = DamagePlants
  L4_2 = DamagePlants
  L4_2 = L4_2.iInsideCount
  L4_2 = L4_2 + 1
  L3_2.iInsideCount = L4_2
  L3_2 = DamagePlants
  L3_2 = L3_2.UpdateFeedback
  L4_2 = A0_2
  L3_2(L4_2)
  L3_2 = utils
  L3_2 = L3_2.LOG
  L4_2 = utils
  L4_2 = L4_2.LOGTYPE_LOGIC
  L5_2 = "DamagePlants.OnEnter"
  L3_2(L4_2, L5_2)
end
L0_1.OnEnter = L1_1
L0_1 = DamagePlants
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A0_2 == nil then
    A0_2 = pPlantsEntityCurrent
  end
  if A0_2 ~= nil then
    L1_2 = print
    L2_2 = A0_2.sName
    L1_2(L2_2)
    L1_2 = A0_2.SCENEANIM
    if L1_2 ~= nil then
      L2_2 = DamagePlants
      L2_2 = L2_2.iInsideCount
      if 0 < L2_2 then
        L2_2 = Samus
        L2_2 = L2_2.IsESActive
        L2_2 = L2_2()
        if L2_2 then
          L1_2.sModelAnim = "damageblocked"
      end
      else
        L1_2.sModelAnim = "default"
      end
    end
  end
  L1_2 = DamagePlants
  L1_2 = L1_2.iInsideCount
  if L1_2 == 0 then
    L1_2 = nil
    pPlantsEntityCurrent = L1_2
  elseif A0_2 ~= nil then
    pPlantsEntityCurrent = A0_2
  end
  L1_2 = DamagePlants
  L1_2 = L1_2.iInsideCount
  if 0 < L1_2 then
    L1_2 = Samus
    L1_2 = L1_2.IsESActive
    L1_2 = L1_2()
    if not L1_2 then
      L1_2 = Game
      L1_2 = L1_2.GetPlayer
      L1_2 = L1_2()
      L2_2 = L1_2
      L1_2 = L1_2.PlayEntityLoop
      L3_2 = "actors/samus/damage_alarm.wav"
      L4_2 = 0.4
      L5_2 = 100000
      L6_2 = 100
      L7_2 = 1
      L8_2 = false
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
      L1_2 = Game
      L1_2 = L1_2.PlayEntitySound
      L2_2 = "levels/zarzas_pain_0"
      L3_2 = math
      L3_2 = L3_2.random
      L4_2 = 2
      L3_2 = L3_2(L4_2)
      L4_2 = ".wav"
      L2_2 = L2_2 .. L3_2 .. L4_2
      L3_2 = Game
      L3_2 = L3_2.GetPlayer
      L3_2 = L3_2()
      L3_2 = L3_2.sName
      L4_2 = 0.35
      L5_2 = 500
      L6_2 = 5000
      L7_2 = 0.8
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
      L1_2 = guicallbacks
      L1_2 = L1_2.OnPlayerContinuousDamageStart
      L1_2()
      L1_2 = utils
      L1_2 = L1_2.LOG
      L2_2 = utils
      L2_2 = L2_2.LOGTYPE_LOGIC
      L3_2 = "DamagePlants.DamageStart"
      L1_2(L2_2, L3_2)
  end
  else
    L1_2 = DamagePlants
    L1_2 = L1_2.iInsideCount
    if 0 < L1_2 then
      L1_2 = Samus
      L1_2 = L1_2.IsESActive
      L1_2 = L1_2()
      if L1_2 then
        goto lbl_99
      end
    end
    L1_2 = DamagePlants
    L1_2 = L1_2.iInsideCount
    if L1_2 == 0 then
      L1_2 = DamagePlants
      L1_2 = L1_2.iLastUpdatedCount
      ::lbl_99::
      if 0 < L1_2 then
        L1_2 = guicallbacks
        L1_2 = L1_2.OnPlayerContinuousDamageEnd
        L1_2()
        L1_2 = Game
        L1_2 = L1_2.GetPlayer
        L1_2 = L1_2()
        L2_2 = L1_2
        L1_2 = L1_2.StopEntityLoopWithFade
        L3_2 = "actors/samus/damage_alarm.wav"
        L4_2 = 0.6
        L1_2(L2_2, L3_2, L4_2)
        L1_2 = utils
        L1_2 = L1_2.LOG
        L2_2 = utils
        L2_2 = L2_2.LOGTYPE_LOGIC
        L3_2 = "DamagePlants.DamageEnd"
        L1_2(L2_2, L3_2)
      end
    end
  end
  L1_2 = DamagePlants
  L2_2 = DamagePlants
  L2_2 = L2_2.iInsideCount
  L1_2.iLastUpdatedCount = L2_2
end
L0_1.UpdateFeedback = L1_1
L0_1 = DamagePlants
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = DamagePlants
  L4_2 = DamagePlants
  L4_2 = L4_2.iInsideCount
  L4_2 = L4_2 - 1
  L3_2.iInsideCount = L4_2
  L3_2 = DamagePlants
  L3_2 = L3_2.UpdateFeedback
  L4_2 = A0_2
  L3_2(L4_2)
  L3_2 = DamagePlants
  L3_2 = L3_2.iInsideCount
  if L3_2 < 0 then
    L3_2 = DamagePlants
    L3_2.iInsideCount = 0
  end
  L3_2 = utils
  L3_2 = L3_2.LOG
  L4_2 = utils
  L4_2 = L4_2.LOGTYPE_LOGIC
  L5_2 = "DamagePlants.OnExit"
  L3_2(L4_2, L5_2)
end
L0_1.OnExit = L1_1
