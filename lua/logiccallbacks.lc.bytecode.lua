local L0_1, L1_1
L0_1 = {}
logiccallbacks = L0_1
L0_1 = logiccallbacks
function L1_1(A0_2)
  local L1_2
  L1_2 = PoisonZone
  if L1_2 ~= nil then
    L1_2 = PoisonZone
    L1_2 = L1_2.OnPlayerDead
    L1_2()
  end
  L1_2 = HeatZone
  if L1_2 ~= nil then
    L1_2 = HeatZone
    L1_2 = L1_2.OnPlayerDead
    L1_2()
  end
  L1_2 = DamagePlants
  if L1_2 ~= nil then
    L1_2 = DamagePlants
    L1_2 = L1_2.OnPlayerDead
    L1_2()
  end
  L1_2 = WaterZone
  if L1_2 ~= nil then
    L1_2 = WaterZone
    L1_2 = L1_2.OnPlayerDead
    L1_2()
  end
  L1_2 = LavaZone
  if L1_2 ~= nil then
    L1_2 = LavaZone
    L1_2 = L1_2.OnPlayerDead
    L1_2()
  end
  L1_2 = fxcallbacks
  if L1_2 then
    L1_2 = fxcallbacks
    L1_2 = L1_2.OnPlayerDead
    L1_2()
  end
end
L0_1.OnPlayerDead = L1_1
L0_1 = logiccallbacks
function L1_1()
  local L0_2, L1_2
  L0_2 = logiccallbacks
  L0_2 = L0_2.OnPlayerDead
  L1_2 = ""
  L0_2(L1_2)
end
L0_1.OnQuit = L1_1
