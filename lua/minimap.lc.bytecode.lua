local L0_1, L1_1, L2_1
L0_1 = Game
L0_1 = L0_1.ImportLibrary
L1_1 = "gui/scripts/mapcharactersdefinitions.lua"
L2_1 = false
L0_1(L1_1, L2_1)
L0_1 = Game
L0_1 = L0_1.ImportLibrary
L1_1 = "gui/scripts/minimapmark.lua"
L2_1 = false
L0_1(L1_1, L2_1)
L0_1 = Game
L0_1 = L0_1.ImportLibrary
L1_1 = "system/scripts/scenario.lua"
L0_1(L1_1)
L0_1 = minimap
if L0_1 ~= nil then
  L0_1 = minimap
  if L0_1 then
    goto lbl_24
  end
end
L0_1 = {}
L0_1.bEditMode = false
L0_1.oRoot = nil
::lbl_24::
minimap = L0_1
L0_1 = minimap
L0_1.MAX_CUSTOM_MARKS = 50
L0_1 = minimap
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = minimap
  L1_2.sCurrentScenarioID = nil
  L1_2 = minimap
  L1_2.sTargetScenarioID = nil
  L1_2 = minimap
  L1_2.bMinimapAvailable = false
  L1_2 = minimap
  L1_2.bLocked = false
  L1_2 = minimap
  L1_2.iNumCellsVisited = 0
  L1_2 = minimap
  L2_2 = GUI
  L2_2 = L2_2.CreateDisplayObjectEx
  L3_2 = "Minimap"
  L4_2 = "CMinimap"
  L5_2 = {}
  L5_2.StageID = "Down"
  L5_2.FocusIdx = "-1"
  L5_2.Focusable = false
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2.oRoot = L2_2
  L1_2 = minimap
  L1_2 = L1_2.UpdateCurrentMinimapState
  L1_2()
  L1_2 = minimap
  L1_2 = L1_2.oRoot
  return L1_2
end
L0_1.Create = L1_1
L0_1 = minimap
function L1_1()
  local L0_2, L1_2
  L0_2 = minimap
  L0_2 = L0_2.oRoot
  return L0_2
end
L0_1.GetMinimapDO = L1_1
L0_1 = minimap
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = minimap
  L3_2 = L3_2.sCurrentScenarioID
  if L3_2 == A0_2 then
    L3_2 = minimap
    L4_2 = minimap
    L4_2 = L4_2.iNumCellsVisited
    L4_2 = L4_2 + 1
    L3_2.iNumCellsVisited = L4_2
    L3_2 = minimap
    L3_2 = L3_2.iNumCellsVisited
    if L3_2 == 1 then
      L3_2 = minimap
      L3_2 = L3_2.UpdateCurrentMinimapState
      L3_2()
    end
  end
end
L0_1.OnMinimapCellVisited = L1_1
L0_1 = minimap
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = minimap
  L3_2 = L3_2.GetMinimapDO
  L3_2 = L3_2()
  L4_2 = L3_2
  L3_2 = L3_2.OverrideTransitionCost
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1.OverrideTransitionCost = L1_1
L0_1 = minimap
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = minimap
  L4_2 = L4_2.GetMinimapDO
  L4_2 = L4_2()
  L5_2 = L4_2
  L4_2 = L4_2.OverrideTransitionPos
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1.OverrideTransitionPos = L1_1
L0_1 = minimap
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = minimap
  L3_2 = L3_2.GetMinimapDO
  L3_2 = L3_2()
  L4_2 = L3_2
  L3_2 = L3_2.OverrideTransitionExitDir
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1.OverrideTransitionExitDir = L1_1
L0_1 = minimap
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = minimap
  L0_2 = L0_2.bMinimapAvailable
  if L0_2 then
    L0_2 = minimap
    L0_2 = L0_2.bLocked
    L0_2 = not L0_2
  end
  L1_2 = minimap
  L1_2 = L1_2.SetVisible
  L2_2 = true
  L1_2(L2_2)
  L1_2 = guicallbacks
  L1_2 = L1_2.OnCurrentMinimapStateUpdated
  L1_2()
end
L0_1.UpdateCurrentMinimapState = L1_1
L0_1 = minimap
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = minimap
  L0_2 = L0_2.sCurrentScenarioID
  if L0_2 ~= nil then
    L0_2 = Game
    L0_2 = L0_2.GetDefaultPlayerName
    L0_2 = L0_2()
    L1_2 = mapcharactersdefs
    L1_2 = L1_2.tDefs
    L1_2 = L1_2[L0_2]
    L2_2 = L1_2.funcOnShowScenario
    if L2_2 then
      L2_2 = L1_2.funcOnShowScenario
      L3_2 = minimap
      L3_2 = L3_2.sCurrentScenarioID
      L2_2(L3_2)
    end
  end
end
L0_1.RefreshCurrentScenario = L1_1
L0_1 = minimap
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = minimap
  L2_2 = L2_2.sCurrentScenarioID
  if L2_2 ~= A0_2 then
    L2_2 = minimap
    L2_2.sCurrentScenarioID = A0_2
    L2_2 = minimap
    L2_2.bMinimapAvailable = A1_2
    L2_2 = minimap
    L3_2 = minimap
    L3_2 = L3_2.GetMinimapDO
    L3_2 = L3_2()
    L4_2 = L3_2
    L3_2 = L3_2.GetNumVisitedCells
    L5_2 = A0_2
    L3_2 = L3_2(L4_2, L5_2)
    L2_2.iNumCellsVisited = L3_2
    L2_2 = minimap
    L2_2 = L2_2.sCurrentScenarioID
    if L2_2 ~= nil then
      L2_2 = minimap
      L2_2 = L2_2.bMinimapAvailable
      if L2_2 then
        L2_2 = minimap
        L2_2 = L2_2.RefreshCurrentScenario
        L2_2()
      else
      end
    end
    L2_2 = minimap
    L2_2 = L2_2.UpdateCurrentMinimapState
    L2_2()
    L2_2 = minimap
    L2_2 = L2_2.OnCurrentScenarioChanged
    L3_2 = A0_2
    L2_2(L3_2)
    L2_2 = guicallbacks
    L2_2 = L2_2.OnCurrentScenarioChanged
    L3_2 = A0_2
    L2_2(L3_2)
  end
end
L0_1.SetScenarioSelected = L1_1
L0_1 = minimap
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = minimap
  L3_2 = L3_2.GetMinimapDO
  L3_2 = L3_2()
  if L3_2 ~= nil then
    if A2_2 == nil then
      A2_2 = 0
    end
    L3_2 = minimap
    L3_2 = L3_2.GetMinimapDO
    L3_2 = L3_2()
    L4_2 = L3_2
    L3_2 = L3_2.SetObjectiveLandmark
    L5_2 = A0_2
    L6_2 = A1_2
    L7_2 = A2_2
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end
L0_1.SetObjectiveLandmark = L1_1
L0_1 = minimap
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = minimap
  L1_2 = L1_2.GetMinimapDO
  L1_2 = L1_2()
  L2_2 = L1_2
  L1_2 = L1_2.HasUndisclosedConnectionTowards
  L3_2 = A0_2
  return L1_2(L2_2, L3_2)
end
L0_1.HasUndisclosedConnectionTowards = L1_1
L0_1 = minimap
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = minimap
  L1_2 = L1_2.GetMinimapDO
  L1_2 = L1_2()
  L2_2 = L1_2
  L1_2 = L1_2.SelectNextScenario
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1.GoToNextScenario = L1_1
L0_1 = minimap
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = minimap
  L1_2 = L1_2.GetMinimapDO
  L1_2 = L1_2()
  L2_2 = L1_2
  L1_2 = L1_2.GetNumVisitedCells
  L3_2 = A0_2
  return L1_2(L2_2, L3_2)
end
L0_1.GetNumVisitedCells = L1_1
L0_1 = minimap
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = minimap
  L1_2 = L1_2.oRoot
  if L1_2 ~= nil then
    L1_2 = GUI
    L1_2 = L1_2.SetProperties
    L2_2 = minimap
    L2_2 = L2_2.oRoot
    L3_2 = {}
    L3_2.Visible = A0_2
    L1_2(L2_2, L3_2)
  end
end
L0_1.SetVisible = L1_1
L0_1 = minimap
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L1_2 = minimap
  L1_2 = L1_2.sCurrentScenarioID
  if L1_2 ~= nil then
    L1_2 = Game
    L1_2 = L1_2.GetDefaultPlayer
    L1_2 = L1_2()
    if L1_2 ~= nil then
      L2_2 = mapcharactersdefs
      L2_2 = L2_2.tDefs
      L3_2 = L1_2.sName
      L2_2 = L2_2[L3_2]
      L3_2 = L2_2.tScenarios
      L4_2 = minimap
      L4_2 = L4_2.sCurrentScenarioID
      L0_2 = L3_2[L4_2]
    end
  end
  return L0_2
end
L0_1.GetCurrentScenarioDef = L1_1
L0_1 = minimap
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = minimap
  L2_2 = L2_2.bLocked
  if L2_2 ~= A0_2 then
    L2_2 = minimap
    L2_2.bLocked = A0_2
    if A0_2 then
    end
    L2_2 = minimap
    L2_2 = L2_2.UpdateCurrentMinimapState
    L2_2()
  end
end
L0_1.SetMinimapLocked = L1_1
L0_1 = minimap
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = minimap
  L3_2 = L3_2.GetMinimapDO
  L3_2 = L3_2()
  L4_2 = L3_2
  L3_2 = L3_2.SetGameScenarioMinimap
  L5_2 = A0_2
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = Blackboard
  L3_2 = L3_2.GetProp
  L4_2 = Game
  L4_2 = L4_2.GetPlayerBlackboardSectionName
  L4_2 = L4_2()
  L5_2 = "MinimapObjective"
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    L4_2 = minimap
    L4_2 = L4_2.GetMinimapDO
    L4_2 = L4_2()
    L5_2 = L4_2
    L4_2 = L4_2.SetObjectiveLandmark
    L6_2 = L3_2
    L7_2 = false
    L8_2 = 0
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
end
L0_1.OnNewScenarioLoadStart = L1_1
L0_1 = minimap
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  L4_2 = minimap
  L4_2 = L4_2.GetMinimapDO
  L4_2 = L4_2()
  L5_2 = L4_2
  L4_2 = L4_2.DestroyCurrentScenario
  L4_2(L5_2)
end
L0_1.OnLoadScenarioRequest = L1_1
L0_1 = minimap
function L1_1(A0_2)
  local L1_2
end
L0_1.OnCurrentScenarioChanged = L1_1
L0_1 = minimap
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = minimap
  L0_2 = L0_2.GetMinimapDO
  L0_2 = L0_2()
  L2_2 = L0_2
  L1_2 = L0_2.SetProfileDataDirty
  L1_2(L2_2)
end
L0_1.SetProfileDataDirty = L1_1
L0_1 = minimap
function L1_1()
  local L0_2, L1_2
  L0_2 = minimap
  L0_2 = L0_2.GetMinimapDO
  L0_2 = L0_2()
  L1_2 = L0_2
  L0_2 = L0_2.GetScenarios
  return L0_2(L1_2)
end
L0_1.GetScenarios = L1_1
L0_1 = minimap
function L1_1(A0_2)
  local L1_2
  L1_2 = minimap
  L1_2.sTargetScenarioID = A0_2
end
L0_1.SetTargetScenarioID = L1_1
