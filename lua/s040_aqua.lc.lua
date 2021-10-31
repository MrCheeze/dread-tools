function s040_aqua.main()
end
function s040_aqua.SetupDebugGameBlackboard()
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPECIAL_ENERGY", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 299)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 299)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 34)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 34)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_SONAR", "f", 0)
  Blackboard.SetProp("PLAYER_INVENTORY", "ITEM_METROIDNIZATION", "f", 0)
end
function s040_aqua.InitFromBlackboard()
  Game.ReinitPlayerFromBlackboard()
  s040_aqua.CheckDoorProfessor()
  s040_aqua.CheckHydrogiga()
  _UPVALUE0_ = Scenario.ReadFromBlackboard(Scenario.LUAPropIDs.AQUA_POSTXRELEASE_APPLIED, false)
  _UPVALUE1_ = Blackboard.GetProp("GAME_PROGRESS", "QUARENTINE_OPENED")
  if _UPVALUE1_ == true then
    s040_aqua.Activate_Setup_PostXRelease()
  end
  s040_aqua.DisableAllWaterPools()
end
function s040_aqua.Activate_Setup_PostXRelease()
  if _UPVALUE0_ == false then
    Game.PushSetup("PostXRelease", true, true)
    Scenario.WriteToBlackboard(Scenario.LUAPropIDs.AQUA_POSTXRELEASE_APPLIED, "b", true)
    _UPVALUE0_ = true
  end
end
s040_aqua.tGetOnDeathOverrides = {ShowDeath = true, GoToMainMenu = false}
function s040_aqua.GetOnDeathOverrides()
  return s040_aqua.tGetOnDeathOverrides
end
function s040_aqua.OnEntityGenerated(_ARG_0_, _ARG_1_)
  if _ARG_1_ ~= nil then
    print("OnEntityGenerated!!!!!!")
  end
end
s040_aqua.tFXDoorProfToEnable = {
  "instancefx_doorprof_stream_000",
  "instancefx_doorprof_stream_001",
  "instancefx_doorprof_stream_002",
  "instancefx_doorprof_stream_003",
  "instancefx_doorprof_stream_004",
  "instancefx_doorprof_stream_005",
  "instancefx_doorprof_drops_000",
  "instancefx_doorprof_drops_001",
  "instancefx_doorprof_drops_002",
  "Pos_AQ_Chorrillo_ESP"
}
function s040_aqua.CheckDoorProfessor()
  if Blackboard.GetProp("GAME_PROGRESS", "PROFESSOR_MET") == true then
    Game.GetActor("ev_doorprof").EVENTPROP:ChangeNavMeshStage(true)
    Game.GetActor("ev_doorprof_open").EVENTPROP:ChangeNavMeshStage(false)
    Game.GetActor("ev_doorprof").bEnabled = false
    Game.GetActor("ev_doorprof_open").bEnabled = true
  else
    Game.GetActor("ev_doorprof").EVENTPROP:ChangeNavMeshStage(false)
    Game.GetActor("ev_doorprof_open").EVENTPROP:ChangeNavMeshStage(true)
  end
  for _FORV_6_, _FORV_7_ in ipairs(s040_aqua.tFXDoorProfToEnable) do
    if Game.GetActor(_FORV_7_) ~= nil and Blackboard.GetProp("GAME_PROGRESS", "PROFESSOR_MET") == true then
      Game.GetActor(_FORV_7_).bEnabled = true
    end
  end
end
function s040_aqua.OnEnter_ChangeCamera_010_B()
  Game.SetCollisionCameraLocked("collision_camera_010_B", true)
end
function s040_aqua.OnExit_ChangeCamera_010_B()
  Game.SetCollisionCameraLocked("collision_camera_010_B", false)
end
function s040_aqua.OnEnter_ChangeCamera_015_B()
  Game.SetCollisionCameraLocked("collision_camera_015_B", true)
end
function s040_aqua.OnExit_ChangeCamera_015_B()
  Game.SetCollisionCameraLocked("collision_camera_015_B", false)
end
function s040_aqua.OnEnter_ChangeCamera_021_B()
  Game.SetCollisionCameraLocked("collision_camera_021_B", true)
end
function s040_aqua.OnExit_ChangeCamera_021_B()
  Game.SetCollisionCameraLocked("collision_camera_021_B", false)
end
function s040_aqua.OnEnter_ChangeCamera_002_B()
  Game.SetCollisionCameraLocked("collision_camera_002_B", true)
end
function s040_aqua.OnExit_ChangeCamera_002_B()
  Game.SetCollisionCameraLocked("collision_camera_002_B", false)
end
function s040_aqua.OnEnter_ChangeCamera_023_B()
  Game.SetCollisionCameraLocked("collision_camera_023", true)
end
function s040_aqua.OnExit_ChangeCamera_023_B()
  Game.SetCollisionCameraLocked("collision_camera_023", false)
end
function s040_aqua.OnEnter_ChangeCamera_001_B()
  Game.PushSetup("ChangeCamera_001_B", true, true)
end
function s040_aqua.OnExit_ChangeCamera_001_B()
  Game.PopSetup("ChangeCamera_001_B", true, true)
end
function s040_aqua.OnEnter_collision_camera_023_GravitySuit()
  Game.PushSetup("collision_camera_023_GravitySuit", true, true)
end
function s040_aqua.OnExit_collision_camera_023_GravitySuit()
  Game.PopSetup("collision_camera_023_GravitySuit", true, true)
end
function s040_aqua.OnEnter_EmptyWaterPools()
  if Game.GetActor("waterzone_006") ~= nil then
    Game.GetActor("waterzone_006").bEnabled = false
  end
  if Game.GetActor("waterzone_004") ~= nil then
    Game.GetActor("waterzone_004").bEnabled = false
  end
end
function s040_aqua.OnEnter_AP_05()
  if Game.GetActor("accesspoint_000") ~= nil then
    if Blackboard.GetProp("GAME_PROGRESS", "ADAMDIALOGUE") == "DIAG_ADAM_LAB_1" then
      Game.GetActor("accesspoint_000").USABLE:ActiveDialogue("DIAG_ADAM_AQUA_1")
      Blackboard.SetProp("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_AQUA_1")
    elseif Blackboard.GetProp("GAME_PROGRESS", "ADAMDIALOGUE") == "DIAG_ADAM_CAVE_4" and Blackboard.GetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK") ~= nil and Blackboard.GetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK") > 0 then
      Game.GetActor("accesspoint_000").USABLE:ActiveDialogue("DIAG_ADAM_AQUA_3")
      Blackboard.SetProp("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_AQUA_3")
    end
  end
end
function s040_aqua.OnEnter_AP_09()
  if Game.GetActor("accesspoint_001") ~= nil then
    if Blackboard.GetProp("GAME_PROGRESS", "ADAMDIALOGUE") == "DIAG_ADAM_SANC_1" or Blackboard.GetProp("GAME_PROGRESS", "ADAMDIALOGUE") == "DIAG_ADAM_FOREST_2" then
      Game.GetActor("accesspoint_001").USABLE:ActiveDialogue("DIAG_ADAM_AQUA_2")
      Blackboard.SetProp("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_AQUA_2")
    elseif Blackboard.GetProp("GAME_PROGRESS", "ADAMDIALOGUE") == "DIAG_ADAM_CAVE_4" and Blackboard.GetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK") ~= nil and Blackboard.GetProp("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK") > 0 then
      Game.GetActor("accesspoint_001").USABLE:ActiveDialogue("DIAG_ADAM_AQUA_3")
      Blackboard.SetProp("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_AQUA_3")
    end
  end
end
function s040_aqua.SubAreaChangeRequest(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  Scenario.SubAreaChangeRequest(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
end
function s040_aqua.OnSubAreaChange(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "collision_camera_010" and _ARG_2_ == "collision_camera_014" then
    s040_aqua.LaunchCutscene_32()
  elseif _ARG_0_ ~= "collision_camera_029" or _ARG_2_ == "collision_camera_028" then
  end
end
function s040_aqua.LaunchCutscene_32()
  if Game.GetActor("cutsceneplayer_32") ~= nil then
    Game.GetActor("cutsceneplayer_32").CUTSCENE:TryLaunchCutscene()
  end
end
function s040_aqua.LaunchCutscene_63()
  if Game.GetActor("cutsceneplayer_63") ~= nil then
    Game.GetActor("cutsceneplayer_63").CUTSCENE:TryLaunchCutscene()
  end
end
function s040_aqua.GhostDashObtained()
  if Game.GetActor("powerup_ghostaura") ~= nil then
    Game.GetActor("powerup_ghostaura").PICKABLE:OnPickUpAfterCutScene()
  end
end
function s040_aqua.FlashShiftRoom_CloseDoor()
  if Game.GetActor("doorpowerclosed_000") ~= nil then
    Game.GetActor("doorpowerclosed_000").LIFE:CloseDoor(false, true, true)
  end
end
s040_aqua.tTentaclesAlive = {
  "ev_tentacle_001",
  "ev_tentacle_002",
  "ev_tentacle_003",
  "ev_tentacle_004"
}
s040_aqua.tTentaclesDead = {
  "ev_tentacledead_001",
  "ev_tentacledead_002",
  "ev_tentacledead_003",
  "ev_tentacledead_004"
}
function s040_aqua.Event_Hydrogiga_IsDead()
  Game.GetActor("waterzone_026").bEnabled = true
  Game.GetActor("waterzone_025").bEnabled = false
  Game.GetActor("hydrogigacorpse").bEnabled = true
end
function s040_aqua.CheckHydrogiga()
  if Scenario.ReadFromBlackboard(Scenario.LUAPropIDs.HYDROGIGA_DEAD, false) then
    s040_aqua.Event_Hydrogiga_IsDead()
    s040_aqua.Event_Tentacles_Alive(false)
  else
    s040_aqua.Event_Tentacles_Alive(true)
  end
end
function s040_aqua.OnHydrogigaDead(_ARG_0_, _ARG_1_)
  Scenario.WriteToBlackboard(Scenario.LUAPropIDs.HYDROGIGA_DEAD, "b", true)
  s040_aqua.CheckHydrogiga()
end
function s040_aqua.Event_Tentacles_Alive(_ARG_0_)
  for _FORV_4_, _FORV_5_ in ipairs(s040_aqua.tTentaclesAlive) do
    if Game.GetActor(_FORV_5_) ~= nil then
      if _ARG_0_ then
        print("ACTIVATING TENTACLE " .. _FORV_5_ .. " -- ")
        Game.GetActor(_FORV_5_).bEnabled = true
        Game.GetActor((string.gsub(Game.GetActor(_FORV_5_).sName, "ev_tentacle_", "ev_tentacledead_"))).bEnabled = false
      else
        print("DEACTIVATING TENTACLE " .. _FORV_5_ .. " -- ")
        Game.GetActor(_FORV_5_).bEnabled = false
        Game.GetActor((string.gsub(Game.GetActor(_FORV_5_).sName, "ev_tentacle_", "ev_tentacledead_"))).bEnabled = true
      end
    end
  end
end
function s040_aqua.StartIgnoreHangHydrogigaArena()
  if Game.GetPlayerInfo() ~= nil then
    Game.GetPlayerInfo():IgnoreHang(true, "HydrogigaArena")
  end
end
function s040_aqua.StopIgnoreHangHydrogigaArena()
  if Game.GetPlayerInfo() ~= nil then
    Game.GetPlayerInfo():IgnoreHang(false, "HydrogigaArena")
  end
end
function s040_aqua.ElevatorEndUse_elevator_cave_000()
  Game.SetCooldownFlag(true)
end
function s040_aqua.OnEnter_Enable_RCW_A(_ARG_0_, _ARG_1_)
  if Game.GetActor("SG_2RCW_000") ~= nil then
    Game.GetActor("SG_2RCW_000").bEnabled = true
    Game.GetActor("SG_2RCW_000").SPAWNGROUP:EnableSpawnGroup()
  end
  _ARG_0_.bEnabled = false
end
function s040_aqua.CRS_DetectingDirection()
  s040_aqua.CRS_EvaluatingDirection((Game.GetActor("SP_RCW_001_chozorobotsoldier")))
end
function s040_aqua.CRS_DetectingDirection_B()
  if Game.GetActor("SP_RCW_000A_chozorobotsoldier") ~= nil then
    s040_aqua.CRS_EvaluatingDirection((Game.GetActor("SP_RCW_000A_chozorobotsoldier")))
  end
end
function s040_aqua.CRS_EvaluatingDirection(_ARG_0_)
  print("----- DETECTING DIRECTION -----")
  if _ARG_0_ ~= nil then
    if Game.GetPlayer() ~= nil then
    end
    if 0 < Game.GetPlayer().vPos - _ARG_0_.vPos.x then
      print("----- TURN RIGHT -----")
      _ARG_0_.ANIMATION:SetAction("spawn_front_turn_right", true)
    else
      print("----- TURN LEFT -----")
      _ARG_0_.ANIMATION:SetAction("spawn_front_turn_left", true)
    end
  end
end
function s040_aqua.OnEnter_PostCRS_Enemies(_ARG_0_, _ARG_1_)
  if Game.GetActor("SG_2RCW_000") ~= nil then
    print(Game.GetActor("SG_2RCW_000").SPAWNGROUP.iNumDeaths)
    if Game.GetActor("SG_2RCW_000").SPAWNGROUP.iNumDeaths > 1 then
      if Game.GetActor("SG_Spittail_PostBoss") ~= nil then
        Game.GetActor("SG_Spittail_PostBoss").bEnabled = true
        Game.GetActor("SG_Spittail_PostBoss").SPAWNGROUP:EnableSpawnGroup()
      end
      _ARG_0_.bEnabled = false
    end
  end
end
s040_aqua.bottomInstanceActors = {
  "instanceactor",
  "instanceactor_153",
  "instanceactor_005",
  "instanceactor_218",
  "instanceactor_203",
  "instanceactor_204",
  "instanceactor_048",
  "spot_010_1_001",
  "spot_010_1_000"
}
s040_aqua.preBottomInstanceActors = {
  "instanceactor_151",
  "instanceactor_150",
  "instanceactor_317",
  "instanceactor_318",
  "instanceactor_490",
  "instanceactor_331",
  "instanceactor_180",
  "spot_010_2_t_001",
  "spot_010_2_t_000",
  "spot_010_2_t_004",
  "spot_010_2_t_006",
  "spot_010_2_t_007",
  "spot_010_2_t_008",
  "omni_010_1_010",
  "spot_010_2_t_002",
  "spot_010_2_t_005",
  "mapev_activator_fishes04_000",
  "mapev_fishes04_000",
  "mapev_activator_fishes01_003",
  "mapev_fishes01_003",
  "mapev_activator_fishes04_001",
  "mapev_fishes04_001",
  "mapev_activator_shrimps_007",
  "mapev_shrimps_007"
}
s040_aqua.trenchInstanceActors = {
  "instanceactor_177",
  "instanceactor_166",
  "instanceactor_168",
  "instanceactor_333",
  "omni_010_2_t_008",
  "omni_010_2_t_025",
  "spot_010_2_t_010",
  "spot_010_2_t_011",
  "mapev_activator_fishes02",
  "mapev_fishes02",
  "mapev_activator_fishes03",
  "mapev_fishes03",
  "mapev_activator_fishes04",
  "mapev_fishes04",
  "mapev_activator_fishes01_002",
  "mapev_fishes01_002",
  "mapev_activator_shrimps",
  "mapev_shrimps",
  "mapev_activator_shrimps_000",
  "mapev_shrimps_000",
  "mapev_activator_shrimps_001",
  "mapev_shrimps_001"
}
s040_aqua.preTrenchInstanceActors = {
  "instanceactor_164",
  "instanceactor_163",
  "instanceactor_316",
  "instanceactor_439",
  "instanceactor_219",
  "instanceactor_345",
  "instanceactor_438",
  "instanceactor_348",
  "instanceactor_276",
  "instanceactor_043",
  "instanceactor_351",
  "omni_010_2_t_026",
  "spot_010_2_t_012",
  "omni_010_1_001",
  "omni_010_1_006",
  "omni_010_2_t_005",
  "spot_010_2_t_003",
  "spot_010_15_000",
  "omni_010_2_t_002",
  "mapev_activator_shrimps_005",
  "mapev_shrimps_005",
  "mapev_activator_shrimps_006",
  "mapev_shrimps_006"
}
s040_aqua.zone2InstanceActors = {
  "instanceactor_034",
  "instanceactor_035",
  "instanceactor_038",
  "instanceactor_039",
  "instanceactor_147",
  "instanceactor_274",
  "instanceactor_275",
  "instanceactor_311",
  "instanceactor_314",
  "instanceactor_409",
  "instanceactor_410",
  "instanceactor_411",
  "instanceactor_414",
  "instanceactor_416",
  "instanceactor_116",
  "spot_010_1_006",
  "spot_010_1",
  "omni_010_1_000",
  "omni_010_1_005",
  "spot_010_1_004",
  "mapev_activator_fishes01_001",
  "mapev_activator_coral01_001",
  "mapev_coral01_001",
  "mapev_activator_lapa_01_001",
  "mapev_activator_lapa_02_001",
  "mapev_activator_lapa_02_002",
  "mapev_lapa_02_002"
}
s040_aqua.zone1InstanceActors = {
  "instanceactor_112",
  "instanceactor_113",
  "instanceactor_114",
  "instanceactor_115",
  "instanceactor_147",
  "instanceactor_148",
  "instanceactor_149",
  "instanceactor_215",
  "instanceactor_270",
  "instanceactor_273",
  "instanceactor_370",
  "instanceactor_372",
  "instanceactor_271",
  "instanceactor_272",
  "instanceactor_389",
  "instanceactor_054",
  "omni_016",
  "spot_010_5_003",
  "spot_010_5_002",
  "spot_010_5_004",
  "spot_010_5_005",
  "omni_012",
  "omni_010_2_t_018",
  "omni_010_1_003",
  "omni_010_1_007",
  "omni_010_2_t_006",
  "mapev_activator_fishes01_000",
  "mapev_fishes01_000",
  "mapev_activator_lapa_02_000",
  "mapev_lapa_02_000"
}
s040_aqua.topInstanceActors = {
  "instanceactor_053",
  "instanceactor_055",
  "instanceactor_056",
  "instanceactor_111",
  "instanceactor_157",
  "instanceactor_158",
  "instanceactor_159",
  "instanceactor_160",
  "instanceactor_161",
  "instanceactor_363",
  "instanceactor_364",
  "instanceactor_365",
  "instanceactor_428",
  "instanceactor_429",
  "instanceactor_503",
  "spot_010_5_001",
  "omni_002",
  "omni_003",
  "omni_005",
  "spot_010_1_007",
  "omni_010_4_001",
  "spot_010_1_002",
  "mapev_activator_fishes01",
  "mapev_fishes01",
  "mapev_activator_coral01_000",
  "mapev_coral01_000",
  "mapev_activator_coral01_002",
  "mapev_coral01_002",
  "mapev_activator_lapa_01_000",
  "mapev_lapa_01_000"
}
s040_aqua.OmnithonInstanceActors = {
  "mapev_activator_omnithon",
  "mapev_omnithon01",
  "mapev_omnithon02",
  "mapev_omnithon03",
  "mapev_omnithon04",
  "mapev_omnithon05",
  "mapev_omnithon06"
}
s040_aqua.SpaceJumpMarkerInstanceActors = {
  "spacejump_marker_000",
  "spacejump_marker_001",
  "spacejump_marker_002",
  "spacejump_marker_003",
  "spacejump_marker_004",
  "spacejump_marker_005"
}
function s040_aqua.OnEnter_TriggerOpt_001()
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.zone1InstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = true
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.topInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = true
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.bottomInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = false
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.preBottomInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = false
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.trenchInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = false
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.preTrenchInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = false
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.zone2InstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = false
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.OmnithonInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = false
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.SpaceJumpMarkerInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = false
    end
  end
end
function s040_aqua.OnExit_TriggerOpt_001()
end
function s040_aqua.OnEnter_TriggerOpt_002()
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.zone2InstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = true
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.zone1InstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = true
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.topInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = true
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.bottomInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = false
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.preBottomInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = false
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.trenchInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = false
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.preTrenchInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = false
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.OmnithonInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = false
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.SpaceJumpMarkerInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = false
    end
  end
end
function s040_aqua.OnExit_TriggerOpt_002()
end
function s040_aqua.OnEnter_TriggerOpt_003()
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.preTrenchInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = true
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.zone2InstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = true
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.zone1InstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = true
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.topInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = false
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.bottomInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = false
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.preBottomInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = false
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.trenchInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = false
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.OmnithonInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = false
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.SpaceJumpMarkerInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = false
    end
  end
end
function s040_aqua.OnExit_TriggerOpt_003()
end
function s040_aqua.OnEnter_TriggerOpt_004()
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.trenchInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = true
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.preTrenchInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = true
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.zone2InstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = true
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.zone1InstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = false
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.topInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = false
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.bottomInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = false
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.preBottomInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = false
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.OmnithonInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = false
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.SpaceJumpMarkerInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = false
    end
  end
end
function s040_aqua.OnExit_TriggerOpt_004()
end
function s040_aqua.OnEnter_TriggerOpt_005()
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.preBottomInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = true
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.trenchInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = true
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.preTrenchInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = true
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.OmnithonInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = true
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.SpaceJumpMarkerInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = true
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.zone2InstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = false
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.zone1InstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = false
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.topInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = false
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.bottomInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = false
    end
  end
end
function s040_aqua.OnExit_TriggerOpt_005()
end
function s040_aqua.OnEnter_TriggerOpt_006()
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.bottomInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = true
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.preBottomInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = true
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.trenchInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = true
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.OmnithonInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = true
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.preTrenchInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = false
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.zone2InstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = false
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.zone1InstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = false
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.topInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = false
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.SpaceJumpMarkerInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = false
    end
  end
end
function s040_aqua.OnExit_TriggerOpt_006()
end
function s040_aqua.OnEnter_TriggerOpt_007()
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.bottomInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = true
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.preBottomInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = true
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.OmnithonInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = true
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.trenchInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = false
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.preTrenchInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = false
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.zone2InstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = false
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.zone1InstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = false
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.topInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = false
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(s040_aqua.SpaceJumpMarkerInstanceActors) do
    if Game.GetActor(_FORV_4_) ~= nil then
      Game.GetActor(_FORV_4_).bEnabled = false
    end
  end
end
function s040_aqua.OnExit_TriggerOpt_007()
end
function s040_aqua.DisableAllWaterPools()
  Game.GetActor("waterzone_010").ACTIVATABLE:DisableLogic(true, "Prueba")
  Game.GetActor("waterzone_011").ACTIVATABLE:DisableLogic(true, "Prueba")
  Game.GetActor("waterzone_012").ACTIVATABLE:DisableLogic(true, "Prueba")
  Game.GetActor("waterzone_013").ACTIVATABLE:DisableLogic(true, "Prueba")
  Game.GetActor("waterzone_014").ACTIVATABLE:DisableLogic(true, "Prueba")
  Game.GetActor("waterzone_015").ACTIVATABLE:DisableLogic(true, "Prueba")
  Game.GetActor("waterzone_016").ACTIVATABLE:DisableLogic(true, "Prueba")
  Game.GetActor("waterzone_018").ACTIVATABLE:DisableLogic(true, "Prueba")
  Game.GetActor("waterzone_027").ACTIVATABLE:DisableLogic(true, "Prueba")
end
function s040_aqua.OnEnter_waterzone_010()
  Game.GetActor("waterzone_010").ACTIVATABLE:DisableLogic(false, "Prueba")
end
function s040_aqua.OnEnter_waterzone_011()
  Game.GetActor("waterzone_011").ACTIVATABLE:DisableLogic(false, "Prueba")
end
function s040_aqua.OnEnter_waterzone_012()
  Game.GetActor("waterzone_012").ACTIVATABLE:DisableLogic(false, "Prueba")
end
function s040_aqua.OnEnter_waterzone_013()
  Game.GetActor("waterzone_013").ACTIVATABLE:DisableLogic(false, "Prueba")
end
function s040_aqua.OnEnter_waterzone_014()
  Game.GetActor("waterzone_014").ACTIVATABLE:DisableLogic(false, "Prueba")
end
function s040_aqua.OnEnter_waterzone_015()
  Game.GetActor("waterzone_015").ACTIVATABLE:DisableLogic(false, "Prueba")
end
function s040_aqua.OnEnter_waterzone_016()
  Game.GetActor("waterzone_016").ACTIVATABLE:DisableLogic(false, "Prueba")
end
function s040_aqua.OnEnter_waterzone_018()
  Game.GetActor("waterzone_018").ACTIVATABLE:DisableLogic(false, "Prueba")
end
function s040_aqua.OnEnter_waterzone_027()
  Game.GetActor("waterzone_027").ACTIVATABLE:DisableLogic(false, "Prueba")
end
function s040_aqua.OnExit_waterzone_010()
  Game.GetActor("waterzone_010").ACTIVATABLE:DisableLogic(true, "Prueba")
end
function s040_aqua.OnExit_waterzone_011()
  Game.GetActor("waterzone_011").ACTIVATABLE:DisableLogic(true, "Prueba")
end
function s040_aqua.OnExit_waterzone_012()
  Game.GetActor("waterzone_012").ACTIVATABLE:DisableLogic(true, "Prueba")
end
function s040_aqua.OnExit_waterzone_013()
  Game.GetActor("waterzone_013").ACTIVATABLE:DisableLogic(true, "Prueba")
end
function s040_aqua.OnExit_waterzone_014()
  Game.GetActor("waterzone_014").ACTIVATABLE:DisableLogic(true, "Prueba")
end
function s040_aqua.OnExit_waterzone_015()
  Game.GetActor("waterzone_015").ACTIVATABLE:DisableLogic(true, "Prueba")
end
function s040_aqua.OnExit_waterzone_016()
  Game.GetActor("waterzone_016").ACTIVATABLE:DisableLogic(true, "Prueba")
end
function s040_aqua.OnExit_waterzone_018()
  Game.GetActor("waterzone_018").ACTIVATABLE:DisableLogic(true, "Prueba")
end
function s040_aqua.OnExit_waterzone_027()
  Game.GetActor("waterzone_027").ACTIVATABLE:DisableLogic(true, "Prueba")
end
