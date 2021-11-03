loadingscreen = {oGUIRoot = nil}
loadingscreen.sTooltipTextTagPreffix = "#GUI_TIPS_"
loadingscreen.asTooltips = {}
loadingscreen.tInitUnlockedTooltips = {}
loadingscreen.tOnScenarioLoadUnlockTooltip = {}
loadingscreen.asUnlockedTooltips = {}
function loadingscreen.UpdateUnlockedTooltips()
  loadingscreen.asUnlockedTooltips = utils.DeepCopy(loadingscreen.tInitUnlockedTooltips)
  for _FORV_3_, _FORV_4_ in ipairs(loadingscreen.asTooltips) do
    if loadingscreen.IsTooltipUnlocked(_FORV_4_) then
      table.insert(loadingscreen.asUnlockedTooltips, _FORV_4_)
    end
  end
end
function loadingscreen.IsTooltipUnlocked(_ARG_0_)
  return Blackboard.GetProp("GAME_PROGRESS", "TOOLTIP_" .. _ARG_0_)
end
function loadingscreen.UnlockTooltip(_ARG_0_)
  if Blackboard.GetProp("GAME_PROGRESS", "TOOLTIP_" .. _ARG_0_) ~= true then
    Blackboard.SetProp("GAME_PROGRESS", "TOOLTIP_" .. _ARG_0_, "b", true)
    table.insert(loadingscreen.asUnlockedTooltips, _ARG_0_)
  end
  return true
end
function loadingscreen.GetRandomTooltip()
  if #loadingscreen.asUnlockedTooltips > 0 then
  end
  return loadingscreen.asUnlockedTooltips[math.random(#loadingscreen.asUnlockedTooltips)]
end
loadingscreen.sImageTexturePreffix = "gui/textures/Load"
loadingscreen.tCutscenesImages = {}
loadingscreen.tScenarioDefaultImages = {}
loadingscreen.tScenarioInBossImages = {}
function loadingscreen.Create(_ARG_0_)
  loadingscreen.oGUIRoot = GUI.CreateDisplayObjectEx("LoadingScreen", "CDisplayObjectContainer", {})
  GUI.CreateMSCPInstanceEx("LoadScreenComposition").Enabled = false
  GUI.CreateMSCPInstanceEx("LoadScreenComposition").Focusable = false
  GUI.CreateMSCPInstanceEx("LoadScreenComposition"):SetSortKeyOverride(-20000, true)
  GUI.CreateMSCPInstanceEx("LoadScreenComposition"):SetSceneIdx(3)
  loadingscreen.oGUIRoot:AddChild((GUI.CreateMSCPInstanceEx("LoadScreenComposition")))
  loadingscreen.UpdateUnlockedTooltips()
  return loadingscreen.oGUIRoot
end
function loadingscreen.ReleaseImage()
end
function loadingscreen.SetImage(_ARG_0_)
end
function loadingscreen.SetTooltip(_ARG_0_)
end
function loadingscreen.SetText(_ARG_0_)
end
function loadingscreen.SetNextLoadingScreenText(_ARG_0_)
end
function loadingscreen.SetScenarioLoadingScreen(_ARG_0_)
  loadingscreen.ShowLoadingScreen()
end
function loadingscreen.SetIngameStartButtonEnabled(_ARG_0_)
end
function loadingscreen.ShowLoadingScreen()
  loadingscreen.oGUIRoot:FindChild("loadscreencomposition").Enabled = true
  loadingscreen.oGUIRoot:FindChild("loadscreencomposition"):ForceRedraw()
  loadingscreen.oGUIRoot:FindChild("loadscreencomposition"):ChangeSkinStateWithStrId("RotateClockwise")
  loadingscreen.oGUIRoot:FindChild("loadscreencomposition"):ChangeSkinStateWithStrId("RotateCounterclockwise")
  loadingscreen.oGUIRoot:FindChild("loadscreencomposition"):ChangeSkinStateWithStrId("RotateCounterClockwiseFast")
  loadingscreen.oGUIRoot:FindChild("loadscreencomposition"):ChangeSkinStateWithStrId("OnLoading")
  loadingscreen.oGUIRoot:ForceRedraw()
end
function loadingscreen.HideLoadingScreen()
  loadingscreen.oGUIRoot:FindChild("loadscreencomposition").Enabled = false
  loadingscreen.oGUIRoot:FindChild("loadscreencomposition"):ForceRedraw()
  loadingscreen.oGUIRoot:FindChild("loadscreencomposition"):ChangeSkinStateWithStrId("Default")
  loadingscreen.oGUIRoot:ForceRedraw()
end
function loadingscreen.OnLoadScenarioRequest(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  loadingscreen.SetScenarioLoadingScreen(_ARG_1_)
end
function loadingscreen.OnNewScenarioLoaded(_ARG_0_, _ARG_1_, _ARG_2_)
end
function loadingscreen.SetCutsceneLoadingScreen(_ARG_0_)
  loadingscreen.ShowLoadingScreen()
  Game.SetLoadingScreen(true)
end
function loadingscreen.HideCutsceneLoadingScreen()
  Game.SetLoadingScreen(false)
  loadingscreen.HideLoadingScreen()
end
function loadingscreen.SetMainMenuLoadingScreen()
  loadingscreen.ShowLoadingScreen()
  Game.SetLoadingScreen(true)
end
function loadingscreen.HideMainMenuLoadingScreen()
  Game.SetLoadingScreen(false)
  loadingscreen.HideLoadingScreen()
end
function loadingscreen.OnCutsceneLoadingRequest(_ARG_0_)
  loadingscreen.SetCutsceneLoadingScreen(_ARG_0_)
end
function loadingscreen.OnCutsceneRequestProcessed()
  loadingscreen.HideCutsceneLoadingScreen()
end
function loadingscreen.OnCutsceneLoadingStarts(_ARG_0_)
  loadingscreen.SetCutsceneLoadingScreen(_ARG_0_)
end
function loadingscreen.OnCutsceneLoaded()
  loadingscreen.HideCutsceneLoadingScreen()
end
