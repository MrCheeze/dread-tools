local L0_1, L1_1
L0_1 = ItemSphereGravitySuit
function L1_1()
  local L0_2, L1_2
end
L0_1.main = L1_1
L0_1 = ItemSphereGravitySuit
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = Game
  L1_2 = L1_2.PlayEntitySoundContinueOnDead
  L2_2 = "generic/itemsphere_crack.wav"
  L3_2 = A0_2.sName
  L4_2 = 1
  L5_2 = 500
  L6_2 = 5000
  L7_2 = 1.5
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1.OnOpen = L1_1
