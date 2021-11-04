local L0_1, L1_1, L2_1
L0_1 = Game
L0_1 = L0_1.ImportLibrary
L1_1 = "gui/scripts/msemenu_inventory.lua"
L2_1 = false
L0_1(L1_1, L2_1)
L0_1 = {}
msemenu_ingame_common = L0_1
L0_1 = msemenu_ingame_common
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = pairs
  L1_2 = debuginventory
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = Game
    L5_2 = L5_2.SetItemAmount
    L6_2 = Game
    L6_2 = L6_2.GetPlayerName
    L6_2 = L6_2()
    L7_2 = L3_2
    L8_2 = L4_2.Default
    L5_2(L6_2, L7_2, L8_2)
  end
  L0_2 = Game
  L0_2 = L0_2.GetPlayer
  L0_2 = L0_2()
  if L0_2 ~= nil then
    L1_2 = Blackboard
    L1_2 = L1_2.GetProp
    L2_2 = "PLAYER_INVENTORY"
    L3_2 = "ITEM_MAX_MAGIC"
    L1_2 = L1_2(L2_2, L3_2)
    if not L1_2 then
      L1_2 = 0
    end
    L0_2.MaxEnergy = L1_2
    L1_2 = L0_2.MaxEnergy
    L0_2.MagicEnergy = L1_2
  end
  L1_2 = hud
  if L1_2 then
    L1_2 = hud
    L1_2 = L1_2.UpdatePlayerInfo
    L2_2 = true
    L1_2(L2_2)
  end
end
L0_1.GetAllInventory = L1_1
L0_1 = msemenu_ingame_common
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = pairs
  L1_2 = debuginventory
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = Game
    L5_2 = L5_2.SetItemAmount
    L6_2 = Game
    L6_2 = L6_2.GetPlayerName
    L6_2 = L6_2()
    L7_2 = L3_2
    L8_2 = -1
    L5_2(L6_2, L7_2, L8_2)
  end
end
L0_1.CleanAllInventory = L1_1
