local L0_1, L1_1
L0_1 = Player
function L1_1()
  local L0_2, L1_2
end
L0_1.main = L1_1
L0_1 = Player
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = Game
  L2_2 = L2_2.GetPlayer
  L2_2 = L2_2()
  if L2_2 ~= nil then
    L3_2 = L2_2.ABILITY
    if L3_2 ~= nil then
      L5_2 = L3_2
      L4_2 = L3_2.SetAbilityUnlocked
      L6_2 = A0_2
      L7_2 = A1_2
      L4_2(L5_2, L6_2, L7_2)
      L5_2 = L3_2
      L4_2 = L3_2.TrySetSelectedAbility
      L6_2 = A0_2
      L7_2 = true
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
    end
  end
end
L0_1.SetAbilityUnlocked = L1_1
L0_1 = Player
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = Game
  L1_2 = L1_2.GetPlayer
  L1_2 = L1_2()
  if L1_2 ~= nil then
    L2_2 = L1_2.ABILITY
    if L2_2 ~= nil then
      L4_2 = L2_2
      L3_2 = L2_2.IsAbilityActive
      L5_2 = A0_2
      return L3_2(L4_2, L5_2)
    end
  end
end
L0_1.IsAbilityActive = L1_1
L0_1 = Player
function L1_1()
  local L0_2, L1_2
  L0_2 = Player
  L0_2 = L0_2.IsAbilityActive
  L1_2 = "EnergyShield"
  return L0_2(L1_2)
end
L0_1.IsESActive = L1_1
L0_1 = Player
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = Player
  L0_2 = L0_2.SetAbilityUnlocked
  L1_2 = "PhaseDisplacement"
  L2_2 = true
  L0_2(L1_2, L2_2)
end
L0_1.UnlockPhaseDisplacement = L1_1
L0_1 = Player
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = Player
  L0_2 = L0_2.SetAbilityUnlocked
  L1_2 = "EnergyWave"
  L2_2 = true
  L0_2(L1_2, L2_2)
end
L0_1.UnlockEnergyWave = L1_1
L0_1 = Player
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = Player
  L0_2 = L0_2.SetAbilityUnlocked
  L1_2 = "EnergyShield"
  L2_2 = true
  L0_2(L1_2, L2_2)
end
L0_1.UnlockEnergyShield = L1_1
L0_1 = Player
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.LockAeionReserveTank
  L0_2()
  L0_2 = Player
  L0_2 = L0_2.SetAbilityUnlocked
  L1_2 = "ScanningPulse"
  L2_2 = true
  L0_2(L1_2, L2_2)
end
L0_1.UnlockScanningPulse = L1_1
