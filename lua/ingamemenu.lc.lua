local L0_1, L1_1, L2_1
L0_1 = Game
L0_1 = L0_1.ImportLibrary
L1_1 = "gui/scripts/Menu.lua"
L0_1(L1_1)
L0_1 = class
L0_1 = L0_1.New
L1_1 = Menu
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = Menu
  L2_2 = L2_2.init
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1 = L0_1(L1_1, L2_1)
IngameMenu = L0_1
