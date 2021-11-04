local L0_1, L1_1, L2_1
L0_1 = Game
L0_1 = L0_1.ImportLibrary
L1_1 = "gui/scripts/sprites_texturehud.lua"
L0_1(L1_1)
L0_1 = Game
L0_1 = L0_1.ImportLibrary
L1_1 = "gui/scripts/sprites_texturehudopaque.lua"
L0_1(L1_1)
L0_1 = Game
L0_1 = L0_1.ImportLibrary
L1_1 = "gui/scripts/hud.lua"
L2_1 = false
L0_1(L1_1, L2_1)
L0_1 = IngameMenuComposition
if not L0_1 then
  L0_1 = {}
end
IngameMenuComposition = L0_1
L0_1 = IngameMenuComposition
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = IngameMenuComposition
  L2_2 = L2_2.CreateIngameMenuComposition
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  return L2_2
end
L0_1.Create = L1_1
L0_1 = IngameMenuComposition
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = GUI
  L2_2 = L2_2.CreateDisplayObjectEx
  L3_2 = A0_2
  L4_2 = "CHUD"
  L5_2 = {}
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = GUI
  L3_2 = L3_2.SetHierarchyProperties
  L4_2 = L2_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  return L2_2
end
L0_1.CreateIngameMenuComposition = L1_1
