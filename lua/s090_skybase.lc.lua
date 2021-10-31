function s090_skybase.main()
  Blackboard.SetProp("GAME_PROGRESS", "TeleportWorldUnlocked", "b", true)
end
function s090_skybase.InitFromBlackboard()
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  Game.ReinitPlayerFromBlackboard()
  Game.PopSetup("ChangeCamera_002_Distance", true, true)
end
function s090_skybase.SetupDebugGameBlackboard()
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPECIAL_ENERGY", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 999)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 999)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 84)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 84)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 3)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 3)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SONAR", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_METROIDNIZATION", "f", 0)
end
s090_skybase.tGetOnDeathOverrides = {ShowDeath = true, GoToMainMenu = false}
function s090_skybase.GetOnDeathOverrides()
  return s090_skybase.tGetOnDeathOverrides
end
function s090_skybase.OnEntityGenerated(_ARG_0_, _ARG_1_)
  if _ARG_1_ ~= nil then
    print("OnEntityGenerated!!!!!!")
  end
end
function s090_skybase.OnComanderElevatorFinished()
  Game.AddSF(0.5, "s090_skybase.CommanderCutscenePresentation", "")
end
function s090_skybase.CommanderCutscenePresentation()
  if Game.GetActor("cutsceneplayer_86") ~= nil then
    Game.GetActor("cutsceneplayer_86").CUTSCENE:TryLaunchCutscene()
  end
end
function s090_skybase.Delayed_OnComanderElevatorFinished()
  GUI.ShowMessage("#COMMANDER_CUTSCENE_ACCESSPOINT_REVEAL", true, "s090_skybase.OnComanderElevatorFinished_MessageSkipped")
  if Game.GetPlayer() ~= nil then
    Game.GetPlayer().INPUT:IgnoreInput(false, false, "OnComanderElevatorFinished")
  end
end
function s090_skybase.OnComanderElevatorFinished_MessageSkipped()
end
function s090_skybase.ActivateCommanderSpawnGroup()
  if Game.GetActor("SG_ChozoCommander") ~= nil then
    Game.GetActor("SG_ChozoCommander").SPAWNGROUP:EnableSpawnGroup()
  end
end
function s090_skybase.FadeOutCommanderMusic1()
  Game.StopMusicStream(0, 1, 3)
end
function s090_skybase.FadeOutCommanderMusic2()
  Game.StopMusicStream(1, 1, 3)
end
function s090_skybase.SubAreaChangeRequest(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  Scenario.SubAreaChangeRequest(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
end
function s090_skybase.OnSubAreaChange(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
end
function s090_skybase.OnEnter_ChangeCamera_002_Near()
  Game.PushSetup("ChangeCamera_002_Distance", true, true)
end
function s090_skybase.OnEnter_ChangeCamera_002_Far()
  Game.PopSetup("ChangeCamera_002_Distance", true, true)
end
function s090_skybase.OnEnter_ChangeInterp()
  Game.GetCamera().CAMERA:SetLogicCameraParams("CAM_Near", true)
end
function s090_skybase.OnExit_ChangeInterp()
  Game.GetCamera().CAMERA:SetLogicCameraParams("CAM_Default", true)
end
function s090_skybase.ObtainHyperSuit()
  Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_HYPER_SUIT", 1, true)
  Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_WEAPON_HYPER_BEAM", 1, true)
  Game.GetPlayer().LIFE:StopLifeAlarmSFX()
  Game.GetPlayer().MODELUPDATER.sModelAlias = "Hyper"
end
function s090_skybase.cutsceneplayer_101_left()
  if Game.GetActor("cutsceneplayer_101") ~= nil and Game.GetActor("cutsceneplayer_101_left") ~= nil then
    Game.GetActor("cutsceneplayer_101").CUTSCENE:QueueCutscenePlayer((Game.GetActor("cutsceneplayer_101_left")))
  end
end
function s090_skybase.cutsceneplayer_101_right()
  if Game.GetActor("cutsceneplayer_101") ~= nil and Game.GetActor("cutsceneplayer_101_right") ~= nil then
    Game.GetActor("cutsceneplayer_101").CUTSCENE:QueueCutscenePlayer((Game.GetActor("cutsceneplayer_101_right")))
  end
end
function s090_skybase.cutsceneplayer_108_end()
  if Game.GetPlayer() ~= nil then
    if Game.GetPlayer().INVENTORY ~= nil then
      Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_HYPER_SUIT", 1, true)
    end
    if Game.GetPlayer().MODELUPDATER ~= nil then
      Game.GetPlayer().MODELUPDATER.sModelAlias = "Hyper"
      Game.GetPlayer().MODELUPDATER.ForceUpdate()
    end
    Game.LoadScenario("c10_samus", "s080_shipyard", "SP_Checkpoint_CommanderX", "", 1)
    Game.PlayCutsceneOnScenarioLoaded("cutsceneplayer_108", true, true, true, false, false, "", "", 0, 0, 0)
  end
end
