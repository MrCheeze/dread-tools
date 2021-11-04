local L0_1, L1_1, L2_1
L0_1 = Game
L0_1 = L0_1.ImportLibrary
L1_1 = "system/scripts/fxcallbacks.lua"
L2_1 = false
L0_1(L1_1, L2_1)
L0_1 = Game
L0_1 = L0_1.ImportLibrary
L1_1 = "actors/props/heatzone/scripts/heatzone.lua"
L2_1 = false
L0_1(L1_1, L2_1)
L0_1 = {}
L0_1.iInsideCount = 0
L0_1.sFXLavaZone = "inflames"
LavaZone = L0_1
L0_1 = LavaZone
function L1_1()
  local L0_2, L1_2
end
L0_1.main = L1_1
L0_1 = LavaZone
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = LavaZone
  L0_2.iInsideCount = 0
  L0_2 = fxcallbacks
  L0_2 = L0_2.SetFxEnabledOnPlayer
  L1_2 = LavaZone
  L1_2 = L1_2.sFXLavaZone
  L2_2 = false
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
end
L0_1.Reset = L1_1
L0_1 = LavaZone
function L1_1()
  local L0_2, L1_2
  L0_2 = LavaZone
  L0_2 = L0_2.Reset
  L0_2()
end
L0_1.OnPlayerDead = L1_1
L0_1 = LavaZone
function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  if A2_2 == true then
    L3_2 = LavaZone
    L3_2 = L3_2.OnEnter
    L3_2()
  end
end
L0_1.OnEnter = L1_1
L0_1 = LavaZone
function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  if A2_2 == true then
    L3_2 = LavaZone
    L3_2 = L3_2.OnExit
    L3_2()
  end
end
L0_1.OnExit = L1_1
L0_1 = LavaZone
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = utils
  L0_2 = L0_2.LOG
  L1_2 = utils
  L1_2 = L1_2.LOGTYPE_LOGIC
  L2_2 = "LavaZoneEnter inside count"
  L3_2 = LavaZone
  L3_2 = L3_2.iInsideCount
  L2_2 = L2_2 .. L3_2
  L0_2(L1_2, L2_2)
  L0_2 = LavaZone
  L0_2 = L0_2.iInsideCount
  if L0_2 == 0 then
    L0_2 = Game
    L0_2 = L0_2.GetGravitySuitOn
    L0_2 = L0_2()
    if not (0 < L0_2) then
      L0_2 = fxcallbacks
      L0_2 = L0_2.SetFxEnabledOnPlayer
      L1_2 = LavaZone
      L1_2 = L1_2.sFXLavaZone
      L2_2 = true
      L3_2 = true
      L0_2(L1_2, L2_2, L3_2)
    end
  end
  L0_2 = LavaZone
  L1_2 = LavaZone
  L1_2 = L1_2.iInsideCount
  L1_2 = L1_2 + 1
  L0_2.iInsideCount = L1_2
end
L0_1.OnEnter = L1_1
L0_1 = LavaZone
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = utils
  L0_2 = L0_2.LOG
  L1_2 = utils
  L1_2 = L1_2.LOGTYPE_LOGIC
  L2_2 = "LavaZoneExit inside count"
  L3_2 = LavaZone
  L3_2 = L3_2.iInsideCount
  L2_2 = L2_2 .. L3_2
  L0_2(L1_2, L2_2)
  L0_2 = LavaZone
  L1_2 = LavaZone
  L1_2 = L1_2.iInsideCount
  L1_2 = L1_2 - 1
  L0_2.iInsideCount = L1_2
  L0_2 = LavaZone
  L0_2 = L0_2.iInsideCount
  if L0_2 == 0 then
    L0_2 = Game
    L0_2 = L0_2.GetGravitySuitOn
    L0_2 = L0_2()
    if not (0 < L0_2) then
      L0_2 = fxcallbacks
      L0_2 = L0_2.SetFxEnabledOnPlayer
      L1_2 = LavaZone
      L1_2 = L1_2.sFXLavaZone
      L2_2 = false
      L3_2 = false
      L0_2(L1_2, L2_2, L3_2)
    end
  end
  L0_2 = LavaZone
  L0_2 = L0_2.iInsideCount
  if L0_2 < 0 then
    L0_2 = LavaZone
    L0_2.iInsideCount = 0
  end
end
L0_1.OnExit = L1_1
L0_1 = LavaZone
function L1_1()
  local L0_2, L1_2
  L0_2 = LavaZone
  L0_2 = L0_2.Reset
  L0_2()
end
L0_1.OnDisable = L1_1
