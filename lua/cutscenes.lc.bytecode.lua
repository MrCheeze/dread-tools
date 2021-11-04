local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = Game
L0_1 = L0_1.ImportLibrary
L1_1 = "system/scripts/scenario.lua"
L0_1(L1_1)
L0_1 = _G
L1_1 = setmetatable
L2_1 = Cutscenes
L3_1 = {}
L4_1 = _G
L3_1.__index = L4_1
L1_1(L2_1, L3_1)
L1_1 = setfenv
L2_1 = 1
L3_1 = Cutscenes
L1_1(L2_1, L3_1)
function L1_1()
  local L0_2, L1_2
end
main = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = Game
  L0_2 = L0_2.LoadScenario
  L1_2 = NextLevelId
  L2_2 = NextScenearioId
  L3_2 = NextStartPoint
  L4_2 = ""
  L5_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
end
OnEnd_LoadingCutscene = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = Game
    L6_2 = L6_2.HideScenarioItemByName
    L7_2 = string
    L7_2 = L7_2.lower
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    L8_2 = true
    L6_2(L7_2, L8_2)
  end
end
HideEntities = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = Game
    L6_2 = L6_2.HideScenarioItemByName
    L7_2 = string
    L7_2 = L7_2.lower
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    L8_2 = false
    L6_2(L7_2, L8_2)
  end
end
ShowEntities = L1_1
