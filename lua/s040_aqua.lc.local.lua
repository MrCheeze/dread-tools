-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: lua/s040_aqua.lc.local 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC2: Confused about usage of register: R0 in 'UnsetPending'

s040_aqua.main = function()
  -- function num : 0_0
end

-- DECOMPILER ERROR at PC5: Confused about usage of register: R0 in 'UnsetPending'

s040_aqua.SetupDebugGameBlackboard = function()
  -- function num : 0_1
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPECIAL_ENERGY", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 299)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 299)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 34)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 34)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SONAR", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_METROIDNIZATION", "f", 0)
end

local l_0_0 = (Blackboard.GetProp)("GAME_PROGRESS", "QUARENTINE_OPENED")
local l_0_1 = false
local l_0_2 = false
-- DECOMPILER ERROR at PC17: Confused about usage of register: R3 in 'UnsetPending'

s040_aqua.InitFromBlackboard = function()
  -- function num : 0_2 , upvalues : l_0_2, l_0_0
  (Game.ReinitPlayerFromBlackboard)()
  ;
  (s040_aqua.CheckDoorProfessor)()
  ;
  (s040_aqua.CheckHydrogiga)()
  l_0_2 = (Scenario.ReadFromBlackboard)((Scenario.LUAPropIDs).AQUA_POSTXRELEASE_APPLIED, false)
  l_0_0 = (Blackboard.GetProp)("GAME_PROGRESS", "QUARENTINE_OPENED")
  if l_0_0 == true then
    (s040_aqua.Activate_Setup_PostXRelease)()
  end
  ;
  (s040_aqua.DisableAllWaterPools)()
end

-- DECOMPILER ERROR at PC21: Confused about usage of register: R3 in 'UnsetPending'

s040_aqua.Activate_Setup_PostXRelease = function()
  -- function num : 0_3 , upvalues : l_0_2
  if l_0_2 == false then
    (Game.PushSetup)("PostXRelease", true, true)
    ;
    (Scenario.WriteToBlackboard)((Scenario.LUAPropIDs).AQUA_POSTXRELEASE_APPLIED, "b", true)
    l_0_2 = true
  end
end

local l_0_3 = s040_aqua
local l_0_4 = {}
l_0_4.ShowDeath = true
l_0_4.GoToMainMenu = false
l_0_3.tGetOnDeathOverrides = l_0_4
l_0_3 = s040_aqua
l_0_4 = function()
  -- function num : 0_4
  return s040_aqua.tGetOnDeathOverrides
end

l_0_3.GetOnDeathOverrides = l_0_4
l_0_3 = s040_aqua
l_0_4 = function(l_6_0, l_6_1)
  -- function num : 0_5
  if l_6_1 ~= nil then
    print("OnEntityGenerated!!!!!!")
  end
end

l_0_3.OnEntityGenerated = l_0_4
l_0_3 = s040_aqua
l_0_3.tFXDoorProfToEnable, l_0_4 = l_0_4, {"instancefx_doorprof_stream_000", "instancefx_doorprof_stream_001", "instancefx_doorprof_stream_002", "instancefx_doorprof_stream_003", "instancefx_doorprof_stream_004", "instancefx_doorprof_stream_005", "instancefx_doorprof_drops_000", "instancefx_doorprof_drops_001", "instancefx_doorprof_drops_002", "Pos_AQ_Chorrillo_ESP"}
l_0_3 = s040_aqua
l_0_4 = function()
  -- function num : 0_6
  local l_7_0 = (Blackboard.GetProp)("GAME_PROGRESS", "PROFESSOR_MET")
  local l_7_1 = (Game.GetActor)("ev_doorprof")
  local l_7_2 = (Game.GetActor)("ev_doorprof_open")
  if l_7_0 == true then
    (l_7_1.EVENTPROP):ChangeNavMeshStage(true)
    ;
    (l_7_2.EVENTPROP):ChangeNavMeshStage(false)
    l_7_1.bEnabled = false
    l_7_2.bEnabled = true
  else
    ;
    (l_7_1.EVENTPROP):ChangeNavMeshStage(false)
    ;
    (l_7_2.EVENTPROP):ChangeNavMeshStage(true)
  end
  for l_7_6,l_7_7 in ipairs(s040_aqua.tFXDoorProfToEnable) do
    local l_7_8 = (Game.GetActor)(l_7_7)
    if l_7_8 ~= nil and l_7_0 == true then
      l_7_8.bEnabled = true
    end
  end
end

l_0_3.CheckDoorProfessor = l_0_4
l_0_3 = s040_aqua
l_0_4 = function()
  -- function num : 0_7
  (Game.SetCollisionCameraLocked)("collision_camera_010_B", true)
end

l_0_3.OnEnter_ChangeCamera_010_B = l_0_4
l_0_3 = s040_aqua
l_0_4 = function()
  -- function num : 0_8
  (Game.SetCollisionCameraLocked)("collision_camera_010_B", false)
end

l_0_3.OnExit_ChangeCamera_010_B = l_0_4
l_0_3 = s040_aqua
l_0_4 = function()
  -- function num : 0_9
  (Game.SetCollisionCameraLocked)("collision_camera_015_B", true)
end

l_0_3.OnEnter_ChangeCamera_015_B = l_0_4
l_0_3 = s040_aqua
l_0_4 = function()
  -- function num : 0_10
  (Game.SetCollisionCameraLocked)("collision_camera_015_B", false)
end

l_0_3.OnExit_ChangeCamera_015_B = l_0_4
l_0_3 = s040_aqua
l_0_4 = function()
  -- function num : 0_11
  (Game.SetCollisionCameraLocked)("collision_camera_021_B", true)
end

l_0_3.OnEnter_ChangeCamera_021_B = l_0_4
l_0_3 = s040_aqua
l_0_4 = function()
  -- function num : 0_12
  (Game.SetCollisionCameraLocked)("collision_camera_021_B", false)
end

l_0_3.OnExit_ChangeCamera_021_B = l_0_4
l_0_3 = s040_aqua
l_0_4 = function()
  -- function num : 0_13
  (Game.SetCollisionCameraLocked)("collision_camera_002_B", true)
end

l_0_3.OnEnter_ChangeCamera_002_B = l_0_4
l_0_3 = s040_aqua
l_0_4 = function()
  -- function num : 0_14
  (Game.SetCollisionCameraLocked)("collision_camera_002_B", false)
end

l_0_3.OnExit_ChangeCamera_002_B = l_0_4
l_0_3 = s040_aqua
l_0_4 = function()
  -- function num : 0_15
  (Game.SetCollisionCameraLocked)("collision_camera_023", true)
end

l_0_3.OnEnter_ChangeCamera_023_B = l_0_4
l_0_3 = s040_aqua
l_0_4 = function()
  -- function num : 0_16
  (Game.SetCollisionCameraLocked)("collision_camera_023", false)
end

l_0_3.OnExit_ChangeCamera_023_B = l_0_4
l_0_3 = s040_aqua
l_0_4 = function()
  -- function num : 0_17
  (Game.PushSetup)("ChangeCamera_001_B", true, true)
end

l_0_3.OnEnter_ChangeCamera_001_B = l_0_4
l_0_3 = s040_aqua
l_0_4 = function()
  -- function num : 0_18
  (Game.PopSetup)("ChangeCamera_001_B", true, true)
end

l_0_3.OnExit_ChangeCamera_001_B = l_0_4
l_0_3 = s040_aqua
l_0_4 = function()
  -- function num : 0_19
  (Game.PushSetup)("collision_camera_023_GravitySuit", true, true)
end

l_0_3.OnEnter_collision_camera_023_GravitySuit = l_0_4
l_0_3 = s040_aqua
l_0_4 = function()
  -- function num : 0_20
  (Game.PopSetup)("collision_camera_023_GravitySuit", true, true)
end

l_0_3.OnExit_collision_camera_023_GravitySuit = l_0_4
l_0_3 = s040_aqua
l_0_4 = function()
  -- function num : 0_21
  local l_22_0 = (Game.GetActor)("waterzone_006")
  if l_22_0 ~= nil then
    l_22_0.bEnabled = false
  end
  local l_22_1 = (Game.GetActor)("waterzone_004")
  if l_22_1 ~= nil then
    l_22_1.bEnabled = false
  end
end

l_0_3.OnEnter_EmptyWaterPools = l_0_4
l_0_3 = s040_aqua
l_0_4 = function()
  -- function num : 0_22
  local l_23_0 = (Game.GetActor)("accesspoint_000")
  local l_23_1 = (Blackboard.GetProp)("GAME_PROGRESS", "ADAMDIALOGUE")
  if l_23_0 ~= nil then
    if l_23_1 == "DIAG_ADAM_LAB_1" then
      (l_23_0.USABLE):ActiveDialogue("DIAG_ADAM_AQUA_1")
      ;
      (Blackboard.SetProp)("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_AQUA_1")
    else
      if l_23_1 == "DIAG_ADAM_CAVE_4" then
        local l_23_2 = (Blackboard.GetProp)("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK")
        if l_23_2 ~= nil and l_23_2 > 0 then
          (l_23_0.USABLE):ActiveDialogue("DIAG_ADAM_AQUA_3")
          ;
          (Blackboard.SetProp)("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_AQUA_3")
        end
      end
    end
  end
end

l_0_3.OnEnter_AP_05 = l_0_4
l_0_3 = s040_aqua
l_0_4 = function()
  -- function num : 0_23
  local l_24_0 = (Game.GetActor)("accesspoint_001")
  local l_24_1 = (Blackboard.GetProp)("GAME_PROGRESS", "ADAMDIALOGUE")
  if l_24_0 ~= nil then
    if l_24_1 == "DIAG_ADAM_SANC_1" or l_24_1 == "DIAG_ADAM_FOREST_2" then
      (l_24_0.USABLE):ActiveDialogue("DIAG_ADAM_AQUA_2")
      ;
      (Blackboard.SetProp)("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_AQUA_2")
    else
      if l_24_1 == "DIAG_ADAM_CAVE_4" then
        local l_24_2 = (Blackboard.GetProp)("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK")
        if l_24_2 ~= nil and l_24_2 > 0 then
          (l_24_0.USABLE):ActiveDialogue("DIAG_ADAM_AQUA_3")
          ;
          (Blackboard.SetProp)("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_AQUA_3")
        end
      end
    end
  end
end

l_0_3.OnEnter_AP_09 = l_0_4
l_0_3 = s040_aqua
l_0_4 = function(l_25_0, l_25_1, l_25_2, l_25_3)
  -- function num : 0_24
  (Scenario.SubAreaChangeRequest)(l_25_0, l_25_1, l_25_2, l_25_3)
end

l_0_3.SubAreaChangeRequest = l_0_4
l_0_3 = s040_aqua
l_0_4 = function(l_26_0, l_26_1, l_26_2, l_26_3, l_26_4)
  -- function num : 0_25
  if l_26_0 == "collision_camera_010" and l_26_2 == "collision_camera_014" then
    (s040_aqua.LaunchCutscene_32)()
  else
  end
  if l_26_0 ~= "collision_camera_029" or l_26_2 == "collision_camera_028" then
  end
end

l_0_3.OnSubAreaChange = l_0_4
l_0_3 = s040_aqua
l_0_4 = function()
  -- function num : 0_26
  local l_27_0 = (Game.GetActor)("cutsceneplayer_32")
  if l_27_0 ~= nil then
    (l_27_0.CUTSCENE):TryLaunchCutscene()
  end
end

l_0_3.LaunchCutscene_32 = l_0_4
l_0_3 = s040_aqua
l_0_4 = function()
  -- function num : 0_27
  local l_28_0 = (Game.GetActor)("cutsceneplayer_63")
  if l_28_0 ~= nil then
    (l_28_0.CUTSCENE):TryLaunchCutscene()
  end
end

l_0_3.LaunchCutscene_63 = l_0_4
l_0_3 = s040_aqua
l_0_4 = function()
  -- function num : 0_28
  local l_29_0 = (Game.GetActor)("powerup_ghostaura")
  if l_29_0 ~= nil then
    (l_29_0.PICKABLE):OnPickUpAfterCutScene()
  end
end

l_0_3.GhostDashObtained = l_0_4
l_0_3 = s040_aqua
l_0_4 = function()
  -- function num : 0_29
  local l_30_0 = (Game.GetActor)("doorpowerclosed_000")
  if l_30_0 ~= nil then
    (l_30_0.LIFE):CloseDoor(false, true, true)
  end
end

l_0_3.FlashShiftRoom_CloseDoor = l_0_4
l_0_3 = s040_aqua
l_0_3.tTentaclesAlive, l_0_4 = l_0_4, {"ev_tentacle_001", "ev_tentacle_002", "ev_tentacle_003", "ev_tentacle_004"}
l_0_3 = s040_aqua
l_0_3.tTentaclesDead, l_0_4 = l_0_4, {"ev_tentacledead_001", "ev_tentacledead_002", "ev_tentacledead_003", "ev_tentacledead_004"}
l_0_3 = s040_aqua
l_0_4 = function()
  -- function num : 0_30
  local l_31_0 = (Game.GetActor)("waterzone_026")
  l_31_0.bEnabled = true
  local l_31_1 = (Game.GetActor)("waterzone_025")
  l_31_1.bEnabled = false
  ;
  ((Game.GetActor)("hydrogigacorpse")).bEnabled = true
end

l_0_3.Event_Hydrogiga_IsDead = l_0_4
l_0_3 = s040_aqua
l_0_4 = function()
  -- function num : 0_31
  if (Scenario.ReadFromBlackboard)((Scenario.LUAPropIDs).HYDROGIGA_DEAD, false) then
    (s040_aqua.Event_Hydrogiga_IsDead)()
    ;
    (s040_aqua.Event_Tentacles_Alive)(false)
  else
    ;
    (s040_aqua.Event_Tentacles_Alive)(true)
  end
end

l_0_3.CheckHydrogiga = l_0_4
l_0_3 = s040_aqua
l_0_4 = function(l_33_0, l_33_1)
  -- function num : 0_32
  (Scenario.WriteToBlackboard)((Scenario.LUAPropIDs).HYDROGIGA_DEAD, "b", true)
  ;
  (s040_aqua.CheckHydrogiga)()
end

l_0_3.OnHydrogigaDead = l_0_4
l_0_3 = s040_aqua
l_0_4 = function(l_34_0)
  -- function num : 0_33
  for l_34_4,l_34_5 in ipairs(s040_aqua.tTentaclesAlive) do
    local l_34_6 = (Game.GetActor)(l_34_5)
    if l_34_6 ~= nil then
      local l_34_7 = (string.gsub)(l_34_6.sName, "ev_tentacle_", "ev_tentacledead_")
      local l_34_8 = (Game.GetActor)(l_34_7)
      if l_34_0 then
        print("ACTIVATING TENTACLE " .. l_34_5 .. " -- ")
        l_34_6.bEnabled = true
        l_34_8.bEnabled = false
      else
        print("DEACTIVATING TENTACLE " .. l_34_5 .. " -- ")
        l_34_6.bEnabled = false
        l_34_8.bEnabled = true
      end
    end
  end
end

l_0_3.Event_Tentacles_Alive = l_0_4
l_0_3 = s040_aqua
l_0_4 = function()
  -- function num : 0_34
  local l_35_0 = (Game.GetPlayerInfo)()
  if l_35_0 ~= nil then
    l_35_0:IgnoreHang(true, "HydrogigaArena")
  end
end

l_0_3.StartIgnoreHangHydrogigaArena = l_0_4
l_0_3 = s040_aqua
l_0_4 = function()
  -- function num : 0_35
  local l_36_0 = (Game.GetPlayerInfo)()
  if l_36_0 ~= nil then
    l_36_0:IgnoreHang(false, "HydrogigaArena")
  end
end

l_0_3.StopIgnoreHangHydrogigaArena = l_0_4
l_0_3 = s040_aqua
l_0_4 = function()
  -- function num : 0_36
  (Game.SetCooldownFlag)(true)
end

l_0_3.ElevatorEndUse_elevator_cave_000 = l_0_4
l_0_3 = s040_aqua
l_0_4 = function(l_38_0, l_38_1)
  -- function num : 0_37
  local l_38_2 = (Game.GetActor)("SG_2RCW_000")
  if l_38_2 ~= nil then
    l_38_2.bEnabled = true
    ;
    (l_38_2.SPAWNGROUP):EnableSpawnGroup()
  end
  l_38_0.bEnabled = false
end

l_0_3.OnEnter_Enable_RCW_A = l_0_4
l_0_3 = s040_aqua
l_0_4 = function()
  -- function num : 0_38
  local l_39_0 = (Game.GetActor)("SP_RCW_001_chozorobotsoldier")
  ;
  (s040_aqua.CRS_EvaluatingDirection)(l_39_0)
end

l_0_3.CRS_DetectingDirection = l_0_4
l_0_3 = s040_aqua
l_0_4 = function()
  -- function num : 0_39
  local l_40_0 = (Game.GetActor)("SP_RCW_000A_chozorobotsoldier")
  if l_40_0 ~= nil then
    (s040_aqua.CRS_EvaluatingDirection)(l_40_0)
  end
end

l_0_3.CRS_DetectingDirection_B = l_0_4
l_0_3 = s040_aqua
l_0_4 = function(l_41_0)
  -- function num : 0_40
  print("----- DETECTING DIRECTION -----")
  if l_41_0 ~= nil then
    local l_41_1 = (Game.GetPlayer)()
    local l_41_2 = V3D(-1, 0, 0)
    if l_41_1 ~= nil then
      l_41_2 = l_41_1.vPos - l_41_0.vPos
    end
    if l_41_2.x > 0 then
      print("----- TURN RIGHT -----")
      ;
      (l_41_0.ANIMATION):SetAction("spawn_front_turn_right", true)
      l_41_2 = V3D(1, 0, 0)
    else
      print("----- TURN LEFT -----")
      ;
      (l_41_0.ANIMATION):SetAction("spawn_front_turn_left", true)
      l_41_2 = V3D(-1, 0, 0)
    end
  end
end

l_0_3.CRS_EvaluatingDirection = l_0_4
l_0_3 = s040_aqua
l_0_4 = function(l_42_0, l_42_1)
  -- function num : 0_41
  local l_42_2 = (Game.GetActor)("SG_Spittail_PostBoss")
  local l_42_3 = (Game.GetActor)("SG_2RCW_000")
  if l_42_3 ~= nil then
    print((l_42_3.SPAWNGROUP).iNumDeaths)
    if (l_42_3.SPAWNGROUP).iNumDeaths > 1 then
      if l_42_2 ~= nil then
        l_42_2.bEnabled = true
        ;
        (l_42_2.SPAWNGROUP):EnableSpawnGroup()
      end
      l_42_0.bEnabled = false
    end
  end
end

l_0_3.OnEnter_PostCRS_Enemies = l_0_4
l_0_3 = s040_aqua
l_0_3.bottomInstanceActors, l_0_4 = l_0_4, {"instanceactor", "instanceactor_153", "instanceactor_005", "instanceactor_218", "instanceactor_203", "instanceactor_204", "instanceactor_048", "spot_010_1_001", "spot_010_1_000"}
l_0_3 = s040_aqua
l_0_3.preBottomInstanceActors, l_0_4 = l_0_4, {"instanceactor_151", "instanceactor_150", "instanceactor_317", "instanceactor_318", "instanceactor_490", "instanceactor_331", "instanceactor_180", "spot_010_2_t_001", "spot_010_2_t_000", "spot_010_2_t_004", "spot_010_2_t_006", "spot_010_2_t_007", "spot_010_2_t_008", "omni_010_1_010", "spot_010_2_t_002", "spot_010_2_t_005", "mapev_activator_fishes04_000", "mapev_fishes04_000", "mapev_activator_fishes01_003", "mapev_fishes01_003", "mapev_activator_fishes04_001", "mapev_fishes04_001", "mapev_activator_shrimps_007", "mapev_shrimps_007"}
l_0_3 = s040_aqua
l_0_3.trenchInstanceActors, l_0_4 = l_0_4, {"instanceactor_177", "instanceactor_166", "instanceactor_168", "instanceactor_333", "omni_010_2_t_008", "omni_010_2_t_025", "spot_010_2_t_010", "spot_010_2_t_011", "mapev_activator_fishes02", "mapev_fishes02", "mapev_activator_fishes03", "mapev_fishes03", "mapev_activator_fishes04", "mapev_fishes04", "mapev_activator_fishes01_002", "mapev_fishes01_002", "mapev_activator_shrimps", "mapev_shrimps", "mapev_activator_shrimps_000", "mapev_shrimps_000", "mapev_activator_shrimps_001", "mapev_shrimps_001"}
l_0_3 = s040_aqua
l_0_3.preTrenchInstanceActors, l_0_4 = l_0_4, {"instanceactor_164", "instanceactor_163", "instanceactor_316", "instanceactor_439", "instanceactor_219", "instanceactor_345", "instanceactor_438", "instanceactor_348", "instanceactor_276", "instanceactor_043", "instanceactor_351", "omni_010_2_t_026", "spot_010_2_t_012", "omni_010_1_001", "omni_010_1_006", "omni_010_2_t_005", "spot_010_2_t_003", "spot_010_15_000", "omni_010_2_t_002", "mapev_activator_shrimps_005", "mapev_shrimps_005", "mapev_activator_shrimps_006", "mapev_shrimps_006"}
l_0_3 = s040_aqua
l_0_3.zone2InstanceActors, l_0_4 = l_0_4, {"instanceactor_034", "instanceactor_035", "instanceactor_038", "instanceactor_039", "instanceactor_147", "instanceactor_274", "instanceactor_275", "instanceactor_311", "instanceactor_314", "instanceactor_409", "instanceactor_410", "instanceactor_411", "instanceactor_414", "instanceactor_416", "instanceactor_116", "spot_010_1_006", "spot_010_1", "omni_010_1_000", "omni_010_1_005", "spot_010_1_004", "mapev_activator_fishes01_001", "mapev_activator_coral01_001", "mapev_coral01_001", "mapev_activator_lapa_01_001", "mapev_activator_lapa_02_001", "mapev_activator_lapa_02_002", "mapev_lapa_02_002"}
l_0_3 = s040_aqua
l_0_3.zone1InstanceActors, l_0_4 = l_0_4, {"instanceactor_112", "instanceactor_113", "instanceactor_114", "instanceactor_115", "instanceactor_147", "instanceactor_148", "instanceactor_149", "instanceactor_215", "instanceactor_270", "instanceactor_273", "instanceactor_370", "instanceactor_372", "instanceactor_271", "instanceactor_272", "instanceactor_389", "instanceactor_054", "omni_016", "spot_010_5_003", "spot_010_5_002", "spot_010_5_004", "spot_010_5_005", "omni_012", "omni_010_2_t_018", "omni_010_1_003", "omni_010_1_007", "omni_010_2_t_006", "mapev_activator_fishes01_000", "mapev_fishes01_000", "mapev_activator_lapa_02_000", "mapev_lapa_02_000"}
l_0_3 = s040_aqua
l_0_3.topInstanceActors, l_0_4 = l_0_4, {"instanceactor_053", "instanceactor_055", "instanceactor_056", "instanceactor_111", "instanceactor_157", "instanceactor_158", "instanceactor_159", "instanceactor_160", "instanceactor_161", "instanceactor_363", "instanceactor_364", "instanceactor_365", "instanceactor_428", "instanceactor_429", "instanceactor_503", "spot_010_5_001", "omni_002", "omni_003", "omni_005", "spot_010_1_007", "omni_010_4_001", "spot_010_1_002", "mapev_activator_fishes01", "mapev_fishes01", "mapev_activator_coral01_000", "mapev_coral01_000", "mapev_activator_coral01_002", "mapev_coral01_002", "mapev_activator_lapa_01_000", "mapev_lapa_01_000"}
l_0_3 = s040_aqua
l_0_3.OmnithonInstanceActors, l_0_4 = l_0_4, {"mapev_activator_omnithon", "mapev_omnithon01", "mapev_omnithon02", "mapev_omnithon03", "mapev_omnithon04", "mapev_omnithon05", "mapev_omnithon06"}
l_0_3 = s040_aqua
l_0_3.SpaceJumpMarkerInstanceActors, l_0_4 = l_0_4, {"spacejump_marker_000", "spacejump_marker_001", "spacejump_marker_002", "spacejump_marker_003", "spacejump_marker_004", "spacejump_marker_005"}
l_0_3 = s040_aqua
l_0_4 = "OnEnter_TriggerOpt_001"
l_0_3[l_0_4] = function()
  -- function num : 0_42
  for l_43_3,l_43_4 in ipairs(s040_aqua.zone1InstanceActors) do
    local l_43_5 = (Game.GetActor)(l_43_4)
    if l_43_5 ~= nil then
      l_43_5.bEnabled = true
    end
  end
  for l_43_9,l_43_10 in ipairs(s040_aqua.topInstanceActors) do
    local l_43_11 = (Game.GetActor)(l_43_10)
    if l_43_11 ~= nil then
      l_43_11.bEnabled = true
    end
  end
  for l_43_15,l_43_16 in ipairs(s040_aqua.bottomInstanceActors) do
    local l_43_17 = (Game.GetActor)(l_43_16)
    if l_43_17 ~= nil then
      l_43_17.bEnabled = false
    end
  end
  for l_43_21,l_43_22 in ipairs(s040_aqua.preBottomInstanceActors) do
    local l_43_23 = (Game.GetActor)(l_43_22)
    if l_43_23 ~= nil then
      l_43_23.bEnabled = false
    end
  end
  for l_43_27,l_43_28 in ipairs(s040_aqua.trenchInstanceActors) do
    local l_43_29 = (Game.GetActor)(l_43_28)
    if l_43_29 ~= nil then
      l_43_29.bEnabled = false
    end
  end
  for l_43_33,l_43_34 in ipairs(s040_aqua.preTrenchInstanceActors) do
    local l_43_35 = (Game.GetActor)(l_43_34)
    if l_43_35 ~= nil then
      l_43_35.bEnabled = false
    end
  end
  for l_43_39,l_43_40 in ipairs(s040_aqua.zone2InstanceActors) do
    local l_43_41 = (Game.GetActor)(l_43_40)
    if l_43_41 ~= nil then
      l_43_41.bEnabled = false
    end
  end
  for l_43_45,l_43_46 in ipairs(s040_aqua.OmnithonInstanceActors) do
    local l_43_47 = (Game.GetActor)(l_43_46)
    if l_43_47 ~= nil then
      l_43_47.bEnabled = false
    end
  end
  for l_43_51,l_43_52 in ipairs(s040_aqua.SpaceJumpMarkerInstanceActors) do
    local l_43_53 = (Game.GetActor)(l_43_52)
    if l_43_53 ~= nil then
      l_43_53.bEnabled = false
    end
  end
end

l_0_3 = s040_aqua
l_0_4 = "OnExit_TriggerOpt_001"
l_0_3[l_0_4] = function()
  -- function num : 0_43
end

l_0_3 = s040_aqua
l_0_4 = "OnEnter_TriggerOpt_002"
l_0_3[l_0_4] = function()
  -- function num : 0_44
  for l_45_3,l_45_4 in ipairs(s040_aqua.zone2InstanceActors) do
    local l_45_5 = (Game.GetActor)(l_45_4)
    if l_45_5 ~= nil then
      l_45_5.bEnabled = true
    end
  end
  for l_45_9,l_45_10 in ipairs(s040_aqua.zone1InstanceActors) do
    local l_45_11 = (Game.GetActor)(l_45_10)
    if l_45_11 ~= nil then
      l_45_11.bEnabled = true
    end
  end
  for l_45_15,l_45_16 in ipairs(s040_aqua.topInstanceActors) do
    local l_45_17 = (Game.GetActor)(l_45_16)
    if l_45_17 ~= nil then
      l_45_17.bEnabled = true
    end
  end
  for l_45_21,l_45_22 in ipairs(s040_aqua.bottomInstanceActors) do
    local l_45_23 = (Game.GetActor)(l_45_22)
    if l_45_23 ~= nil then
      l_45_23.bEnabled = false
    end
  end
  for l_45_27,l_45_28 in ipairs(s040_aqua.preBottomInstanceActors) do
    local l_45_29 = (Game.GetActor)(l_45_28)
    if l_45_29 ~= nil then
      l_45_29.bEnabled = false
    end
  end
  for l_45_33,l_45_34 in ipairs(s040_aqua.trenchInstanceActors) do
    local l_45_35 = (Game.GetActor)(l_45_34)
    if l_45_35 ~= nil then
      l_45_35.bEnabled = false
    end
  end
  for l_45_39,l_45_40 in ipairs(s040_aqua.preTrenchInstanceActors) do
    local l_45_41 = (Game.GetActor)(l_45_40)
    if l_45_41 ~= nil then
      l_45_41.bEnabled = false
    end
  end
  for l_45_45,l_45_46 in ipairs(s040_aqua.OmnithonInstanceActors) do
    local l_45_47 = (Game.GetActor)(l_45_46)
    if l_45_47 ~= nil then
      l_45_47.bEnabled = false
    end
  end
  for l_45_51,l_45_52 in ipairs(s040_aqua.SpaceJumpMarkerInstanceActors) do
    local l_45_53 = (Game.GetActor)(l_45_52)
    if l_45_53 ~= nil then
      l_45_53.bEnabled = false
    end
  end
end

l_0_3 = s040_aqua
l_0_4 = "OnExit_TriggerOpt_002"
l_0_3[l_0_4] = function()
  -- function num : 0_45
end

l_0_3 = s040_aqua
l_0_4 = "OnEnter_TriggerOpt_003"
l_0_3[l_0_4] = function()
  -- function num : 0_46
  for l_47_3,l_47_4 in ipairs(s040_aqua.preTrenchInstanceActors) do
    local l_47_5 = (Game.GetActor)(l_47_4)
    if l_47_5 ~= nil then
      l_47_5.bEnabled = true
    end
  end
  for l_47_9,l_47_10 in ipairs(s040_aqua.zone2InstanceActors) do
    local l_47_11 = (Game.GetActor)(l_47_10)
    if l_47_11 ~= nil then
      l_47_11.bEnabled = true
    end
  end
  for l_47_15,l_47_16 in ipairs(s040_aqua.zone1InstanceActors) do
    local l_47_17 = (Game.GetActor)(l_47_16)
    if l_47_17 ~= nil then
      l_47_17.bEnabled = true
    end
  end
  for l_47_21,l_47_22 in ipairs(s040_aqua.topInstanceActors) do
    local l_47_23 = (Game.GetActor)(l_47_22)
    if l_47_23 ~= nil then
      l_47_23.bEnabled = false
    end
  end
  for l_47_27,l_47_28 in ipairs(s040_aqua.bottomInstanceActors) do
    local l_47_29 = (Game.GetActor)(l_47_28)
    if l_47_29 ~= nil then
      l_47_29.bEnabled = false
    end
  end
  for l_47_33,l_47_34 in ipairs(s040_aqua.preBottomInstanceActors) do
    local l_47_35 = (Game.GetActor)(l_47_34)
    if l_47_35 ~= nil then
      l_47_35.bEnabled = false
    end
  end
  for l_47_39,l_47_40 in ipairs(s040_aqua.trenchInstanceActors) do
    local l_47_41 = (Game.GetActor)(l_47_40)
    if l_47_41 ~= nil then
      l_47_41.bEnabled = false
    end
  end
  for l_47_45,l_47_46 in ipairs(s040_aqua.OmnithonInstanceActors) do
    local l_47_47 = (Game.GetActor)(l_47_46)
    if l_47_47 ~= nil then
      l_47_47.bEnabled = false
    end
  end
  for l_47_51,l_47_52 in ipairs(s040_aqua.SpaceJumpMarkerInstanceActors) do
    local l_47_53 = (Game.GetActor)(l_47_52)
    if l_47_53 ~= nil then
      l_47_53.bEnabled = false
    end
  end
end

l_0_3 = s040_aqua
l_0_4 = "OnExit_TriggerOpt_003"
l_0_3[l_0_4] = function()
  -- function num : 0_47
end

l_0_3 = s040_aqua
l_0_4 = "OnEnter_TriggerOpt_004"
l_0_3[l_0_4] = function()
  -- function num : 0_48
  for l_49_3,l_49_4 in ipairs(s040_aqua.trenchInstanceActors) do
    local l_49_5 = (Game.GetActor)(l_49_4)
    if l_49_5 ~= nil then
      l_49_5.bEnabled = true
    end
  end
  for l_49_9,l_49_10 in ipairs(s040_aqua.preTrenchInstanceActors) do
    local l_49_11 = (Game.GetActor)(l_49_10)
    if l_49_11 ~= nil then
      l_49_11.bEnabled = true
    end
  end
  for l_49_15,l_49_16 in ipairs(s040_aqua.zone2InstanceActors) do
    local l_49_17 = (Game.GetActor)(l_49_16)
    if l_49_17 ~= nil then
      l_49_17.bEnabled = true
    end
  end
  for l_49_21,l_49_22 in ipairs(s040_aqua.zone1InstanceActors) do
    local l_49_23 = (Game.GetActor)(l_49_22)
    if l_49_23 ~= nil then
      l_49_23.bEnabled = false
    end
  end
  for l_49_27,l_49_28 in ipairs(s040_aqua.topInstanceActors) do
    local l_49_29 = (Game.GetActor)(l_49_28)
    if l_49_29 ~= nil then
      l_49_29.bEnabled = false
    end
  end
  for l_49_33,l_49_34 in ipairs(s040_aqua.bottomInstanceActors) do
    local l_49_35 = (Game.GetActor)(l_49_34)
    if l_49_35 ~= nil then
      l_49_35.bEnabled = false
    end
  end
  for l_49_39,l_49_40 in ipairs(s040_aqua.preBottomInstanceActors) do
    local l_49_41 = (Game.GetActor)(l_49_40)
    if l_49_41 ~= nil then
      l_49_41.bEnabled = false
    end
  end
  for l_49_45,l_49_46 in ipairs(s040_aqua.OmnithonInstanceActors) do
    local l_49_47 = (Game.GetActor)(l_49_46)
    if l_49_47 ~= nil then
      l_49_47.bEnabled = false
    end
  end
  for l_49_51,l_49_52 in ipairs(s040_aqua.SpaceJumpMarkerInstanceActors) do
    local l_49_53 = (Game.GetActor)(l_49_52)
    if l_49_53 ~= nil then
      l_49_53.bEnabled = false
    end
  end
end

l_0_3 = s040_aqua
l_0_4 = "OnExit_TriggerOpt_004"
l_0_3[l_0_4] = function()
  -- function num : 0_49
end

l_0_3 = s040_aqua
l_0_4 = "OnEnter_TriggerOpt_005"
l_0_3[l_0_4] = function()
  -- function num : 0_50
  for l_51_3,l_51_4 in ipairs(s040_aqua.preBottomInstanceActors) do
    local l_51_5 = (Game.GetActor)(l_51_4)
    if l_51_5 ~= nil then
      l_51_5.bEnabled = true
    end
  end
  for l_51_9,l_51_10 in ipairs(s040_aqua.trenchInstanceActors) do
    local l_51_11 = (Game.GetActor)(l_51_10)
    if l_51_11 ~= nil then
      l_51_11.bEnabled = true
    end
  end
  for l_51_15,l_51_16 in ipairs(s040_aqua.preTrenchInstanceActors) do
    local l_51_17 = (Game.GetActor)(l_51_16)
    if l_51_17 ~= nil then
      l_51_17.bEnabled = true
    end
  end
  for l_51_21,l_51_22 in ipairs(s040_aqua.OmnithonInstanceActors) do
    local l_51_23 = (Game.GetActor)(l_51_22)
    if l_51_23 ~= nil then
      l_51_23.bEnabled = true
    end
  end
  for l_51_27,l_51_28 in ipairs(s040_aqua.SpaceJumpMarkerInstanceActors) do
    local l_51_29 = (Game.GetActor)(l_51_28)
    if l_51_29 ~= nil then
      l_51_29.bEnabled = true
    end
  end
  for l_51_33,l_51_34 in ipairs(s040_aqua.zone2InstanceActors) do
    local l_51_35 = (Game.GetActor)(l_51_34)
    if l_51_35 ~= nil then
      l_51_35.bEnabled = false
    end
  end
  for l_51_39,l_51_40 in ipairs(s040_aqua.zone1InstanceActors) do
    local l_51_41 = (Game.GetActor)(l_51_40)
    if l_51_41 ~= nil then
      l_51_41.bEnabled = false
    end
  end
  for l_51_45,l_51_46 in ipairs(s040_aqua.topInstanceActors) do
    local l_51_47 = (Game.GetActor)(l_51_46)
    if l_51_47 ~= nil then
      l_51_47.bEnabled = false
    end
  end
  for l_51_51,l_51_52 in ipairs(s040_aqua.bottomInstanceActors) do
    local l_51_53 = (Game.GetActor)(l_51_52)
    if l_51_53 ~= nil then
      l_51_53.bEnabled = false
    end
  end
end

l_0_3 = s040_aqua
l_0_4 = "OnExit_TriggerOpt_005"
l_0_3[l_0_4] = function()
  -- function num : 0_51
end

l_0_3 = s040_aqua
l_0_4 = "OnEnter_TriggerOpt_006"
l_0_3[l_0_4] = function()
  -- function num : 0_52
  for l_53_3,l_53_4 in ipairs(s040_aqua.bottomInstanceActors) do
    local l_53_5 = (Game.GetActor)(l_53_4)
    if l_53_5 ~= nil then
      l_53_5.bEnabled = true
    end
  end
  for l_53_9,l_53_10 in ipairs(s040_aqua.preBottomInstanceActors) do
    local l_53_11 = (Game.GetActor)(l_53_10)
    if l_53_11 ~= nil then
      l_53_11.bEnabled = true
    end
  end
  for l_53_15,l_53_16 in ipairs(s040_aqua.trenchInstanceActors) do
    local l_53_17 = (Game.GetActor)(l_53_16)
    if l_53_17 ~= nil then
      l_53_17.bEnabled = true
    end
  end
  for l_53_21,l_53_22 in ipairs(s040_aqua.OmnithonInstanceActors) do
    local l_53_23 = (Game.GetActor)(l_53_22)
    if l_53_23 ~= nil then
      l_53_23.bEnabled = true
    end
  end
  for l_53_27,l_53_28 in ipairs(s040_aqua.preTrenchInstanceActors) do
    local l_53_29 = (Game.GetActor)(l_53_28)
    if l_53_29 ~= nil then
      l_53_29.bEnabled = false
    end
  end
  for l_53_33,l_53_34 in ipairs(s040_aqua.zone2InstanceActors) do
    local l_53_35 = (Game.GetActor)(l_53_34)
    if l_53_35 ~= nil then
      l_53_35.bEnabled = false
    end
  end
  for l_53_39,l_53_40 in ipairs(s040_aqua.zone1InstanceActors) do
    local l_53_41 = (Game.GetActor)(l_53_40)
    if l_53_41 ~= nil then
      l_53_41.bEnabled = false
    end
  end
  for l_53_45,l_53_46 in ipairs(s040_aqua.topInstanceActors) do
    local l_53_47 = (Game.GetActor)(l_53_46)
    if l_53_47 ~= nil then
      l_53_47.bEnabled = false
    end
  end
  for l_53_51,l_53_52 in ipairs(s040_aqua.SpaceJumpMarkerInstanceActors) do
    local l_53_53 = (Game.GetActor)(l_53_52)
    if l_53_53 ~= nil then
      l_53_53.bEnabled = false
    end
  end
end

l_0_3 = s040_aqua
l_0_4 = "OnExit_TriggerOpt_006"
l_0_3[l_0_4] = function()
  -- function num : 0_53
end

l_0_3 = s040_aqua
l_0_4 = "OnEnter_TriggerOpt_007"
l_0_3[l_0_4] = function()
  -- function num : 0_54
  for l_55_3,l_55_4 in ipairs(s040_aqua.bottomInstanceActors) do
    local l_55_5 = (Game.GetActor)(l_55_4)
    if l_55_5 ~= nil then
      l_55_5.bEnabled = true
    end
  end
  for l_55_9,l_55_10 in ipairs(s040_aqua.preBottomInstanceActors) do
    local l_55_11 = (Game.GetActor)(l_55_10)
    if l_55_11 ~= nil then
      l_55_11.bEnabled = true
    end
  end
  for l_55_15,l_55_16 in ipairs(s040_aqua.OmnithonInstanceActors) do
    local l_55_17 = (Game.GetActor)(l_55_16)
    if l_55_17 ~= nil then
      l_55_17.bEnabled = true
    end
  end
  for l_55_21,l_55_22 in ipairs(s040_aqua.trenchInstanceActors) do
    local l_55_23 = (Game.GetActor)(l_55_22)
    if l_55_23 ~= nil then
      l_55_23.bEnabled = false
    end
  end
  for l_55_27,l_55_28 in ipairs(s040_aqua.preTrenchInstanceActors) do
    local l_55_29 = (Game.GetActor)(l_55_28)
    if l_55_29 ~= nil then
      l_55_29.bEnabled = false
    end
  end
  for l_55_33,l_55_34 in ipairs(s040_aqua.zone2InstanceActors) do
    local l_55_35 = (Game.GetActor)(l_55_34)
    if l_55_35 ~= nil then
      l_55_35.bEnabled = false
    end
  end
  for l_55_39,l_55_40 in ipairs(s040_aqua.zone1InstanceActors) do
    local l_55_41 = (Game.GetActor)(l_55_40)
    if l_55_41 ~= nil then
      l_55_41.bEnabled = false
    end
  end
  for l_55_45,l_55_46 in ipairs(s040_aqua.topInstanceActors) do
    local l_55_47 = (Game.GetActor)(l_55_46)
    if l_55_47 ~= nil then
      l_55_47.bEnabled = false
    end
  end
  for l_55_51,l_55_52 in ipairs(s040_aqua.SpaceJumpMarkerInstanceActors) do
    local l_55_53 = (Game.GetActor)(l_55_52)
    if l_55_53 ~= nil then
      l_55_53.bEnabled = false
    end
  end
end

l_0_3 = s040_aqua
l_0_4 = "OnExit_TriggerOpt_007"
l_0_3[l_0_4] = function()
  -- function num : 0_55
end

l_0_3 = s040_aqua
l_0_4 = "DisableAllWaterPools"
l_0_3[l_0_4] = function()
  -- function num : 0_56
  (((Game.GetActor)("waterzone_010")).ACTIVATABLE):DisableLogic(true, "Prueba")
  ;
  (((Game.GetActor)("waterzone_011")).ACTIVATABLE):DisableLogic(true, "Prueba")
  ;
  (((Game.GetActor)("waterzone_012")).ACTIVATABLE):DisableLogic(true, "Prueba")
  ;
  (((Game.GetActor)("waterzone_013")).ACTIVATABLE):DisableLogic(true, "Prueba")
  ;
  (((Game.GetActor)("waterzone_014")).ACTIVATABLE):DisableLogic(true, "Prueba")
  ;
  (((Game.GetActor)("waterzone_015")).ACTIVATABLE):DisableLogic(true, "Prueba")
  ;
  (((Game.GetActor)("waterzone_016")).ACTIVATABLE):DisableLogic(true, "Prueba")
  ;
  (((Game.GetActor)("waterzone_018")).ACTIVATABLE):DisableLogic(true, "Prueba")
  ;
  (((Game.GetActor)("waterzone_027")).ACTIVATABLE):DisableLogic(true, "Prueba")
end

l_0_3 = s040_aqua
l_0_4 = "OnEnter_waterzone_010"
l_0_3[l_0_4] = function()
  -- function num : 0_57
  (((Game.GetActor)("waterzone_010")).ACTIVATABLE):DisableLogic(false, "Prueba")
end

l_0_3 = s040_aqua
l_0_4 = "OnEnter_waterzone_011"
l_0_3[l_0_4] = function()
  -- function num : 0_58
  (((Game.GetActor)("waterzone_011")).ACTIVATABLE):DisableLogic(false, "Prueba")
end

l_0_3 = s040_aqua
l_0_4 = "OnEnter_waterzone_012"
l_0_3[l_0_4] = function()
  -- function num : 0_59
  (((Game.GetActor)("waterzone_012")).ACTIVATABLE):DisableLogic(false, "Prueba")
end

l_0_3 = s040_aqua
l_0_4 = "OnEnter_waterzone_013"
l_0_3[l_0_4] = function()
  -- function num : 0_60
  (((Game.GetActor)("waterzone_013")).ACTIVATABLE):DisableLogic(false, "Prueba")
end

l_0_3 = s040_aqua
l_0_4 = "OnEnter_waterzone_014"
l_0_3[l_0_4] = function()
  -- function num : 0_61
  (((Game.GetActor)("waterzone_014")).ACTIVATABLE):DisableLogic(false, "Prueba")
end

l_0_3 = s040_aqua
l_0_4 = "OnEnter_waterzone_015"
l_0_3[l_0_4] = function()
  -- function num : 0_62
  (((Game.GetActor)("waterzone_015")).ACTIVATABLE):DisableLogic(false, "Prueba")
end

l_0_3 = s040_aqua
l_0_4 = "OnEnter_waterzone_016"
l_0_3[l_0_4] = function()
  -- function num : 0_63
  (((Game.GetActor)("waterzone_016")).ACTIVATABLE):DisableLogic(false, "Prueba")
end

l_0_3 = s040_aqua
l_0_4 = "OnEnter_waterzone_018"
l_0_3[l_0_4] = function()
  -- function num : 0_64
  (((Game.GetActor)("waterzone_018")).ACTIVATABLE):DisableLogic(false, "Prueba")
end

l_0_3 = s040_aqua
l_0_4 = "OnEnter_waterzone_027"
l_0_3[l_0_4] = function()
  -- function num : 0_65
  (((Game.GetActor)("waterzone_027")).ACTIVATABLE):DisableLogic(false, "Prueba")
end

l_0_3 = s040_aqua
l_0_4 = "OnExit_waterzone_010"
l_0_3[l_0_4] = function()
  -- function num : 0_66
  (((Game.GetActor)("waterzone_010")).ACTIVATABLE):DisableLogic(true, "Prueba")
end

l_0_3 = s040_aqua
l_0_4 = "OnExit_waterzone_011"
l_0_3[l_0_4] = function()
  -- function num : 0_67
  (((Game.GetActor)("waterzone_011")).ACTIVATABLE):DisableLogic(true, "Prueba")
end

l_0_3 = s040_aqua
l_0_4 = "OnExit_waterzone_012"
l_0_3[l_0_4] = function()
  -- function num : 0_68
  (((Game.GetActor)("waterzone_012")).ACTIVATABLE):DisableLogic(true, "Prueba")
end

l_0_3 = s040_aqua
l_0_4 = "OnExit_waterzone_013"
l_0_3[l_0_4] = function()
  -- function num : 0_69
  (((Game.GetActor)("waterzone_013")).ACTIVATABLE):DisableLogic(true, "Prueba")
end

l_0_3 = s040_aqua
l_0_4 = "OnExit_waterzone_014"
l_0_3[l_0_4] = function()
  -- function num : 0_70
  (((Game.GetActor)("waterzone_014")).ACTIVATABLE):DisableLogic(true, "Prueba")
end

l_0_3 = s040_aqua
l_0_4 = "OnExit_waterzone_015"
l_0_3[l_0_4] = function()
  -- function num : 0_71
  (((Game.GetActor)("waterzone_015")).ACTIVATABLE):DisableLogic(true, "Prueba")
end

l_0_3 = s040_aqua
l_0_4 = "OnExit_waterzone_016"
l_0_3[l_0_4] = function()
  -- function num : 0_72
  (((Game.GetActor)("waterzone_016")).ACTIVATABLE):DisableLogic(true, "Prueba")
end

l_0_3 = s040_aqua
l_0_4 = "OnExit_waterzone_018"
l_0_3[l_0_4] = function()
  -- function num : 0_73
  (((Game.GetActor)("waterzone_018")).ACTIVATABLE):DisableLogic(true, "Prueba")
end

l_0_3 = s040_aqua
l_0_4 = "OnExit_waterzone_027"
l_0_3[l_0_4] = function()
  -- function num : 0_74
  (((Game.GetActor)("waterzone_027")).ACTIVATABLE):DisableLogic(true, "Prueba")
end


