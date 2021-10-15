local L0_1, L1_1
L0_1 = {}
L0_1.oGUIRoot = nil
loadingscreen = L0_1
L0_1 = loadingscreen
L0_1.sTooltipTextTagPreffix = "#GUI_TIPS_"
L0_1 = loadingscreen
L1_1 = {}
L0_1.asTooltips = L1_1
L0_1 = loadingscreen
L1_1 = {}
L0_1.tInitUnlockedTooltips = L1_1
L0_1 = loadingscreen
L1_1 = {}
L0_1.tOnScenarioLoadUnlockTooltip = L1_1
L0_1 = loadingscreen
L1_1 = {}
L0_1.asUnlockedTooltips = L1_1
L0_1 = loadingscreen
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = loadingscreen
  L1_2 = utils
  L1_2 = L1_2.DeepCopy
  L2_2 = loadingscreen
  L2_2 = L2_2.tInitUnlockedTooltips
  L1_2 = L1_2(L2_2)
  L0_2.asUnlockedTooltips = L1_2
  L0_2 = ipairs
  L1_2 = loadingscreen
  L1_2 = L1_2.asTooltips
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = loadingscreen
    L5_2 = L5_2.IsTooltipUnlocked
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L5_2 = table
      L5_2 = L5_2.insert
      L6_2 = loadingscreen
      L6_2 = L6_2.asUnlockedTooltips
      L7_2 = L4_2
      L5_2(L6_2, L7_2)
    end
  end
end
L0_1.UpdateUnlockedTooltips = L1_1
L0_1 = loadingscreen
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = "TOOLTIP_"
  L2_2 = A0_2
  L1_2 = L1_2 .. L2_2
  L2_2 = Blackboard
  L2_2 = L2_2.GetProp
  L3_2 = "GAME_PROGRESS"
  L4_2 = L1_2
  return L2_2(L3_2, L4_2)
end
L0_1.IsTooltipUnlocked = L1_1
L0_1 = loadingscreen
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = false
  L2_2 = "TOOLTIP_"
  L3_2 = A0_2
  L2_2 = L2_2 .. L3_2
  L3_2 = Blackboard
  L3_2 = L3_2.GetProp
  L4_2 = "GAME_PROGRESS"
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= true then
    L4_2 = Blackboard
    L4_2 = L4_2.SetProp
    L5_2 = "GAME_PROGRESS"
    L6_2 = L2_2
    L7_2 = "b"
    L8_2 = true
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = loadingscreen
    L5_2 = L5_2.asUnlockedTooltips
    L6_2 = A0_2
    L4_2(L5_2, L6_2)
    L1_2 = true
  end
  return L1_2
end
L0_1.UnlockTooltip = L1_1
L0_1 = loadingscreen
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = ""
  L1_2 = loadingscreen
  L1_2 = L1_2.asUnlockedTooltips
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = math
    L1_2 = L1_2.random
    L2_2 = loadingscreen
    L2_2 = L2_2.asUnlockedTooltips
    L2_2 = #L2_2
    L1_2 = L1_2(L2_2)
    L2_2 = loadingscreen
    L2_2 = L2_2.asUnlockedTooltips
    L0_2 = L2_2[L1_2]
  end
  return L0_2
end
L0_1.GetRandomTooltip = L1_1
L0_1 = loadingscreen
L0_1.sImageTexturePreffix = "gui/textures/Load"
L0_1 = loadingscreen
L1_1 = {}
L0_1.tCutscenesImages = L1_1
L0_1 = loadingscreen
L1_1 = {}
L0_1.tScenarioDefaultImages = L1_1
L0_1 = loadingscreen
L1_1 = {}
L0_1.tScenarioInBossImages = L1_1
L0_1 = loadingscreen
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = loadingscreen
  L2_2 = GUI
  L2_2 = L2_2.CreateDisplayObjectEx
  L3_2 = "LoadingScreen"
  L4_2 = "CDisplayObjectContainer"
  L5_2 = {}
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2.oGUIRoot = L2_2
  L1_2 = GUI
  L1_2 = L1_2.CreateMSCPInstanceEx
  L2_2 = "LoadScreenComposition"
  L1_2 = L1_2(L2_2)
  L1_2.Enabled = false
  L1_2.Focusable = false
  L3_2 = L1_2
  L2_2 = L1_2.SetSortKeyOverride
  L4_2 = -20000
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = L1_2
  L2_2 = L1_2.SetSceneIdx
  L4_2 = 3
  L2_2(L3_2, L4_2)
  L2_2 = loadingscreen
  L2_2 = L2_2.oGUIRoot
  L3_2 = L2_2
  L2_2 = L2_2.AddChild
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = loadingscreen
  L2_2 = L2_2.UpdateUnlockedTooltips
  L2_2()
  L2_2 = loadingscreen
  L2_2 = L2_2.oGUIRoot
  return L2_2
end
L0_1.Create = L1_1
L0_1 = loadingscreen
function L1_1()
  local L0_2, L1_2
end
L0_1.ReleaseImage = L1_1
L0_1 = loadingscreen
function L1_1(A0_2)
  local L1_2
end
L0_1.SetImage = L1_1
L0_1 = loadingscreen
function L1_1(A0_2)
  local L1_2
end
L0_1.SetTooltip = L1_1
L0_1 = loadingscreen
function L1_1(A0_2)
  local L1_2
end
L0_1.SetText = L1_1
L0_1 = loadingscreen
function L1_1(A0_2)
  local L1_2
end
L0_1.SetNextLoadingScreenText = L1_1
L0_1 = loadingscreen
function L1_1(A0_2)
  local L1_2
  L1_2 = loadingscreen
  L1_2 = L1_2.ShowLoadingScreen
  L1_2()
end
L0_1.SetScenarioLoadingScreen = L1_1
L0_1 = loadingscreen
function L1_1(A0_2)
  local L1_2
end
L0_1.SetIngameStartButtonEnabled = L1_1
L0_1 = loadingscreen
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = loadingscreen
  L0_2 = L0_2.oGUIRoot
  L1_2 = L0_2
  L0_2 = L0_2.FindChild
  L2_2 = "loadscreencomposition"
  L0_2 = L0_2(L1_2, L2_2)
  L0_2.Enabled = true
  L2_2 = L0_2
  L1_2 = L0_2.ForceRedraw
  L1_2(L2_2)
  L2_2 = L0_2
  L1_2 = L0_2.ChangeSkinStateWithStrId
  L3_2 = "RotateClockwise"
  L1_2(L2_2, L3_2)
  L2_2 = L0_2
  L1_2 = L0_2.ChangeSkinStateWithStrId
  L3_2 = "RotateCounterclockwise"
  L1_2(L2_2, L3_2)
  L2_2 = L0_2
  L1_2 = L0_2.ChangeSkinStateWithStrId
  L3_2 = "RotateCounterClockwiseFast"
  L1_2(L2_2, L3_2)
  L2_2 = L0_2
  L1_2 = L0_2.ChangeSkinStateWithStrId
  L3_2 = "OnLoading"
  L1_2(L2_2, L3_2)
  L1_2 = loadingscreen
  L1_2 = L1_2.oGUIRoot
  L2_2 = L1_2
  L1_2 = L1_2.ForceRedraw
  L1_2(L2_2)
end
L0_1.ShowLoadingScreen = L1_1
L0_1 = loadingscreen
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = loadingscreen
  L0_2 = L0_2.oGUIRoot
  L1_2 = L0_2
  L0_2 = L0_2.FindChild
  L2_2 = "loadscreencomposition"
  L0_2 = L0_2(L1_2, L2_2)
  L0_2.Enabled = false
  L2_2 = L0_2
  L1_2 = L0_2.ForceRedraw
  L1_2(L2_2)
  L2_2 = L0_2
  L1_2 = L0_2.ChangeSkinStateWithStrId
  L3_2 = "Default"
  L1_2(L2_2, L3_2)
  L1_2 = loadingscreen
  L1_2 = L1_2.oGUIRoot
  L2_2 = L1_2
  L1_2 = L1_2.ForceRedraw
  L1_2(L2_2)
end
L0_1.HideLoadingScreen = L1_1
L0_1 = loadingscreen
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  L4_2 = loadingscreen
  L4_2 = L4_2.SetScenarioLoadingScreen
  L5_2 = A1_2
  L4_2(L5_2)
end
L0_1.OnLoadScenarioRequest = L1_1
L0_1 = loadingscreen
function L1_1(A0_2, A1_2, A2_2)
end
L0_1.OnNewScenarioLoaded = L1_1
L0_1 = loadingscreen
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = loadingscreen
  L1_2 = L1_2.ShowLoadingScreen
  L1_2()
  L1_2 = Game
  L1_2 = L1_2.SetLoadingScreen
  L2_2 = true
  L1_2(L2_2)
end
L0_1.SetCutsceneLoadingScreen = L1_1
L0_1 = loadingscreen
function L1_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.SetLoadingScreen
  L1_2 = false
  L0_2(L1_2)
  L0_2 = loadingscreen
  L0_2 = L0_2.HideLoadingScreen
  L0_2()
end
L0_1.HideCutsceneLoadingScreen = L1_1
L0_1 = loadingscreen
function L1_1()
  local L0_2, L1_2
  L0_2 = loadingscreen
  L0_2 = L0_2.ShowLoadingScreen
  L0_2()
  L0_2 = Game
  L0_2 = L0_2.SetLoadingScreen
  L1_2 = true
  L0_2(L1_2)
end
L0_1.SetMainMenuLoadingScreen = L1_1
L0_1 = loadingscreen
function L1_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.SetLoadingScreen
  L1_2 = false
  L0_2(L1_2)
  L0_2 = loadingscreen
  L0_2 = L0_2.HideLoadingScreen
  L0_2()
end
L0_1.HideMainMenuLoadingScreen = L1_1
L0_1 = loadingscreen
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = loadingscreen
  L1_2 = L1_2.SetCutsceneLoadingScreen
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1.OnCutsceneLoadingRequest = L1_1
L0_1 = loadingscreen
function L1_1()
  local L0_2, L1_2
  L0_2 = loadingscreen
  L0_2 = L0_2.HideCutsceneLoadingScreen
  L0_2()
end
L0_1.OnCutsceneRequestProcessed = L1_1
L0_1 = loadingscreen
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = loadingscreen
  L1_2 = L1_2.SetCutsceneLoadingScreen
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1.OnCutsceneLoadingStarts = L1_1
L0_1 = loadingscreen
function L1_1()
  local L0_2, L1_2
  L0_2 = loadingscreen
  L0_2 = L0_2.HideCutsceneLoadingScreen
  L0_2()
end
L0_1.OnCutsceneLoaded = L1_1
