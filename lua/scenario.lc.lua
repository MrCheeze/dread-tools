Scenario = Scenario or {}
setmetatable(Scenario, {__index = _G})
Scenario.Cameras = _G.Cameras
setfenv(1, Scenario)
tCharacterScenarioLevels = {Samus = "c10_samus"}
Scenario.LUAPropIDs = {
  CAVES_GAME_INTRO = Blackboard.RegisterLUAProp("CAVES_GAME_INTRO", "bool"),
  CAVES_EMMY_SPAWNED = Blackboard.RegisterLUAProp("CAVES_EMMY_SPAWNED", "bool"),
  CAVES_CENTRAL_UNIT_WAKE_UP_CUTSCENE_LAUNCHED = Blackboard.RegisterLUAProp("CAVES_CENTRAL_UNIT_WAKE_UP_CUTSCENE_LAUNCHED", "bool"),
  CAVES_TUTO_MAP_DONE = Blackboard.RegisterLUAProp("CAVES_TUTO_MAP_DONE", "bool"),
  CAVES_TUTO_MAP_ROOM_DONE = Blackboard.RegisterLUAProp("CAVES_TUTO_MAP_ROOM_DONE", "bool"),
  LAB_EMMY_SPAWNED = Blackboard.RegisterLUAProp("LAB_EMMY_SPAWNED", "bool"),
  HYDROGIGA_DEAD = Blackboard.RegisterLUAProp("HYDROGIGA_DEAD", "bool"),
  COOLDOWN_FINISHED = Blackboard.RegisterLUAProp("COOLDOWN_FINISHED", "bool"),
  SHIP_EMMY_METROIDNIZATION = Blackboard.RegisterLUAProp("SHIP_EMMY_METROIDNIZATION", "bool"),
  SHIP_STRONG_REACTION = Blackboard.RegisterLUAProp("SHIP_STRONG_REACTION", "bool"),
  SHIP_CWXELITE_PRESENTATION = Blackboard.RegisterLUAProp("SHIP_CWXELITE_PRESENTATION", "bool"),
  CAVES_COOLDOWN_APPLIED = Blackboard.RegisterLUAProp("CAVES_COOLDOWN_APPLIED", "bool"),
  CAVES_POSTXRELEASE_APPLIED = Blackboard.RegisterLUAProp("CAVES_POSTXRELEASE_APPLIED", "bool"),
  MAGMA_COOLDOWN_APPLIED = Blackboard.RegisterLUAProp("MAGMA_COOLDOWN_APPLIED", "bool"),
  MAGMA_POSTXRELEASE_APPLIED = Blackboard.RegisterLUAProp("MAGMA_POSTXRELEASE_APPLIED", "bool"),
  LAB_POSTXRELEASE_APPLIED = Blackboard.RegisterLUAProp("LAB_POSTXRELEASE_APPLIED", "bool"),
  AQUA_POSTXRELEASE_APPLIED = Blackboard.RegisterLUAProp("AQUA_POSTXRELEASE_APPLIED", "bool"),
  FOREST_POSTXRELEASE_APPLIED = Blackboard.RegisterLUAProp("FOREST_POSTXRELEASE_APPLIED", "bool"),
  SANC_POSTXRELEASE_APPLIED = Blackboard.RegisterLUAProp("SANC_POSTXRELEASE_APPLIED", "bool"),
  SANC_EMMY_DEACTIVATED_ENABLED = Blackboard.RegisterLUAProp("SANC_EMMY_DEACTIVATED_ENABLED", "bool")
}
function main()
  SetSpawneableCharClassInFINAL()
  ResetCurrentScenarioInfo()
end
function SetSpawneableCharClassInFINAL()
  AI.AddSpawneableCharClassInFINAL("armadigger")
  AI.AddSpawneableCharClassInFINAL("autclast")
  AI.AddSpawneableCharClassInFINAL("autector")
  AI.AddSpawneableCharClassInFINAL("autool")
  AI.AddSpawneableCharClassInFINAL("autsharp")
  AI.AddSpawneableCharClassInFINAL("autsniper")
  AI.AddSpawneableCharClassInFINAL("batalloon")
  AI.AddSpawneableCharClassInFINAL("bigfist")
  AI.AddSpawneableCharClassInFINAL("bigkranx")
  AI.AddSpawneableCharClassInFINAL("blindfly")
  AI.AddSpawneableCharClassInFINAL("caterzilla")
  AI.AddSpawneableCharClassInFINAL("chozozombiex")
  AI.AddSpawneableCharClassInFINAL("daivo")
  AI.AddSpawneableCharClassInFINAL("depthorn")
  AI.AddSpawneableCharClassInFINAL("dizzeansprite")
  AI.AddSpawneableCharClassInFINAL("dredhed")
  AI.AddSpawneableCharClassInFINAL("dropter")
  AI.AddSpawneableCharClassInFINAL("fing")
  AI.AddSpawneableCharClassInFINAL("fulmite")
  AI.AddSpawneableCharClassInFINAL("gobbler_chozowarriorx")
  AI.AddSpawneableCharClassInFINAL("gobbler_cooldownx")
  AI.AddSpawneableCharClassInFINAL("gobbler_hydrogiga")
  AI.AddSpawneableCharClassInFINAL("gobbler_kraid")
  AI.AddSpawneableCharClassInFINAL("gobbler_scorpius")
  AI.AddSpawneableCharClassInFINAL("gobbler_supergoliath")
  AI.AddSpawneableCharClassInFINAL("gobbler_superquetzoa")
  AI.AddSpawneableCharClassInFINAL("goliath")
  AI.AddSpawneableCharClassInFINAL("gooplot")
  AI.AddSpawneableCharClassInFINAL("gooshocker")
  AI.AddSpawneableCharClassInFINAL("groundshocker")
  AI.AddSpawneableCharClassInFINAL("hecathon")
  AI.AddSpawneableCharClassInFINAL("iceflea")
  AI.AddSpawneableCharClassInFINAL("infester")
  AI.AddSpawneableCharClassInFINAL("klaida")
  AI.AddSpawneableCharClassInFINAL("kreep")
  AI.AddSpawneableCharClassInFINAL("nailong")
  AI.AddSpawneableCharClassInFINAL("nailugger")
  AI.AddSpawneableCharClassInFINAL("obsydomithon")
  AI.AddSpawneableCharClassInFINAL("omnithon")
  AI.AddSpawneableCharClassInFINAL("poisonfly")
  AI.AddSpawneableCharClassInFINAL("quetshocker")
  AI.AddSpawneableCharClassInFINAL("quetzoa")
  AI.AddSpawneableCharClassInFINAL("redenki")
  AI.AddSpawneableCharClassInFINAL("rockdiver")
  AI.AddSpawneableCharClassInFINAL("rodomithonx")
  AI.AddSpawneableCharClassInFINAL("rodotuk")
  AI.AddSpawneableCharClassInFINAL("sabotoru")
  AI.AddSpawneableCharClassInFINAL("sakai")
  AI.AddSpawneableCharClassInFINAL("sclawk")
  AI.AddSpawneableCharClassInFINAL("scourge")
  AI.AddSpawneableCharClassInFINAL("shakernaut")
  AI.AddSpawneableCharClassInFINAL("sharpaw")
  AI.AddSpawneableCharClassInFINAL("shelmit")
  AI.AddSpawneableCharClassInFINAL("slidle")
  AI.AddSpawneableCharClassInFINAL("slugger")
  AI.AddSpawneableCharClassInFINAL("specimen_x4a")
  AI.AddSpawneableCharClassInFINAL("spitclawk")
  AI.AddSpawneableCharClassInFINAL("spittail")
  AI.AddSpawneableCharClassInFINAL("sunnap")
  AI.AddSpawneableCharClassInFINAL("takumaku")
  AI.AddSpawneableCharClassInFINAL("vulkran")
  AI.AddSpawneableCharClassInFINAL("warlotus")
  AI.AddSpawneableCharClassInFINAL("yampa")
  AI.AddSpawneableCharClassInFINAL("yojimbee")
  AI.AddSpawneableCharClassInFINAL("rinka")
  AI.AddSpawneableCharClassInFINAL("cucannon")
  AI.AddSpawneableCharClassInFINAL("hydrogiga")
  AI.AddSpawneableCharClassInFINAL("chozorobotsoldier")
  AI.AddSpawneableCharClassInFINAL("chozowarrior")
  AI.AddSpawneableCharClassInFINAL("chozowarriornormal")
  AI.AddSpawneableCharClassInFINAL("chozowarriorelite")
  AI.AddSpawneableCharClassInFINAL("chozowarriorx")
  AI.AddSpawneableCharClassInFINAL("chozowarriorxnormal")
  AI.AddSpawneableCharClassInFINAL("chozowarriorxelite")
  AI.AddSpawneableCharClassInFINAL("superquetzoa")
  AI.AddSpawneableCharClassInFINAL("supergoliath")
  AI.AddSpawneableCharClassInFINAL("core_x")
  AI.AddSpawneableCharClassInFINAL("core_x_superquetzoa")
  AI.AddSpawneableCharClassInFINAL("cooldownxboss")
  AI.AddSpawneableCharClassInFINAL("chozocommander")
  AI.AddSpawneableCharClassInFINAL("scorpius")
  AI.AddSpawneableCharClassInFINAL("kraid")
end
function ResetCurrentScenarioInfo()
  _UPVALUE0_.CurrentScenario = nil
  _UPVALUE0_.CurrentScenarioID = nil
  _UPVALUE0_.CurrentScenarioBlackboard = nil
end
function OnLoadGameFromSaveData()
end
function OnLoadScenarioFinished()
  if _UPVALUE0_.CurrentScenario.OnLoadScenarioFinished ~= nil then
    _UPVALUE0_.CurrentScenario.OnLoadScenarioFinished()
  end
end
function SetCurrentScenario(_ARG_0_)
  _UPVALUE0_.CurrentScenario = _UPVALUE0_[_ARG_0_]
  _UPVALUE0_.CurrentScenarioID = _ARG_0_
  _UPVALUE0_.CurrentScenarioBlackboard = Game.GetScenarioBlackboardSectionID(_ARG_0_)
end
function InitScenario(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  SetCurrentScenario(_ARG_1_)
  _UPVALUE0_.Character = Game.GetPlayer()
  bWaitingForScenarioChange = false
  if msemenu ~= nil and msemenu.items ~= nil and msemenu.items.CurrentScenario ~= nil then
    msemenu.items.CurrentScenario.Contextual = _UPVALUE0_.CurrentScenario.DebugMenuEntry ~= nil and _UPVALUE0_.CurrentScenario.DebugMenuEntry or {}
  end
  _UPVALUE0_.CurrentScenario.main()
  if _ARG_3_ ~= "Editor" then
    if _UPVALUE0_.CurrentScenario.InitFromBlackboard ~= nil then
      _UPVALUE0_.CurrentScenario.InitFromBlackboard()
    else
      utils.LOG_WARN(utils.LOGTYPE_LOGIC, "InitFromBlackboard method does not exist in Scenario " .. tostring(_ARG_1_))
    end
  elseif _UPVALUE0_.CurrentScenario.CreateWorldGraph ~= nil then
    _UPVALUE0_.CurrentScenario.CreateWorldGraph()
  else
    utils.LOG_WARN(utils.LOGTYPE_LOGIC, "CreateWorldGraph method does not exist in Scenario " .. tostring(_ARG_1_))
  end
end
function HideLoadingScreen()
  Game.SetLoadingScreen(false)
  loadingscreen.HideLoadingScreen()
end
function ReadFromBlackboard(_ARG_0_, _ARG_1_)
  if _UPVALUE0_.CurrentScenarioBlackboard ~= nil then
  end
  return _ARG_1_
end
function WriteToBlackboard(_ARG_0_, _ARG_1_, _ARG_2_)
  if _UPVALUE0_.CurrentScenarioBlackboard ~= nil then
    Blackboard.SetProp(_UPVALUE0_.CurrentScenarioBlackboard, _ARG_0_, _ARG_1_, _ARG_2_)
  end
end
function WriteToSharedBlackboard(_ARG_0_, _ARG_1_, _ARG_2_)
  if _UPVALUE0_.CurrentScenarioBlackboard ~= nil then
    Blackboard.SetProp("ScenarioShared", _ARG_0_, _ARG_1_, _ARG_2_)
  end
end
function ReadFromSharedBlackboard(_ARG_0_, _ARG_1_)
  if _UPVALUE0_.CurrentScenarioBlackboard ~= nil then
  end
  return _ARG_1_
end
function GetBlackboardProp(_ARG_0_, _ARG_1_, _ARG_2_)
  if _ARG_0_ ~= nil then
  end
  return _ARG_2_
end
function SetBlackboardProp(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if _ARG_0_ ~= nil then
    Blackboard.SetProp(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  end
end
function RecoverPlayerMaxItemsAmounts()
  if Blackboard.GetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE") ~= nil then
    Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", (Blackboard.GetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE")))
  end
  if Blackboard.GetProp("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY") ~= nil then
    Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", (Blackboard.GetProp("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY")))
  end
  if Blackboard.GetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX") ~= nil then
    Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", (Blackboard.GetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX")))
  end
  if Blackboard.GetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX") ~= nil then
    Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", (Blackboard.GetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX")))
  end
  Game.ReinitPlayerFromBlackboard()
end
function ActivateDefaultCamera(_ARG_0_)
  if _ARG_0_ == nil then
    _ARG_0_ = true
  end
  _UPVALUE0_.InitialCamera = Game.GetActor("MainCamera")
  if _UPVALUE0_.InitialCamera ~= nil then
    if not Game.ExistsLogicCamera("CAM_Default") then
      CreateDefaultLogicCamera("CAM_Default")
    end
    _UPVALUE0_.InitialCamera.CAMERA:SetLogicCameraParams("CAM_Default", _ARG_0_)
  end
  if _UPVALUE0_.InitialCamera ~= nil then
    if _UPVALUE0_.InitialCamera.CAMERA:GetLogicCameraController("CAM_Default") == nil then
      _UPVALUE0_.InitialCamera:ChangeCameraMode("METROID", _ARG_0_)
    end
    _UPVALUE0_.InitialCamera.CAMERA.bIgnoreSlomo = false
  end
end
function CreateDefaultLogicCamera(_ARG_0_)
  Game.CreateLogicCamera(_ARG_0_, {
    Controller = "METROID",
    MinExtraZDist = "1665.807358",
    MaxExtraZDist = "1665.807358",
    DefaultInterp = "10.0",
    ParamsInterp = "1.5"
  })
end
function FadeOutAndLoadWithoutFadeIn(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if not bWaitingForScenarioChange then
    bWaitingForScenarioChange = true
    if _ARG_3_ == nil then
      _ARG_3_ = 0.3
    end
    Game.FadeOut(_ARG_3_)
    Game.FadeOutStream(_ARG_3_ * 0.8)
    Game.AddPSF(_ARG_3_ + 0.1, "Game.LoadScenarioWithoutFadeIn", "ssssi", tCharacterScenarioLevels[_ARG_0_] ~= nil and tCharacterScenarioLevels[_ARG_0_] or _ARG_0_, _ARG_1_, _ARG_2_, "", 1)
  end
end
function ResetBlackboardAndReload()
  Init.InitGameBlackboard()
  Game.SaveGame("checkpoint", "", "", false)
  Game.LoadScenario(Blackboard.GetProp(Game.GetPlayerBlackboardSectionName(), "LevelID"), Blackboard.GetProp(Game.GetPlayerBlackboardSectionName(), "ScenarioID"), Blackboard.GetProp(Game.GetPlayerBlackboardSectionName(), "StartPoint"), (Blackboard.GetProp("GAME", "Player")))
end
function FadeOutAndLoad(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if not bWaitingForScenarioChange then
    bWaitingForScenarioChange = true
    if _ARG_3_ == nil then
      _ARG_3_ = 0.66
    end
    if _ARG_4_ then
      Game.TransitionFadeOut(_ARG_3_)
    else
      Game.FadeOut(_ARG_3_)
    end
    Game.FadeOutStream(_ARG_3_ * 0.8)
    Game.AddPSF(_ARG_3_ + 0.1, "Game.LoadScenario", "ssssi", tCharacterScenarioLevels[_ARG_0_] ~= nil and tCharacterScenarioLevels[_ARG_0_] or _ARG_0_, _ARG_1_, _ARG_2_, "", 1)
  end
end
function FadeOutBGAndLoad(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if not bWaitingForScenarioChange then
    bWaitingForScenarioChange = true
    if _ARG_3_ == nil then
      _ARG_3_ = 0.66
    end
    Game.FadeOutBG(_ARG_3_)
    Game.FadeOutStream(_ARG_3_ * 0.8)
    Game.AddPSF(_ARG_3_ + 0.1, "Game.LoadScenario", "ssssi", tCharacterScenarioLevels[_ARG_0_] ~= nil and tCharacterScenarioLevels[_ARG_0_] or _ARG_0_, _ARG_1_, _ARG_2_, "", 2)
  end
end
function FadeOutAndReloadCurrentScenario(_ARG_0_)
  if not bWaitingForScenarioChange then
    bWaitingForScenarioChange = true
    if _ARG_0_ == nil then
      _ARG_0_ = 0.66
    end
    Game.FadeOut(_ARG_0_)
    Game.FadeOutStream(_ARG_0_ * 0.8)
    Game.AddPSF(_ARG_0_ + 0.1, "Game.ReloadCurrentScenario", "")
  end
end
function FadeOutAndLoadWithPlayer(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if not bWaitingForScenarioChange then
    bWaitingForScenarioChange = true
    if _ARG_3_ == nil then
      _ARG_3_ = 0.66
    end
    Game.TransitionFadeOut(_ARG_3_)
    Game.FadeOutStream(_ARG_3_ * 0.8)
    Game.AddPSF(_ARG_3_ + 0.1, "Game.LoadScenario", "ssssi", tCharacterScenarioLevels[_ARG_0_] ~= nil and tCharacterScenarioLevels[_ARG_0_] or _ARG_0_, _ARG_1_, _ARG_2_, _ARG_4_, 1)
  end
end
function FadeOutAndCutscene(_ARG_0_, _ARG_1_)
  if _ARG_1_ == nil then
    _ARG_1_ = 0.3
  end
  Game.FadeOut(_ARG_1_)
  Game.AddPSF(_ARG_1_ + 0.1, "Game.LaunchCutscene", "s", _ARG_0_)
end
function FadeOutAndUnloadScenario(_ARG_0_, _ARG_1_)
  if _ARG_1_ == nil then
    _ARG_1_ = 0.3
  end
  Game.FadeOut(_ARG_1_)
  Game.AddPSF(_ARG_1_ + 0.1, "Game.UnloadScenario", "s", _ARG_0_)
end
function FadeOutAndSetCutsceneMode(_ARG_0_, _ARG_1_)
  if _ARG_1_ == nil then
    _ARG_1_ = 0.3
  end
  if Game.GetPlayer() ~= nil then
    Game.GetPlayer().INPUT:IgnoreInputFor(_ARG_1_ + 0.1, "FadeOutAndSetCutsceneMode", true)
  end
  Game.FadeOut(_ARG_1_)
  Game.AddPSF(_ARG_1_ + 0.1, "Game.SetCutsceneMode", "s", _ARG_0_)
end
function FadeOutAndLoadWithCutscene(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  Cutscenes.NextLevelId = _ARG_0_
  Cutscenes.NextScenearioId = _ARG_1_
  Cutscenes.NextStartPoint = _ARG_2_
  if _ARG_4_ == nil then
    _ARG_4_ = 0.3
  end
  if Game.GetPlayer() ~= nil then
    Game.GetPlayer().INPUT:IgnoreInputFor(_ARG_4_ + 0.1, "FadeOutAndLoadWithCutscene", true)
  end
  Game.FadeOut(_ARG_4_)
  Game.AddPSF(_ARG_4_ + 0.1, "Game.SetLoadingMode", "s", _ARG_3_)
end
function FadeOutAndGoToMainMenu(_ARG_0_, _ARG_1_, _ARG_2_)
  if _ARG_0_ == nil then
    _ARG_0_ = 0.3
  end
  if _ARG_1_ == nil then
    _ARG_1_ = false
  end
  if _ARG_2_ == nil then
    _ARG_2_ = false
  end
  Game.FadeOut(_ARG_0_)
  Game.AddPSF(_ARG_0_ + 0.1, "Scenario.GoToMainMenu", "bb", _ARG_1_, _ARG_2_)
end
function GoToMainMenu(_ARG_0_, _ARG_1_)
  if _ARG_0_ == true and loadingscreen then
    loadingscreen.SetMainMenuLoadingScreen()
  end
  if _ARG_1_ then
    GUI.ResetMainMenuDebugGUI("gui/scripts/msemenu_start.lua", "")
  end
  Game.GoToMainMenu()
end
function FadeOut(_ARG_0_)
  if _ARG_0_ == nil then
    _ARG_0_ = 0.3
  end
  Game.FadeOut(_ARG_0_)
end
function FadeIn(_ARG_0_)
  if _ARG_0_ == nil then
    _ARG_0_ = 0.3
  end
  Game.FadeIn(0.1, _ARG_0_)
end
function ForEachEntityIn(_ARG_0_, _ARG_1_, ...)
  for _FORV_6_, _FORV_7_ in ipairs(_ARG_0_) do
    if Game.GetActor(_FORV_7_) ~= nil and Game.GetActor(_FORV_7_)[_ARG_1_] ~= nil then
      Game.GetActor(_FORV_7_)[_ARG_1_](Game.GetActor(_FORV_7_), unpack(nil))
    end
  end
end
fSweetDeadStartDelay = 0.2
fSweetDeadFadeOutTime = 0.5
fSweetDeadBlackScreenTime = 0.5
fSweetDeadFadeInTime = 0.5
function CheckSweetDead(_ARG_0_)
  if Game.GetPlayer().CurrentLife > 0 then
    Scenario.DisableInput()
    Game.GetPlayer():IgnoreDamageFor(fSweetDeadStartDelay + fSweetDeadFadeOutTime + fSweetDeadBlackScreenTime + fSweetDeadFadeInTime)
    Game.GetPlayer().ATTACK.bWantsEnabled = false
    Game.GetPlayer():IgnoreHangFor(fSweetDeadStartDelay + fSweetDeadFadeOutTime + fSweetDeadBlackScreenTime + fSweetDeadFadeInTime)
    Game.GetPlayer().Invulnerable = true
    if _ARG_0_ == nil then
      _ARG_0_ = Blackboard.GetProp(Game.GetPlayerBlackboardSectionName(), "StartPoint")
    end
    Game.AddSF(fSweetDeadStartDelay, "Scenario.OnSweetDeadFadeOut", "s", _ARG_0_)
  end
end
function OnSweetDeadFadeOut(_ARG_0_)
  Game.FadeOut(fSweetDeadFadeOutTime)
  Game.AddSF(fSweetDeadFadeOutTime + fSweetDeadBlackScreenTime, "Scenario.OnSweetDeadTeleport", "s", _ARG_0_)
end
function OnSweetDeadTeleport(_ARG_0_)
  Game.TeleportEntityToStartPoint(Game.GetPlayerName(), _ARG_0_, fSweetDeadFadeInTime, true)
  Game.FadeIn(0.1, fSweetDeadFadeInTime)
  Game.AddSF(0, "Scenario.OnSweetDeadFinished", "")
end
function OnSweetDeadFinished()
  Game.GetPlayer().ATTACK.bWantsEnabled = true
  Game.GetPlayer().Invulnerable = false
  Scenario.EnableInput()
  if CurrentScenario ~= nil and CurrentScenario.OnSweetDeadFinished ~= nil then
    CurrentScenario.OnSweetDeadFinished()
  end
end
function EnableInput()
  if Game.GetPlayer() ~= nil then
    Game.GetPlayer().INPUT.bWantsEnabled = true
    Game.DelSF("Scenario.OnEndDisableInputFor")
  end
end
function DisableInput()
  if Game.GetPlayer() ~= nil then
    Game.GetPlayer().INPUT.bWantsEnabled = false
    Game.DelSF("Scenario.OnEndDisableInputFor")
  end
end
function DisableInputFor(_ARG_0_)
  if Game.GetPlayer() ~= nil then
    Game.GetPlayer().INPUT.bWantsEnabled = false
    Game.AddSF(_ARG_0_, "Scenario.OnEndDisableInputFor", "")
  end
end
function OnEndDisableInputFor()
  if Game.GetPlayer() ~= nil then
    Game.GetPlayer().INPUT.bWantsEnabled = true
  end
end
function IsUserInteractionEnabled(_ARG_0_)
  if _ARG_0_ == nil then
    _ARG_0_ = false
  end
  if false and not Game.IsCutscenePlaying() and _ARG_0_ and Game.GetPlayer() ~= nil then
  end
  return Game.GetPlayer().INPUT.bWantsEnabled
end
function PlayLogicCamera(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_)
  Game.DelSF("Scenario.PlayLogicCameraEnd")
  Game.OverrideSoundListener("OnTarget")
  InitialCamera.CAMERA:SetLogicCameraParams(_ARG_0_, _ARG_1_)
  if _ARG_5_ or false then
    DisableInput()
  end
  Game.AddSF(_ARG_2_, "Scenario.PlayLogicCameraEnd", "sbb", _ARG_3_, _ARG_4_, _ARG_5_ or false)
end
function PlayLogicCameraEnd(_ARG_0_, _ARG_1_, _ARG_2_)
  utils.LOG(utils.LOGTYPE_LOGIC, "called PlayLogicCameraEnd " .. _ARG_0_)
  Game.ResetOverrideSoundListener()
  if _ARG_2_ then
    EnableInput()
  end
  InitialCamera.CAMERA:SetLogicCameraParams(_ARG_0_, _ARG_1_)
end
function GetPlayerCurrentScenario(_ARG_0_)
  return Blackboard.GetProp(string.upper(_ARG_0_), "ScenarioID")
end
function GetGameProgressPct()
  return math.min(0, 100)
end
tGetGameProgressPctInTable = {GameProgressPct = nil}
function GetGameProgressPctInTable()
  tGetGameProgressPctInTable = string.format("%0.2f", GetGameProgressPct())
  return tGetGameProgressPctInTable
end
function SetSmartObjectStateUse(_ARG_0_, _ARG_1_)
  if Game.GetActor(_ARG_0_) ~= nil and Game.GetActor(_ARG_0_).SMARTOBJECT ~= nil then
    Game.GetActor(_ARG_0_).SMARTOBJECT:SetUseState(_ARG_1_)
  end
end
function SetItemAmount(_ARG_0_, _ARG_1_)
  Game.SetItemAmount(Game.GetPlayerName(), _ARG_0_, _ARG_1_)
  Game.ReinitPlayerFromBlackboard()
end
function SetPlayerPosition(_ARG_0_, _ARG_1_, _ARG_2_)
  utils.LOG(utils.LOGTYPE_LOGIC, "Scenario Setting player position to " .. _ARG_0_ .. "," .. _ARG_1_ .. "," .. _ARG_2_)
  Game.GetPlayer().vPos = V3D(_ARG_0_, _ARG_1_, _ARG_2_)
end
function CanaManageHazarousEntity(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  for _FORV_7_, _FORV_8_ in pairs(CurrentScenario.tHazarous) do
    if _FORV_7_ ~= _ARG_0_ and not _ARG_3_ and Game.IsPoolActivated(_FORV_7_) ~= _ARG_3_ then
      for _FORV_13_, _FORV_14_ in pairs(CurrentScenario.tHazarous[_FORV_7_][_ARG_1_]) do
        if _FORV_14_ == _ARG_2_ then
          return false
        end
      end
    end
  end
  return true
end
function EnableHazarous(_ARG_0_, _ARG_1_)
  if CurrentScenario.EnableHazarous ~= nil then
    CurrentScenario.EnableHazarous(_ARG_0_, _ARG_1_)
  end
  if CurrentScenario.tHazarous[_ARG_0_] ~= nil then
    for _FORV_6_, _FORV_7_ in pairs(CurrentScenario.tHazarous[_ARG_0_].Triggers) do
      if CanaManageHazarousEntity(_ARG_0_, "Triggers", _FORV_7_, _ARG_1_) and Game.GetActor(_FORV_7_) ~= nil then
        Game.GetActor(_FORV_7_):SetWantsEnabled(not _ARG_1_)
      end
    end
    for _FORV_6_, _FORV_7_ in pairs(CurrentScenario.tHazarous[_ARG_0_].SpawnGroups) do
      if CanaManageHazarousEntity(_ARG_0_, "SpawnGroups", _FORV_7_, _ARG_1_) and Game.GetActor(_FORV_7_) ~= nil then
        if _ARG_1_ then
          Game.GetActor(_FORV_7_).SPAWNGROUP:DisableSpawnGroup()
        else
          Game.GetActor(_FORV_7_).SPAWNGROUP:EnableSpawnGroup()
        end
      end
    end
    for _FORV_6_, _FORV_7_ in pairs(CurrentScenario.tHazarous[_ARG_0_].Usables) do
      if CanaManageHazarousEntity(_ARG_0_, "Usables", _FORV_7_, _ARG_1_) and Game.GetActor(_FORV_7_) ~= nil then
        Game.GetActor(_FORV_7_).USABLE:Activate(not _ARG_1_)
      end
    end
  end
end
function IncrementNumberOfNonReachableTriggers()
  print("IncrementNumberOfNonReachableTriggers")
  Game.GetPlayerInfo():IncrementNumberOfNonReachableTriggers()
end
function DecrementNumberOfNonReachableTriggers()
  print("DecrementNumberOfNonReachableTriggers")
  Game.GetPlayerInfo():DecrementNumberOfNonReachableTriggers()
end
function CheckEmmyAlive(_ARG_0_)
  if _ARG_0_ ~= nil and _ARG_0_.AI ~= nil then
    return true
  else
    return false
  end
end
function LoadScenario(_ARG_0_, _ARG_1_, _ARG_2_)
  if _ARG_1_ == nil or not _ARG_1_ then
    _ARG_1_ = true
  end
  if _ARG_1_ or Blackboard.GetProp(Game.GetPlayerBlackboardSectionName(), "ScenarioID") == nil or Blackboard.GetProp(Game.GetPlayerBlackboardSectionName(), "ScenarioID") ~= _ARG_0_ then
    Game.SetRecoveryModeTemporarilyDisabled(true)
    Blackboard.Reset()
    if tScenarioMenuDefs.aScenarioPlayers[_ARG_0_] == nil then
      Game.DebugLoadScenario(tScenarioMenuDefs.aScenarioDefs[_ARG_0_], _ARG_0_, _ARG_2_, string.gmatch(tScenarioMenuDefs.aScenarioDefs[_ARG_0_], "%_(.+)$")(), 1)
    else
      Game.DebugLoadScenario(tScenarioMenuDefs.aScenarioDefs[_ARG_0_], _ARG_0_, _ARG_2_, tScenarioMenuDefs.aScenarioPlayers[_ARG_0_], 1)
    end
  end
  return true
end
function AddFadeTransition(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if Blackboard.GetProp(Game.GetPlayerBlackboardSectionName(), "ScenarioID") == nil then
    return
  end
  if ScenarioFadeTable == nil then
    ScenarioFadeTable = {}
  end
  if ScenarioFadeTable[Blackboard.GetProp(Game.GetPlayerBlackboardSectionName(), "ScenarioID")] == nil then
    ScenarioFadeTable[Blackboard.GetProp(Game.GetPlayerBlackboardSectionName(), "ScenarioID")] = {}
  end
  if ScenarioFadeTable[Blackboard.GetProp(Game.GetPlayerBlackboardSectionName(), "ScenarioID")][_ARG_0_] == nil then
    ScenarioFadeTable[Blackboard.GetProp(Game.GetPlayerBlackboardSectionName(), "ScenarioID")][_ARG_0_] = {}
  end
  if ScenarioFadeTable[Blackboard.GetProp(Game.GetPlayerBlackboardSectionName(), "ScenarioID")][_ARG_0_][_ARG_1_] == nil then
    ScenarioFadeTable[Blackboard.GetProp(Game.GetPlayerBlackboardSectionName(), "ScenarioID")][_ARG_0_][_ARG_1_] = {}
  end
  if ScenarioFadeTable[Blackboard.GetProp(Game.GetPlayerBlackboardSectionName(), "ScenarioID")][_ARG_0_][_ARG_1_][_ARG_2_] == nil then
    ScenarioFadeTable[Blackboard.GetProp(Game.GetPlayerBlackboardSectionName(), "ScenarioID")][_ARG_0_][_ARG_1_][_ARG_2_] = {}
  end
  if ScenarioFadeTable[Blackboard.GetProp(Game.GetPlayerBlackboardSectionName(), "ScenarioID")][_ARG_0_][_ARG_1_][_ARG_2_][_ARG_3_] == nil then
    ScenarioFadeTable[Blackboard.GetProp(Game.GetPlayerBlackboardSectionName(), "ScenarioID")][_ARG_0_][_ARG_1_][_ARG_2_][_ARG_3_] = _ARG_4_
  end
  if ScenarioFadeTable[Blackboard.GetProp(Game.GetPlayerBlackboardSectionName(), "ScenarioID")][_ARG_2_] == nil then
    ScenarioFadeTable[Blackboard.GetProp(Game.GetPlayerBlackboardSectionName(), "ScenarioID")][_ARG_2_] = {}
  end
  if ScenarioFadeTable[Blackboard.GetProp(Game.GetPlayerBlackboardSectionName(), "ScenarioID")][_ARG_2_][_ARG_3_] == nil then
    ScenarioFadeTable[Blackboard.GetProp(Game.GetPlayerBlackboardSectionName(), "ScenarioID")][_ARG_2_][_ARG_3_] = {}
  end
  if ScenarioFadeTable[Blackboard.GetProp(Game.GetPlayerBlackboardSectionName(), "ScenarioID")][_ARG_2_][_ARG_3_][_ARG_0_] == nil then
    ScenarioFadeTable[Blackboard.GetProp(Game.GetPlayerBlackboardSectionName(), "ScenarioID")][_ARG_2_][_ARG_3_][_ARG_0_] = {}
  end
  if ScenarioFadeTable[Blackboard.GetProp(Game.GetPlayerBlackboardSectionName(), "ScenarioID")][_ARG_2_][_ARG_3_][_ARG_0_][_ARG_1_] == nil then
    ScenarioFadeTable[Blackboard.GetProp(Game.GetPlayerBlackboardSectionName(), "ScenarioID")][_ARG_2_][_ARG_3_][_ARG_0_][_ARG_1_] = _ARG_4_
  end
end
function GetTransitionTypeOverride(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if ScenarioFadeTable == nil then
    return nil
  end
  if ScenarioFadeTable[Blackboard.GetProp(Game.GetPlayerBlackboardSectionName(), "ScenarioID")] == nil then
    return nil
  end
  if ScenarioFadeTable[Blackboard.GetProp(Game.GetPlayerBlackboardSectionName(), "ScenarioID")][_ARG_0_] == nil then
    return nil
  elseif ScenarioFadeTable[Blackboard.GetProp(Game.GetPlayerBlackboardSectionName(), "ScenarioID")][_ARG_0_][_ARG_1_] == nil then
    return nil
  elseif ScenarioFadeTable[Blackboard.GetProp(Game.GetPlayerBlackboardSectionName(), "ScenarioID")][_ARG_0_][_ARG_1_][_ARG_2_] == nil then
    return nil
  elseif ScenarioFadeTable[Blackboard.GetProp(Game.GetPlayerBlackboardSectionName(), "ScenarioID")][_ARG_0_][_ARG_1_][_ARG_2_][_ARG_3_] == nil then
    return nil
  else
    return ScenarioFadeTable[Blackboard.GetProp(Game.GetPlayerBlackboardSectionName(), "ScenarioID")][_ARG_0_][_ARG_1_][_ARG_2_][_ARG_3_]
  end
end
function SubAreaChangeRequest(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if GetTransitionTypeOverride(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_) ~= nil then
    Game.SetSubAreasPreferredTransitionType((GetTransitionTypeOverride(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)))
  else
    Game.SetSubAreasPreferredTransitionType("FakeFade")
  end
end
function SetSamusAbilities_STANDARD_EARLY()
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 199)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 199)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 20)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 20)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SONAR", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  Blackboard.SetProp("GAME_PROGRESS", "QUARENTINE_OPENED", "b", false)
  print("SetSamusAbilities_CAVE")
end
function SetSamusAbilities_CAVE()
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 99)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 99)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 15)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 15)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SONAR", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  Blackboard.SetProp("GAME_PROGRESS", "QUARENTINE_OPENED", "b", false)
  print("SetSamusAbilities_CAVE")
end
function SetSamusAbilities_MAGMA()
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 199)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 199)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 25)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 25)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SONAR", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  Blackboard.SetProp("GAME_PROGRESS", "QUARENTINE_OPENED", "b", false)
  print("SetSamusAbilities_MAGMA")
end
function SetSamusAbilities_MAGMA_AFTERWIDE()
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 299)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 299)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 25)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 25)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SONAR", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  Blackboard.SetProp("GAME_PROGRESS", "QUARENTINE_OPENED", "b", false)
  print("SetSamusAbilities_MAGMA_AFTERWIDE")
end
function SetSamusAbilities_CAVE_AFTERVARIA()
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 299)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 299)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 25)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 25)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SONAR", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  Blackboard.SetProp("GAME_PROGRESS", "QUARENTINE_OPENED", "b", false)
  print("SetSamusAbilities_CAVE_AFTERVARIA")
end
function SetSamusAbilities_LAB()
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 299)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 299)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 25)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 25)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SONAR", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  Blackboard.SetProp("GAME_PROGRESS", "QUARENTINE_OPENED", "b", false)
  print("SetSamusAbilities_LAB")
end
function SetSamusAbilities_AQUA()
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 399)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 399)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 25)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 25)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SONAR", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  Blackboard.SetProp("GAME_PROGRESS", "QUARENTINE_OPENED", "b", false)
  print("SetSamusAbilities_AQUA")
end
function SetSamusAbilities_FOREST()
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 499)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 499)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 54)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 54)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SONAR", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  Blackboard.SetProp("GAME_PROGRESS", "QUARENTINE_OPENED", "b", false)
  print("SetSamusAbilities_FOREST")
end
function SetSamusAbilities_QUARANTINE()
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 499)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 499)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 56)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 56)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SONAR", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  Blackboard.SetProp("GAME_PROGRESS", "QUARENTINE_OPENED", "b", true)
  print("SetSamusAbilities_QUARANTINE")
end
function SetSamusAbilities_SANCTUARY()
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 699)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 699)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 56)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 56)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SONAR", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  Blackboard.SetProp("GAME_PROGRESS", "QUARENTINE_OPENED", "b", true)
  print("SetSamusAbilities_SANCTUARY")
end
function SetSamusAbilities_AQUA_AFTERGRAVITY()
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 799)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 799)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 74)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 74)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SONAR", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  Blackboard.SetProp("GAME_PROGRESS", "QUARENTINE_OPENED", "b", true)
  print("SetSamusAbilities_AQUA_AFTERGRAVITY")
end
function SetSamusAbilities_COOLDOWN()
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 799)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 799)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 74)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 74)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SONAR", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  Blackboard.SetProp("GAME_PROGRESS", "QUARENTINE_OPENED", "b", true)
  print("SetSamusAbilities_COOLDOWN")
end
function SetSamusAbilities_SHIPYARD()
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 899)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 899)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 92)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 92)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SONAR", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  Blackboard.SetProp("GAME_PROGRESS", "QUARENTINE_OPENED", "b", true)
  print("SetSamusAbilities_SHIPYARD")
end
function SetSamusAbilities_SANCTUARY_AFTERWAVE()
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 899)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 899)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 92)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 92)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SONAR", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  Blackboard.SetProp("GAME_PROGRESS", "QUARENTINE_OPENED", "b", true)
  print("SetSamusAbilities_SANCTUARY_AFTERWAVE")
end
function SetSamusAbilities_FULLEQUIP()
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 499)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 499)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 50)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 50)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPRING_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SONAR", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MULTILOCKON", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 15)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 15)
  Blackboard.SetProp("GAME_PROGRESS", "QUARENTINE_OPENED", "b", true)
  print("SetSamusAbilities_FULLEQUIP")
end
function Activation_TG_PostBoss(_ARG_0_)
  if Game.GetActor((string.gsub(_ARG_0_, "SG_", "TG_PostBossCheckpoint_"))) ~= nil then
    print("--- ACTIVATION TRIGGER " .. string.gsub(_ARG_0_, "SG_", "TG_PostBossCheckpoint_") .. " ---")
    Game.GetActor((string.gsub(_ARG_0_, "SG_", "TG_PostBossCheckpoint_"))).bEnabled = true
  end
  if Game.GetActor((string.gsub(_ARG_0_, "SG_", "TG_SnapshotCheckpoint_"))) ~= nil then
    print("--- DEACTIVATION TRIGGER " .. string.gsub(_ARG_0_, "SG_", "TG_SnapshotCheckpoint_") .. " ---")
    Game.GetActor((string.gsub(_ARG_0_, "SG_", "TG_SnapshotCheckpoint_"))).bEnabled = true
  end
end
fEmmyAbilityObtainedTimeToStart = 0.3
fEmmyAbilityObtainedFadeOutTime = 0.5
fEmmyAbilityObtainedFadeTime = 0.05
fEmmyAbilityObtainedFadeInTime = 1
sEmmyAbilityObtainedCallback = ""
sEmmyAbilityObtainedFinalCallback = ""
function EmmyAbilityObtained_Start()
  Game.PowerBombFade(fEmmyAbilityObtainedFadeOutTime, fEmmyAbilityObtainedFadeTime, fEmmyAbilityObtainedFadeInTime)
  Game.AddSF(fEmmyAbilityObtainedFadeOutTime + fEmmyAbilityObtainedFadeTime * 0.5, "Scenario.EmmyAbilityObtained_ResetDarkness", "")
end
function EmmyAbilityObtained_ResetDarkness()
  Game.AddSF(fEmmyAbilityObtainedFadeInTime + fEmmyAbilityObtainedFadeTime * 0.5, "Scenario.EmmyAbilityObtained_RecoverInput", "")
  EmmyAbilityObtained_ShowMessageLaunchCallbacks()
  Game.StopForceDarkness("emmydeath", 0)
  CurrentScenario.OnEmmyAbilityObtainedFadeOutCompleted()
end
function EmmyAbilityObtained_RecoverInput()
  EmmyAbilityObtained_ShowMessageOmegaCannonTurnOff()
  if Game.GetPlayer() ~= nil then
    Game.GetPlayer().INPUT:IgnoreInput(false, false, "EmmyAbilityObtained")
  end
end
function EmmyAbilityObtained_ShowMessage(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  sEmmyAbilityObtainedCallback = _ARG_1_
  sEmmyAbilityObtainedFinalCallback = _ARG_2_
  if _ARG_3_ then
    GUI.SetSamusMenuCompositionLuaCallbackOnClosed("Scenario.EmmyAbilityObtained_ShowMessageLaunchCallbacks")
    GUI.ShowMessage(_ARG_0_, true, "", false)
  else
    GUI.SetSamusMenuCompositionLuaCallbackOnClosed("Scenario.EmmyAbilityObtained_ShowMessageCallback")
    GUI.ShowMessage(_ARG_0_, true, "", false)
  end
end
function EmmyAbilityObtained_ShowMessageLaunchCallbacks()
  Game.AddSF(-1, sEmmyAbilityObtainedCallback, "")
  Game.AddSF(-1, sEmmyAbilityObtainedFinalCallback, "")
end
function EmmyAbilityObtained_ShowMessageCallback()
  if Game.GetPlayer() ~= nil then
    Game.GetPlayer().INPUT:IgnoreInput(true, false, "EmmyAbilityObtained")
  end
  Game.AddSF(fEmmyAbilityObtainedTimeToStart, "Scenario.EmmyAbilityObtained_Start", "")
end
function EmmyAbilityObtained_ShowMessageOmegaCannonTurnOff()
  GUI.ShowMessage("#GUI_OMEGA_EMMY_1", true, "")
end
