local L0_1, L1_1, L2_1, L3_1
L0_1 = Game
L0_1 = L0_1.ImportLibraryWithName
L1_1 = "actors/characters/player/scripts/player.lua"
L2_1 = "Player"
L0_1(L1_1, L2_1)
L0_1 = {}
Samus = L0_1
L0_1 = setmetatable
L1_1 = Samus
L2_1 = {}
L3_1 = Player
L2_1.__index = L3_1
L0_1(L1_1, L2_1)
L0_1 = Samus
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.ImportLibraryWithName
  L1_2 = "actors/props/damageplants/scripts/damageplants.lua"
  L2_2 = "DamagePlants"
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
end
L0_1.main = L1_1
L0_1 = Samus
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = Samus
  L4_2 = L4_2.NotifyDamage
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1.OnDamage = L1_1
L0_1 = Samus
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = Samus
  L3_2 = L3_2.NotifyDamage
  L4_2 = A0_2.sName
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.OnHackedTrapInitialDamage = L1_1
L0_1 = Samus
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = CurrentScenario
  if L3_2 ~= nil then
    L3_2 = CurrentScenario
    L3_2 = L3_2.OnPlayerDamaged
    if L3_2 ~= nil then
      L3_2 = CurrentScenario
      L3_2 = L3_2.OnPlayerDamaged
      L4_2 = A0_2.sName
      L5_2 = A1_2
      L6_2 = A2_2
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end
L0_1.NotifyDamage = L1_1
L0_1 = Samus
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CurrentScenario
  L2_2 = L2_2.OnPlayerStartGrab
  if L2_2 ~= nil then
    L2_2 = CurrentScenario
    L2_2 = L2_2.OnPlayerStartGrab
    L3_2 = A0_2.sName
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.OnStartGrab = L1_1
L0_1 = Samus
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = utils
  L1_2 = L1_2.LOG
  L2_2 = utils
  L2_2 = L2_2.LOGTYPE_LOGIC
  L3_2 = A0_2.sName
  L4_2 = " grabbed by "
  L5_2 = A0_2.sName
  L3_2 = L3_2 .. L4_2 .. L5_2
  L1_2(L2_2, L3_2)
end
L0_1.OnGrabbedBy = L1_1
L0_1 = Samus
function L1_1(A0_2, A1_2)
end
L0_1.OnEndGrab = L1_1
L0_1 = Samus
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = utils
  L1_2 = L1_2.LOG
  L2_2 = utils
  L2_2 = L2_2.LOGTYPE_LOGIC
  L3_2 = "Samus: end grabbed by "
  L4_2 = A0_2.sName
  L3_2 = L3_2 .. L4_2
  L1_2(L2_2, L3_2)
end
L0_1.OnEndGrabbedBy = L1_1
L0_1 = Samus
function L1_1(A0_2, A1_2)
end
L0_1.OnBeforeDamage = L1_1
L0_1 = Samus
function L1_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.DeleteEntity
  L1_2 = Game
  L1_2 = L1_2.GetPlayer
  L1_2 = L1_2()
  L1_2 = L1_2.sName
  L0_2(L1_2)
end
L0_1.Delete = L1_1
L0_1 = Samus
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CurrentScenario
  L1_2 = L1_2.OnPlayerRevived
  if L1_2 ~= nil then
    L1_2 = CurrentScenario
    L1_2 = L1_2.OnPlayerRevived
    L2_2 = A0_2.sName
    L1_2(L2_2)
  end
end
L0_1.OnRevived = L1_1
L0_1 = Samus
L0_1.iBreathSound = 0
L0_1 = Samus
L1_1 = {}
L0_1.asBreathSounds = L1_1
L0_1 = Samus
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Samus
  L2_2 = Samus
  L2_2 = L2_2.iBreathSound
  L2_2 = L2_2 + 1
  L3_2 = Samus
  L3_2 = L3_2.asBreathSounds
  L3_2 = #L3_2
  L2_2 = L2_2 % L3_2
  L1_2.iBreathSound = L2_2
end
L0_1.OnBreathRecovered = L1_1
L0_1 = Samus
function L1_1(A0_2)
  local L1_2
end
L0_1.OnLongJump = L1_1
