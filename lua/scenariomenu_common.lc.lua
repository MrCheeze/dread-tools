local L0_1, L1_1, L2_1
L0_1 = Game
L0_1 = L0_1.ImportLibrary
L1_1 = "gui/scripts/msemenu_inventory.lua"
L2_1 = false
L0_1(L1_1, L2_1)
L0_1 = Game
L0_1 = L0_1.ImportLibrary
L1_1 = "gui/scripts/scenariomenu_game.lua"
L2_1 = false
L0_1(L1_1, L2_1)
L0_1 = {}
ScenarioMenu = L0_1
L0_1 = ScenarioMenu
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = Blackboard
  L1_2 = L1_2.WriteSaveGameVersion
  L1_2()
  L1_2 = Blackboard
  L1_2 = L1_2.SetProp
  L2_2 = "GAME"
  L3_2 = "HUD"
  L4_2 = "b"
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = Blackboard
  L1_2 = L1_2.GetProp
  L2_2 = "PLAYER_INVENTORY"
  L3_2 = "ITEM_MAX_LIFE"
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = Blackboard
    L2_2 = L2_2.SetProp
    L3_2 = "PLAYER_INVENTORY"
    L4_2 = "ITEM_MAX_LIFE"
    L5_2 = "f"
    L6_2 = 99
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
  L2_2 = pairs
  L3_2 = debuginventory
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = Blackboard
    L7_2 = L7_2.SetProp
    L8_2 = "PLAYER_INVENTORY"
    L9_2 = L5_2
    L10_2 = "f"
    L11_2 = L6_2.Default
    L7_2(L8_2, L9_2, L10_2, L11_2)
  end
  L2_2 = Blackboard
  L2_2 = L2_2.InitDebugGameBlackboard
  L2_2()
  L2_2 = _G
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L3_2 = L2_2.SetupDebugGameBlackboard
    if L3_2 then
      L3_2 = L2_2.SetupDebugGameBlackboard
      L3_2()
    end
  end
end
L0_1.InitScenarioMenuGameBlackboard = L1_1
L0_1 = ScenarioMenu
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = false
  L3_2 = ipairs
  L4_2 = tScenarioMenuDefs
  L4_2 = L4_2.aScenarioDefs
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    if L7_2 == A1_2 then
      L2_2 = true
      break
    end
  end
  if not L2_2 then
    L3_2 = tScenarioMenuDefs
    L3_2 = L3_2.aScenarioDefs
    L3_2[A1_2] = A0_2
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = tScenarioMenuDefs
    L4_2 = L4_2.aScenarioDefs
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
end
L0_1.AddScenario = L1_1
L0_1 = ScenarioMenu
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = Scenario
  L3_2 = L3_2.LoadScenario
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  return L3_2(L4_2, L5_2, L6_2)
end
L0_1.LoadScenario = L1_1
L0_1 = ScenarioMenu
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 == nil or not A1_2 then
    A1_2 = true
  end
  L2_2 = Blackboard
  L2_2 = L2_2.GetProp
  L3_2 = Game
  L3_2 = L3_2.GetPlayerBlackboardSectionName
  L3_2 = L3_2()
  L4_2 = "ScenarioID"
  L2_2 = L2_2(L3_2, L4_2)
  if A1_2 or L2_2 == nil or L2_2 ~= A0_2 then
    L3_2 = Game
    L3_2 = L3_2.LoadScenario
    L4_2 = tScenarioMenuDefs
    L4_2 = L4_2.aScenarioDefs
    L4_2 = L4_2[A0_2]
    L5_2 = A0_2
    L6_2 = "StartPoint0"
    L7_2 = string
    L7_2 = L7_2.gmatch
    L8_2 = tScenarioMenuDefs
    L8_2 = L8_2.aScenarioDefs
    L8_2 = L8_2[A0_2]
    L9_2 = "%_(.+)$"
    L7_2 = L7_2(L8_2, L9_2)
    L7_2 = L7_2()
    L8_2 = 1
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  end
  L3_2 = true
  return L3_2
end
L0_1.TeleportToScenario = L1_1
