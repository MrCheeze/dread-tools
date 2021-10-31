function s080_shipyard.main()
end
function s080_shipyard.OnLoadScenarioFinished()
  if Game.GetCurrentSubAreaId() == "collision_camera_020" and Game.GetActor("cutsceneplayer_108") ~= nil and Game.GetActor("cutsceneplayer_108").CUTSCENE:HasCutsceneBeenPlayed() == false then
    Game.ResetFader()
    Game.FadeOut(0)
  end
end
function s080_shipyard.InitFromBlackboard()
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  Game.ReinitPlayerFromBlackboard()
  Game.ForceEntityIconVisible("LM_Samus_Ship")
  _UPVALUE0_ = Scenario.ReadFromBlackboard(Scenario.LUAPropIDs.SHIP_EMMY_METROIDNIZATION, false)
  _UPVALUE1_ = Scenario.ReadFromBlackboard(Scenario.LUAPropIDs.SHIP_STRONG_REACTION, false)
  _UPVALUE2_ = Scenario.ReadFromBlackboard(Scenario.LUAPropIDs.SHIP_CWXELITE_PRESENTATION, false)
  if Blackboard.GetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM") ~= nil and Blackboard.GetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM") > 0 then
    s080_shipyard.Activate_Setup_WaveBeamAcquired()
  end
end
function s080_shipyard.Activate_Setup_WaveBeamAcquired()
  Game.PushSetup("WaveBeamAcquired", true, true)
end
function s080_shipyard.SetupDebugGameBlackboard()
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPECIAL_ENERGY", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 899)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 899)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 84)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 84)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
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
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SONAR", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_METROIDNIZATION", "f", 0)
end
s080_shipyard.tGetOnDeathOverrides = {ShowDeath = true, GoToMainMenu = false}
function s080_shipyard.GetOnDeathOverrides()
  return s080_shipyard.tGetOnDeathOverrides
end
function s080_shipyard.OnEntityGenerated(_ARG_0_, _ARG_1_)
  if _ARG_1_ ~= nil then
    print("OnEntityGenerated!!!!!!")
  end
end
function s080_shipyard.OnEnter_ChangeCamera_005_B()
  Game.SetCollisionCameraLocked("collision_camera_005_B", true)
end
function s080_shipyard.OnExit_ChangeCamera_005_B()
  Game.SetCollisionCameraLocked("collision_camera_005_B", false)
end
function s080_shipyard.OnEnter_ChangeCamera_006_B()
  Game.SetCollisionCameraLocked("collision_camera_006_B", true)
end
function s080_shipyard.OnExit_ChangeCamera_006_B()
  Game.SetCollisionCameraLocked("collision_camera_006_B", false)
end
function s080_shipyard.OnEnter_ChangeCamera_009_C()
  Game.PushSetup("ChangeCamera_009_C", false, true)
end
function s080_shipyard.OnExit_ChangeCamera_009_C()
  Game.PopSetup("ChangeCamera_009_C", false, true)
end
function s080_shipyard.OnEnter_ChangeCamera_009_B()
  Game.SetCollisionCameraLocked("collision_camera_009_B", true)
end
function s080_shipyard.OnExit_ChangeCamera_009_B()
  Game.SetCollisionCameraLocked("collision_camera_009_B", false)
end
function s080_shipyard.OnEnter_ChangeCamera_013_B()
  Game.SetCollisionCameraLocked("collision_camera_013_B", true)
end
function s080_shipyard.OnExit_ChangeCamera_013_B()
  Game.SetCollisionCameraLocked("collision_camera_013_B", false)
end
function s080_shipyard.OnEnter_ChangeCamera_013_C()
  Game.SetCollisionCameraLocked("collision_camera_013_C", true)
  if Game.GetActor("block_pbtube_2") ~= nil then
    Game.GetActor("block_pbtube_2").LIFE.bWantsEnabled = true
  end
end
function s080_shipyard.OnExit_ChangeCamera_013_C()
  Game.SetCollisionCameraLocked("collision_camera_013_C", false)
  if Game.GetActor("block_pbtube_2") ~= nil then
    Game.GetActor("block_pbtube_2").LIFE.bWantsEnabled = false
  end
end
function s080_shipyard.OnEnter_ChangeCamera_014_B()
  Game.SetCollisionCameraLocked("collision_camera_014_B", true)
end
function s080_shipyard.OnExit_ChangeCamera_014_B()
  Game.SetCollisionCameraLocked("collision_camera_014_B", false)
end
function s080_shipyard.OnEndStrongReactionEvent()
  Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_METROIDNIZATION", 1, true)
end
function s080_shipyard.OnEnter_trigger_PowerBombObtained(_ARG_0_, _ARG_1_)
  _ARG_0_.bEnabled = false
  Game.AddSF(1, "s080_shipyard.DelayedPowerBombObtained", "")
  if Game.GetPlayer() ~= nil then
    Game.GetPlayer().INPUT:IgnoreInput(true, false, "OnEnter_trigger_PowerBombObtained")
  end
end
function s080_shipyard.DelayedPowerBombObtained()
  GUI.ShowMessage("#CUT_POWER_BOMB", true, "s080_shipyard.PowerBombObtainedMessageSkipped")
  if Game.GetPlayer() ~= nil then
    Game.GetPlayer().INPUT:IgnoreInput(false, false, "OnEnter_trigger_PowerBombObtained")
  end
end
function s080_shipyard.On0071Started()
  GUI.AddEmmyMissionLogEntry("#MLOG_ENCOUNTER_EMMY_SHIP")
end
function s080_shipyard.OnChozoWarriorActivated()
  GUI.WriteEmmyDeathToBlackboard()
  if Game.GetActor("SG_CWX") ~= nil then
    Game.GetActor("SG_CWX").SPAWNGROUP:EnableSpawnGroup()
  end
  if Game.GetEntityFromSpawnPoint("SP_Emmy") ~= nil then
    Game.GetEntityFromSpawnPoint("SP_Emmy").bEnabled = false
  end
  if Game.GetActor("PRP_EmmyShipyard") ~= nil then
    Game.GetActor("PRP_EmmyShipyard").bEnabled = true
  end
  if Game.GetActor("emmyvalve_reg_gen_000") ~= nil then
    Game.GetActor("emmyvalve_reg_gen_000").EMMYVALVE:SetState(false, true)
  end
  if Game.GetActor("emmyvalve_reg_gen_001") ~= nil then
    Game.GetActor("emmyvalve_reg_gen_001").EMMYVALVE:SetState(false, true)
  end
end
function s080_shipyard.OnChozoWarriorXKilled(_ARG_0_, _ARG_1_, _ARG_2_)
  if _ARG_1_ == "SP_CWX_Phase2" then
    if Game.GetActor("PRP_EmmyShipyard") ~= nil then
      Game.GetActor("PRP_EmmyShipyard").bEnabled = false
    end
    Game.StopMusic(true)
    if Game.GetEntityFromSpawnPoint("SP_Emmy") ~= nil then
      Game.GetEntityFromSpawnPoint("SP_Emmy").bEnabled = true
    end
    Game.KillEmmy()
  end
end
function s080_shipyard.OnEmmyShipyardAbilityObtained()
  Game.AddSF(0.8, "s080_shipyard.OpenEmmyValves", "")
end
function s080_shipyard.OpenEmmyValves()
  if Game.GetActor("emmyvalve_reg_gen_000") ~= nil then
    Game.GetActor("emmyvalve_reg_gen_000").EMMYVALVE:CleanForceStateFlag(false)
  end
  if Game.GetActor("emmyvalve_reg_gen_001") ~= nil then
    Game.GetActor("emmyvalve_reg_gen_001").EMMYVALVE:CleanForceStateFlag(false)
  end
  if Game.GetActor("PRP_CUDeactivated") ~= nil then
    Game.GetActor("PRP_CUDeactivated").bEnabled = true
  end
  Game.SaveGame("checkpoint", "ChozoWarriorX_Dead", "SP_Checkpoint_Dead_ChozoWarriorX", false)
end
function s080_shipyard.OnGiveInventoryItemOnDead(_ARG_0_)
end
function s080_shipyard.ChangeSetup_PostEmmy()
  Game.PushSetup("PostEmmy", true, true)
end
function s080_shipyard.ObtainHyperBeam()
  if Game.GetPlayer() ~= nil then
    Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_WEAPON_HYPER_BEAM", 1, true)
  end
end
function s080_shipyard.OnEnterEscapeSequence()
  Game.PushSetup("Escape_Sequence", true, true)
  Game.AddSF(0.5, "s080_shipyard.InitEscapeSequence", "")
end
function s080_shipyard.InitEscapeSequence()
  print("search ev_evacuation")
  if Game.GetActor("ev_evacuation") ~= nil then
    print("Launch Event Evacuation")
    Game.GetActor("ev_evacuation").EVENTPROP:LaunchEvent()
    Game.SaveGame("checkpoint", "Escape_Sequence", "SP_Checkpoint_Escape", true)
  end
end
function s080_shipyard.EscapeSquence_Drop_01()
  if Game.GetActor("escape_explosion_path_01") ~= nil then
    Game.GetActor("escape_explosion_path_01"):StartTimeline("explosion_01", true)
  end
end
function s080_shipyard.EscapeSquence_Drop_02()
  if Game.GetActor("escape_explosion_path_02") ~= nil then
    Game.GetActor("escape_explosion_path_02"):StartTimeline("explosion_03", true)
  end
end
function s080_shipyard.EscapeSquence_Drop_03()
  if Game.GetActor("escape_explosion_path_03") ~= nil then
    Game.GetActor("escape_explosion_path_03"):StartTimeline("explosion_02", true)
  end
end
function s080_shipyard.EscapeSquence_Drop_04()
  if Game.GetActor("mapev_atriumdebris") ~= nil then
    Game.GetActor("mapev_atriumdebris"):StartTimeline("explosion_01", true)
  end
  if Game.GetActor("escape_glass_01") ~= nil then
    Game.GetActor("escape_glass_01").ANIMATION:SetAction("relax", true)
  end
  if Game.GetActor("escape_glass_02") ~= nil then
    Game.GetActor("escape_glass_02").ANIMATION:SetAction("relax", true)
  end
  if Game.GetActor("escpe_glass_03") ~= nil then
    Game.GetActor("escpe_glass_03").ANIMATION:SetAction("relax", true)
  end
end
function s080_shipyard.OnEnter_trigger_EndGame(_ARG_0_, _ARG_1_)
  _ARG_0_.bEnabled = false
  if Game.GetActor("ev_evacuation") ~= nil then
    Game.GetActor("ev_evacuation").EVENTPROP:StopCountDown()
  end
  GUI.HideEscapeCounter()
  if Game.GetActor("cutsceneplayer_112") ~= nil then
    Game.GetActor("cutsceneplayer_112").CUTSCENE:LaunchCutsceneImmediate()
  end
end
function s080_shipyard.OnEnter_EndGame()
  Game.GameCleared()
end
function s080_shipyard.OnEnter_AP_10()
  if Game.GetActor("accesspoint_000") ~= nil then
    if Blackboard.GetProp("GAME_PROGRESS", "ADAMDIALOGUE") == "DIAG_ADAM_CAVE_4" or Blackboard.GetProp("GAME_PROGRESS", "ADAMDIALOGUE") == "DIAG_ADAM_AQUA_3" then
      Game.GetActor("accesspoint_000").USABLE:ActiveDialogue("DIAG_ADAM_SHIP_1")
      Blackboard.SetProp("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_SHIP_1")
    elseif Blackboard.GetProp("GAME_PROGRESS", "ADAMDIALOGUE") == "DIAG_ADAM_SHIP_1" and _UPVALUE0_ then
      Game.GetActor("accesspoint_000").USABLE:ActiveDialogue("DIAG_ADAM_SHIP_2")
      Blackboard.SetProp("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_SHIP_2")
    end
  end
end
function s080_shipyard.SubAreaChangeRequest(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  Scenario.SubAreaChangeRequest(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
end
function s080_shipyard.OnSubAreaChange(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "collision_camera_011" and _ARG_2_ == "collision_camera_014" and _UPVALUE0_ == false then
    s080_shipyard.ClosePowerBombDoor()
  elseif _ARG_0_ == "collision_camera_009" and _ARG_2_ == "collision_camera_010" and _UPVALUE1_ == false then
    s080_shipyard.OnBegin_Cutscene_12()
  elseif _ARG_0_ == "collision_camera_006" and _ARG_2_ == "collision_camera_005" and _UPVALUE2_ == false then
    s080_shipyard.OnBegin_Cutscene_71()
  elseif _ARG_0_ == "collision_camera_000" and _ARG_2_ == "collision_camera_016" then
    Game.StopMusic(true)
  end
end
function s080_shipyard.ClosePowerBombDoor()
  if Game.GetActor("doorpowerclosed_001") ~= nil and Game.GetActor("doorpowerclosed_001").LIFE:CanBeClosedSafely() then
    Game.GetActor("doorpowerclosed_001").LIFE:CloseDoor(false, true, false)
    if Game.GetEntityFromSpawnPoint("SP_Emmy") ~= nil then
      Game.GetEntityFromSpawnPoint("SP_Emmy").bEnabled = true
    end
  else
    Game.AddSF(0, "s080_shipyard.ClosePowerBombDoor", "")
  end
end
function s080_shipyard.OnEmmyShipyardTargetDetected()
  Game.AddSF(1.3, "s080_shipyard.OnEmmyShipyardLaunchFade", "")
end
s080_shipyard.fEmmyShipyardFadeOutTime = 0.25
s080_shipyard.fEmmyShipyardFadeTime = 0.5
s080_shipyard.fEmmyShipyardInTime = 0.25
function s080_shipyard.OnEmmyShipyardLaunchFade()
  if Game.GetActor("PRP_CUDeactivated") ~= nil then
    Game.GetActor("PRP_CUDeactivated").bEnabled = false
  end
  if Game.GetActor("block_cut43") ~= nil then
    Game.GetActor("block_cut43").TIMELINECOMPONENT:StartAction("powerbombexplosion", -1, false)
  end
end
function s080_shipyard.RemoveSamusHyperSuit()
  Game.SetSendReports(false)
  Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_HYPER_SUIT", 0, true)
  Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_WEAPON_HYPER_BEAM", 0, true)
  Game.GetPlayer().INVENTORY:SetItemAmount("ITEM_WEAPON_WAVE_BEAM", 1, true)
  Game.SetSendReports(true)
end
function s080_shipyard.OnBegin_Cutscene_43()
  if Game.GetActor("cutsceneplayer_43") ~= nil then
    Game.GetActor("cutsceneplayer_43").CUTSCENE:TryLaunchCutscene()
  end
  if Game.GetActor("centralunitmagmacontroller_000") ~= nil then
    Game.GetActor("centralunitmagmacontroller_000").CENTRALUNIT:ForceEmmyDeadState()
  end
  Scenario.WriteToBlackboard(Scenario.LUAPropIDs.SHIP_EMMY_METROIDNIZATION, "b", true)
  _UPVALUE0_ = true
  if Game.GetActor("block_cut43") ~= nil then
    Game.GetActor("block_cut43").LIFE:ForceDead(false, true)
  end
  if Game.GetEntityFromSpawnPoint("SP_Emmy") ~= nil then
    Game.GetEntityFromSpawnPoint("SP_Emmy").ANIMATION:SetAction("dead_shipyard", true)
  end
end
function s080_shipyard.OnBegin_Cutscene_12()
  if Game.GetActor("cutsceneplayer_12") ~= nil then
    Game.GetActor("cutsceneplayer_12").CUTSCENE:TryLaunchCutscene()
  end
  Scenario.WriteToBlackboard(Scenario.LUAPropIDs.SHIP_STRONG_REACTION, "b", true)
  _UPVALUE0_ = true
end
function s080_shipyard.OnBegin_Cutscene_71()
  if Game.GetActor("cutsceneplayer_71") ~= nil then
    Game.GetActor("cutsceneplayer_71").CUTSCENE:TryLaunchCutscene()
  end
  Scenario.WriteToBlackboard(Scenario.LUAPropIDs.SHIP_CWXELITE_PRESENTATION, "b", true)
  _UPVALUE0_ = true
end
function s080_shipyard.AtriumBridgeEvent()
  Game.PlayCameraFXPreset("QUEEN_SHAKING_JUMP")
  Game.PlayPresetSound("events/chainreaction_bigexplosion")
end
function s080_shipyard.Activate_SG_PostWarrior()
  print("ACTIVATED POST CHOZO WARRIOR EVENT SETUP")
  Game.PushSetup("PostChozoWarriorEvent", true, true)
end
function s080_shipyard.OnEnter_ActivateArenaEnemies(_ARG_0_, _ARG_1_)
  if Game.GetActor("SG_Sharpaw_000") ~= nil then
    Game.GetActor("SG_Sharpaw_000").SPAWNGROUP:EnableSpawnGroup()
  end
  _ARG_0_.bEnabled = false
end
function s080_shipyard.StopCUAlarm()
  if Game.GetActor("centralunitmagmacontroller_000") ~= nil then
    Game.GetActor("centralunitmagmacontroller_000").CENTRALUNIT:AllowAlarm(false)
  end
end
function s080_shipyard.LightningEntitiesEnable()
  if Game.GetActor("ev_shi_ray02_004") ~= nil then
    Game.GetActor("ev_shi_ray02_004").bEnabled = true
  end
  if Game.GetActor("ev_shi_rayimpact01_000") ~= nil then
    Game.GetActor("ev_shi_rayimpact01_000").bEnabled = true
  end
end
function s080_shipyard.LightningEntitiesDisable()
  if Game.GetActor("ev_shi_ray02_004") ~= nil then
    Game.GetActor("ev_shi_ray02_004").bEnabled = false
  end
  if Game.GetActor("ev_shi_rayimpact01_000") ~= nil then
    Game.GetActor("ev_shi_rayimpact01_000").bEnabled = false
  end
end
