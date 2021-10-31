function s060_quarantine.main()
end
function s060_quarantine.SetupDebugGameBlackboard()
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPECIAL_ENERGY", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 499)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 499)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 54)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 54)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SONAR", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_METROIDNIZATION", "f", 0)
end
function s060_quarantine.InitFromBlackboard()
  Game.ReinitPlayerFromBlackboard()
  s060_quarantine.CheckGatesOpened()
end
function s060_quarantine.CheckGatesOpened()
  if Blackboard.GetProp("GAME_PROGRESS", "QUARENTINE_OPENED") == true then
    if Game.GetActor("ev_gatesealed_opened") ~= nil then
      Game.GetActor("ev_gatesealed_opened").bEnabled = true
    end
    if Game.GetActor("ev_gatesealed_closed") ~= nil then
      Game.GetActor("ev_gatesealed_closed").NAVMESHITEM:SetStage("removed")
      Game.GetActor("ev_gatesealed_closed").bEnabled = false
    end
  else
    if Game.GetActor("ev_gatesealed_opened") ~= nil then
      Game.GetActor("ev_gatesealed_opened").bEnabled = false
    end
    if Game.GetActor("ev_gatesealed_closed") ~= nil then
      Game.GetActor("ev_gatesealed_closed").bEnabled = true
      Game.GetActor("ev_gatesealed_closed").NAVMESHITEM:SetStage("initial")
    end
  end
end
s060_quarantine.tGetOnDeathOverrides = {ShowDeath = true, GoToMainMenu = false}
function s060_quarantine.GetOnDeathOverrides()
  return s060_quarantine.tGetOnDeathOverrides
end
function s060_quarantine.OnEntityGenerated(_ARG_0_, _ARG_1_)
  if _ARG_1_ ~= nil then
    print("OnEntityGenerated!!!!!!")
  end
end
function s060_quarantine.OnEnter_XParasite_Activated(_ARG_0_, _ARG_1_)
  Game.SetXparasite(true)
end
function s060_quarantine.OnEnter_TG_QuarentineOpen(_ARG_0_, _ARG_1_)
  if Game.GetActor("ev_gatesealed_opened") ~= nil then
    Game.GetActor("ev_gatesealed_opened").bEnabled = true
  end
  if Game.GetActor("ev_gatesealed_closed") ~= nil then
    Game.GetActor("ev_gatesealed_closed").NAVMESHITEM:SetStage("removed")
    Game.GetActor("ev_gatesealed_closed").bEnabled = false
  end
  if Game.GetActor("ev_gatesealed_second") ~= nil then
    Game.GetActor("ev_gatesealed_second").EVENTPROP:LaunchEvent()
  end
  if _ARG_0_ ~= nil then
    _ARG_0_.bEnabled = false
  end
end
function s060_quarantine.SubAreaChangeRequest(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  Scenario.SubAreaChangeRequest(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
end
function s060_quarantine.OnSubAreaChange(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "collision_camera_007" and _ARG_2_ == "collision_camera_004" then
    Game.SaveGameToSnapshot("ChozoWarriorX_Quarantine")
    s060_quarantine.LaunchCutscene_67()
  end
  if _ARG_0_ == "collision_camera_012" and _ARG_2_ == "collision_camera_011" then
    s060_quarantine.LaunchCutscene_113()
  end
  if _ARG_0_ == "collision_camera_003" and _ARG_2_ == "collision_camera_002" and Blackboard.GetProp("GAME_PROGRESS", "QUARENTINE_OPENED") == true then
    s060_quarantine.LaunchCutscene_4()
  end
  if _ARG_0_ == "collision_camera_003" and _ARG_2_ == "collision_camera_005" then
    s060_quarantine.LaunchCutscene_13()
  end
  if _ARG_0_ == "collision_camera_004" and Game.GetActor("SG_ChozoWarriorX") ~= nil then
    print(Game.GetActor("SG_ChozoWarriorX").SPAWNGROUP.iNumDeaths)
    if Game.GetActor("SG_ChozoWarriorX").SPAWNGROUP.iNumDeaths > 1 then
      Game.PopSetup("SP_ChozoWarriorX_Phase2_chozowarriorx_Boss_Defeated", true, true)
      Game.PushSetup("PostChozoWarriorX", true, true)
      if Game.GetActor("TG_PostChozoWarriorEnemies") ~= nil then
        Game.GetActor("TG_PostChozoWarriorEnemies").bEnabled = true
      end
    end
  end
end
function s060_quarantine.LaunchCutscene_67()
  if Game.GetActor("cutsceneplayer_67") ~= nil then
    Game.GetActor("cutsceneplayer_67").CUTSCENE:TryLaunchCutscene()
  end
end
function s060_quarantine.LaunchCutscene_4()
  if Game.GetActor("cutsceneplayer_4") ~= nil then
    Game.GetActor("cutsceneplayer_4").CUTSCENE:TryLaunchCutscene()
  end
end
function s060_quarantine.LaunchCutscene_13()
  if Game.GetActor("cutsceneplayer_13") ~= nil then
    Game.GetActor("cutsceneplayer_13").CUTSCENE:TryLaunchCutscene()
  end
end
function s060_quarantine.OnBeforeCutscene13Started()
  if Game.GetActor("SP_ChozoZombieX_000") ~= nil then
    Game.SpawnEntity("SP_ChozoZombieX_000")
    Game.GetActor("SP_ChozoZombieX_000").SPAWNPOINT:Activate()
  end
end
function s060_quarantine.LaunchCutscene_113()
  if Game.GetActor("cutsceneplayer_113") ~= nil then
    Game.GetActor("cutsceneplayer_113").CUTSCENE:TryLaunchCutscene()
  end
end
function s060_quarantine.OnCutscene113Ended()
  if Game.GetActor("ev_gatesealed_second") ~= nil then
    Game.GetActor("ev_gatesealed_second").EVENTPROP:ForceOpen()
  else
    print("ev_gatesealed_second actor not found")
  end
end
function s060_quarantine.OnBeforeQuarantineDoorsOpenCutsceneStarts()
  s060_quarantine.OnCutscene113Ended()
end
function s060_quarantine.OnEnter_PostCWEnemies(_ARG_0_, _ARG_1_)
  if Game.GetActor("SG_PostChozoWarrior") ~= nil then
    Game.GetActor("SG_PostChozoWarrior").SPAWNGROUP:EnableSpawnGroup()
  end
  _ARG_0_.bEnabled = false
end
function s060_quarantine.OnEnter_EnablePostPlasmaEnemies(_ARG_0_, _ARG_1_)
  if Game.GetActor("TG_Disable_SG_X_Cell_000") ~= nil then
    Game.GetActor("TG_Disable_SG_X_Cell_000").bEnabled = true
  end
  if Game.GetActor("spawngroup_003") ~= nil then
    Game.GetActor("spawngroup_003").SPAWNGROUP:EnableSpawnGroup()
  end
  if Game.GetActor("SG_ChozoZombieX_000") ~= nil then
    Game.GetActor("SG_ChozoZombieX_000").SPAWNGROUP:EnableSpawnGroup()
  end
  if Game.GetActor("SG_GooShockerX_000") ~= nil then
    Game.GetActor("SG_GooShockerX_000").SPAWNGROUP:EnableSpawnGroup()
  end
  if Game.GetActor("SG_X_Cell_000") ~= nil then
    Game.GetActor("SG_X_Cell_000").SPAWNGROUP:EnableSpawnGroup()
  end
  _ARG_0_.bEnabled = false
end
function s060_quarantine.Disable_SG_X_Cell(_ARG_0_, _ARG_1_)
  if Game.GetActor("SG_X_Cell_000") ~= nil then
    Game.GetActor("SG_X_Cell_000").SPAWNGROUP:DisableSpawnGroup()
  end
  _ARG_0_.bEnabled = false
end
function s060_quarantine.ActivationTutoParasite()
  Game.AddSF(2.5, "s060_quarantine.ActivationTutoParasite_delayed", "")
end
function s060_quarantine.ActivationTutoParasite_delayed()
  if Game.GetActor("TutoParasiteEnter") ~= nil and Game.GetActor("TutoParasiteExit") ~= nil then
    Game.GetActor("TutoParasiteEnter").bEnabled = true
    Game.GetActor("TutoParasiteExit").bEnabled = true
  end
end
function s060_quarantine.OnEnter_ChangeCamera_003_B()
  Game.SetCollisionCameraLocked("collision_camera_003_B", true)
  print("OnEnter_ChangeCamera_003_B")
end
function s060_quarantine.OnExit_ChangeCamera_003_B()
  Game.SetCollisionCameraLocked("collision_camera_003_B", false)
  print("OnExit_ChangeCamera_003_B")
end
function s060_quarantine.Disable_Camera_003_B()
  if Game.GetActor("TG_CameraChange_003_B") ~= nil then
    Game.GetActor("TG_CameraChange_003_B").bEnabled = false
  end
end
function s060_quarantine.OnEnter_ChangeCamera_MBL()
  Game.SetCollisionCameraLocked("collision_camera_MBL", true)
end
function s060_quarantine.OnExit_ChangeCamera_MBL()
  Game.SetCollisionCameraLocked("collision_camera_MBL", false)
end
function s060_quarantine.OnEnter_ChangeSetup_MBL()
  Game.PushSetup("Camera_MBL", true, true)
end
function s060_quarantine.OnExit_ChangeSetup_MBL()
  Game.PopSetup("Camera_MBL", true, true)
end
function s060_quarantine.OnEnter_ChangeCamera_004_B()
  Game.SetCollisionCameraLocked("collision_camera_004_B", true)
end
function s060_quarantine.OnExit_ChangeCamera_004_B()
  Game.SetCollisionCameraLocked("collision_camera_004_B", false)
end
