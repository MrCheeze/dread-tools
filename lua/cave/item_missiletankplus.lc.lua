local L0_1, L1_1, L2_1, L3_1
L0_1 = Game
L0_1 = L0_1.ImportLibraryWithName
L1_1 = "actors/items/pickup/scripts/pickup.lua"
L2_1 = "Pickup"
L0_1(L1_1, L2_1)
L0_1 = {}
ItemMissileTankPlus = L0_1
L0_1 = setmetatable
L1_1 = ItemMissileTankPlus
L2_1 = {}
L3_1 = Pickup
L2_1.__index = L3_1
L0_1(L1_1, L2_1)
L0_1 = ItemMissileTankPlus
function L1_1()
  local L0_2, L1_2
end
L0_1.main = L1_1
L0_1 = ItemMissileTankPlus
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = Pickup
  L1_2 = L1_2.BeginPlay
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1.BeginPlay = L1_1
L0_1 = ItemMissileTankPlus
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = Pickup
  L1_2 = L1_2.EndPlay
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1.EndPlay = L1_1
