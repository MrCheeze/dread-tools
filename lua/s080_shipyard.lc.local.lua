-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: lua/s080_shipyard.lc.local 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC2: Confused about usage of register: R0 in 'UnsetPending'

s080_shipyard.main = function()
  -- function num : 0_0
end

-- DECOMPILER ERROR at PC5: Confused about usage of register: R0 in 'UnsetPending'

s080_shipyard.OnLoadScenarioFinished = function()
  -- function num : 0_1
  if (Game.GetCurrentSubAreaId)() == "collision_camera_020" then
    local l_2_0 = (Game.GetActor)("cutsceneplayer_108")
    if l_2_0 ~= nil and (l_2_0.CUTSCENE):HasCutsceneBeenPlayed() == false then
      (Game.ResetFader)()
      ;
      (Game.FadeOut)(0)
    end
  end
end

local l_0_0 = false
local l_0_1 = false
local l_0_2 = false
-- DECOMPILER ERROR at PC14: Confused about usage of register: R3 in 'UnsetPending'

s080_shipyard.InitFromBlackboard = function()
  -- function num : 0_2 , upvalues : l_0_0, l_0_1, l_0_2
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  ;
  (Game.ReinitPlayerFromBlackboard)()
  ;
  (Game.ForceEntityIconVisible)("LM_Samus_Ship")
  l_0_0 = (Scenario.ReadFromBlackboard)((Scenario.LUAPropIDs).SHIP_EMMY_METROIDNIZATION, false)
  l_0_1 = (Scenario.ReadFromBlackboard)((Scenario.LUAPropIDs).SHIP_STRONG_REACTION, false)
  l_0_2 = (Scenario.ReadFromBlackboard)((Scenario.LUAPropIDs).SHIP_CWXELITE_PRESENTATION, false)
  local l_3_0 = (Blackboard.GetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM")
  if l_3_0 ~= nil and l_3_0 > 0 then
    (s080_shipyard.Activate_Setup_WaveBeamAcquired)()
  end
end

-- DECOMPILER ERROR at PC17: Confused about usage of register: R3 in 'UnsetPending'

s080_shipyard.Activate_Setup_WaveBeamAcquired = function()
  -- function num : 0_3
  (Game.PushSetup)("WaveBeamAcquired", true, true)
end

-- DECOMPILER ERROR at PC20: Confused about usage of register: R3 in 'UnsetPending'

s080_shipyard.SetupDebugGameBlackboard = function()
  -- function num : 0_4
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPECIAL_ENERGY", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 899)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 899)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 84)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 84)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_CURRENT", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_GRAVITY_SUIT", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_DOUBLE_JUMP", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPACE_JUMP", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_FLOOR_SLIDE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_WAVE_BEAM", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAGNET_GLOVE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPEED_BOOSTER", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_OPTIC_CAMOUFLAGE", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_GHOST_AURA", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SONAR", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_METROIDNIZATION", "f", 0)
end

local l_0_3 = s080_shipyard
local l_0_4 = {}
l_0_4.ShowDeath = true
l_0_4.GoToMainMenu = false
l_0_3.tGetOnDeathOverrides = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function()
  -- function num : 0_5
  return s080_shipyard.tGetOnDeathOverrides
end

l_0_3.GetOnDeathOverrides = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function(l_7_0, l_7_1)
  -- function num : 0_6
  if l_7_1 ~= nil then
    print("OnEntityGenerated!!!!!!")
  end
end

l_0_3.OnEntityGenerated = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function()
  -- function num : 0_7
  (Game.SetCollisionCameraLocked)("collision_camera_005_B", true)
end

l_0_3.OnEnter_ChangeCamera_005_B = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function()
  -- function num : 0_8
  (Game.SetCollisionCameraLocked)("collision_camera_005_B", false)
end

l_0_3.OnExit_ChangeCamera_005_B = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function()
  -- function num : 0_9
  (Game.SetCollisionCameraLocked)("collision_camera_006_B", true)
end

l_0_3.OnEnter_ChangeCamera_006_B = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function()
  -- function num : 0_10
  (Game.SetCollisionCameraLocked)("collision_camera_006_B", false)
end

l_0_3.OnExit_ChangeCamera_006_B = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function()
  -- function num : 0_11
  (Game.PushSetup)("ChangeCamera_009_C", false, true)
end

l_0_3.OnEnter_ChangeCamera_009_C = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function()
  -- function num : 0_12
  (Game.PopSetup)("ChangeCamera_009_C", false, true)
end

l_0_3.OnExit_ChangeCamera_009_C = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function()
  -- function num : 0_13
  (Game.SetCollisionCameraLocked)("collision_camera_009_B", true)
end

l_0_3.OnEnter_ChangeCamera_009_B = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function()
  -- function num : 0_14
  (Game.SetCollisionCameraLocked)("collision_camera_009_B", false)
end

l_0_3.OnExit_ChangeCamera_009_B = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function()
  -- function num : 0_15
  (Game.SetCollisionCameraLocked)("collision_camera_013_B", true)
end

l_0_3.OnEnter_ChangeCamera_013_B = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function()
  -- function num : 0_16
  (Game.SetCollisionCameraLocked)("collision_camera_013_B", false)
end

l_0_3.OnExit_ChangeCamera_013_B = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function()
  -- function num : 0_17
  (Game.SetCollisionCameraLocked)("collision_camera_013_C", true)
  local l_18_0 = (Game.GetActor)("block_pbtube_2")
  -- DECOMPILER ERROR at PC12: Confused about usage of register: R1 in 'UnsetPending'

  if l_18_0 ~= nil then
    (l_18_0.LIFE).bWantsEnabled = true
  end
end

l_0_3.OnEnter_ChangeCamera_013_C = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function()
  -- function num : 0_18
  (Game.SetCollisionCameraLocked)("collision_camera_013_C", false)
  local l_19_0 = (Game.GetActor)("block_pbtube_2")
  -- DECOMPILER ERROR at PC12: Confused about usage of register: R1 in 'UnsetPending'

  if l_19_0 ~= nil then
    (l_19_0.LIFE).bWantsEnabled = false
  end
end

l_0_3.OnExit_ChangeCamera_013_C = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function()
  -- function num : 0_19
  (Game.SetCollisionCameraLocked)("collision_camera_014_B", true)
end

l_0_3.OnEnter_ChangeCamera_014_B = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function()
  -- function num : 0_20
  (Game.SetCollisionCameraLocked)("collision_camera_014_B", false)
end

l_0_3.OnExit_ChangeCamera_014_B = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function()
  -- function num : 0_21
  (((Game.GetPlayer)()).INVENTORY):SetItemAmount("ITEM_METROIDNIZATION", 1, true)
end

l_0_3.OnEndStrongReactionEvent = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function(l_23_0, l_23_1)
  -- function num : 0_22
  l_23_0.bEnabled = false
  ;
  (Game.AddSF)(1, "s080_shipyard.DelayedPowerBombObtained", "")
  local l_23_2 = (Game.GetPlayer)()
  if l_23_2 ~= nil then
    (l_23_2.INPUT):IgnoreInput(true, false, "OnEnter_trigger_PowerBombObtained")
  end
end

l_0_3.OnEnter_trigger_PowerBombObtained = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function()
  -- function num : 0_23
  (GUI.ShowMessage)("#CUT_POWER_BOMB", true, "s080_shipyard.PowerBombObtainedMessageSkipped")
  local l_24_0 = (Game.GetPlayer)()
  if l_24_0 ~= nil then
    (l_24_0.INPUT):IgnoreInput(false, false, "OnEnter_trigger_PowerBombObtained")
  end
end

l_0_3.DelayedPowerBombObtained = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function()
  -- function num : 0_24
  (GUI.AddEmmyMissionLogEntry)("#MLOG_ENCOUNTER_EMMY_SHIP")
end

l_0_3.On0071Started = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function()
  -- function num : 0_25
  (GUI.WriteEmmyDeathToBlackboard)()
  local l_26_0 = (Game.GetActor)("SG_CWX")
  if l_26_0 ~= nil then
    (l_26_0.SPAWNGROUP):EnableSpawnGroup()
  end
  local l_26_1 = (Game.GetEntityFromSpawnPoint)("SP_Emmy")
  if l_26_1 ~= nil then
    l_26_1.bEnabled = false
  end
  local l_26_2 = (Game.GetActor)("PRP_EmmyShipyard")
  if l_26_2 ~= nil then
    l_26_2.bEnabled = true
  end
  local l_26_3 = (Game.GetActor)("emmyvalve_reg_gen_000")
  if l_26_3 ~= nil then
    (l_26_3.EMMYVALVE):SetState(false, true)
  end
  local l_26_4 = (Game.GetActor)("emmyvalve_reg_gen_001")
  if l_26_4 ~= nil then
    (l_26_4.EMMYVALVE):SetState(false, true)
  end
end

l_0_3.OnChozoWarriorActivated = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function(l_27_0, l_27_1, l_27_2)
  -- function num : 0_26
  if l_27_1 == "SP_CWX_Phase2" then
    local l_27_3 = (Game.GetActor)("PRP_EmmyShipyard")
    if l_27_3 ~= nil then
      l_27_3.bEnabled = false
    end
    ;
    (Game.StopMusic)(true)
    local l_27_4 = (Game.GetEntityFromSpawnPoint)("SP_Emmy")
    if l_27_4 ~= nil then
      l_27_4.bEnabled = true
    end
    ;
    (Game.KillEmmy)()
  end
end

l_0_3.OnChozoWarriorXKilled = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function()
  -- function num : 0_27
  (Game.AddSF)(0.80000001192093, "s080_shipyard.OpenEmmyValves", "")
end

l_0_3.OnEmmyShipyardAbilityObtained = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function()
  -- function num : 0_28
  local l_29_0 = (Game.GetActor)("emmyvalve_reg_gen_000")
  if l_29_0 ~= nil then
    (l_29_0.EMMYVALVE):CleanForceStateFlag(false)
  end
  local l_29_1 = (Game.GetActor)("emmyvalve_reg_gen_001")
  if l_29_1 ~= nil then
    (l_29_1.EMMYVALVE):CleanForceStateFlag(false)
  end
  local l_29_2 = (Game.GetActor)("PRP_CUDeactivated")
  if l_29_2 ~= nil then
    l_29_2.bEnabled = true
  end
  ;
  (Game.SaveGame)("checkpoint", "ChozoWarriorX_Dead", "SP_Checkpoint_Dead_ChozoWarriorX", false)
end

l_0_3.OpenEmmyValves = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function(l_30_0)
  -- function num : 0_29
end

l_0_3.OnGiveInventoryItemOnDead = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function()
  -- function num : 0_30
  (Game.PushSetup)("PostEmmy", true, true)
end

l_0_3.ChangeSetup_PostEmmy = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function()
  -- function num : 0_31
  local l_32_0 = (Game.GetPlayer)()
  if l_32_0 ~= nil then
    (l_32_0.INVENTORY):SetItemAmount("ITEM_WEAPON_HYPER_BEAM", 1, true)
  end
end

l_0_3.ObtainHyperBeam = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function()
  -- function num : 0_32
  (Game.PushSetup)("Escape_Sequence", true, true)
  ;
  (Game.AddSF)(0.5, "s080_shipyard.InitEscapeSequence", "")
end

l_0_3.OnEnterEscapeSequence = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function()
  -- function num : 0_33
  local l_34_0 = (Game.GetActor)("ev_evacuation")
  print("search ev_evacuation")
  if l_34_0 ~= nil then
    print("Launch Event Evacuation")
    ;
    (l_34_0.EVENTPROP):LaunchEvent()
    ;
    (Game.SaveGame)("checkpoint", "Escape_Sequence", "SP_Checkpoint_Escape", true)
  end
end

l_0_3.InitEscapeSequence = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function()
  -- function num : 0_34
  local l_35_0 = (Game.GetActor)("escape_explosion_path_01")
  if l_35_0 ~= nil then
    l_35_0:StartTimeline("explosion_01", true)
  end
end

l_0_3.EscapeSquence_Drop_01 = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function()
  -- function num : 0_35
  local l_36_0 = (Game.GetActor)("escape_explosion_path_02")
  if l_36_0 ~= nil then
    l_36_0:StartTimeline("explosion_03", true)
  end
end

l_0_3.EscapeSquence_Drop_02 = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function()
  -- function num : 0_36
  local l_37_0 = (Game.GetActor)("escape_explosion_path_03")
  if l_37_0 ~= nil then
    l_37_0:StartTimeline("explosion_02", true)
  end
end

l_0_3.EscapeSquence_Drop_03 = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function()
  -- function num : 0_37
  local l_38_0 = (Game.GetActor)("mapev_atriumdebris")
  if l_38_0 ~= nil then
    l_38_0:StartTimeline("explosion_01", true)
  end
  local l_38_1 = (Game.GetActor)("escape_glass_01")
  if l_38_1 ~= nil then
    (l_38_1.ANIMATION):SetAction("relax", true)
  end
  local l_38_2 = (Game.GetActor)("escape_glass_02")
  if l_38_2 ~= nil then
    (l_38_2.ANIMATION):SetAction("relax", true)
  end
  local l_38_3 = (Game.GetActor)("escpe_glass_03")
  if l_38_3 ~= nil then
    (l_38_3.ANIMATION):SetAction("relax", true)
  end
end

l_0_3.EscapeSquence_Drop_04 = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function(l_39_0, l_39_1)
  -- function num : 0_38
  l_39_0.bEnabled = false
  local l_39_2 = (Game.GetActor)("ev_evacuation")
  if l_39_2 ~= nil then
    (l_39_2.EVENTPROP):StopCountDown()
  end
  ;
  (GUI.HideEscapeCounter)()
  local l_39_3 = (Game.GetActor)("cutsceneplayer_112")
  if l_39_3 ~= nil then
    (l_39_3.CUTSCENE):LaunchCutsceneImmediate()
  end
end

l_0_3.OnEnter_trigger_EndGame = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function()
  -- function num : 0_39
  (Game.GameCleared)()
end

l_0_3.OnEnter_EndGame = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function()
  -- function num : 0_40 , upvalues : l_0_1
  local l_41_0 = (Game.GetActor)("accesspoint_000")
  local l_41_1 = (Blackboard.GetProp)("GAME_PROGRESS", "ADAMDIALOGUE")
  if l_41_0 ~= nil then
    if l_41_1 == "DIAG_ADAM_CAVE_4" or l_41_1 == "DIAG_ADAM_AQUA_3" then
      (l_41_0.USABLE):ActiveDialogue("DIAG_ADAM_SHIP_1")
      ;
      (Blackboard.SetProp)("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_SHIP_1")
    else
      if l_41_1 == "DIAG_ADAM_SHIP_1" and l_0_1 then
        (l_41_0.USABLE):ActiveDialogue("DIAG_ADAM_SHIP_2")
        ;
        (Blackboard.SetProp)("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_SHIP_2")
      end
    end
  end
end

l_0_3.OnEnter_AP_10 = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function(l_42_0, l_42_1, l_42_2, l_42_3)
  -- function num : 0_41
  (Scenario.SubAreaChangeRequest)(l_42_0, l_42_1, l_42_2, l_42_3)
end

l_0_3.SubAreaChangeRequest = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function(l_43_0, l_43_1, l_43_2, l_43_3, l_43_4)
  -- function num : 0_42 , upvalues : l_0_0, l_0_1, l_0_2
  if l_43_0 == "collision_camera_011" and l_43_2 == "collision_camera_014" and l_0_0 == false then
    (s080_shipyard.ClosePowerBombDoor)()
  else
    if l_43_0 == "collision_camera_009" and l_43_2 == "collision_camera_010" and l_0_1 == false then
      (s080_shipyard.OnBegin_Cutscene_12)()
    else
      if l_43_0 == "collision_camera_006" and l_43_2 == "collision_camera_005" and l_0_2 == false then
        (s080_shipyard.OnBegin_Cutscene_71)()
      else
        if l_43_0 == "collision_camera_000" and l_43_2 == "collision_camera_016" then
          (Game.StopMusic)(true)
        end
      end
    end
  end
end

l_0_3.OnSubAreaChange = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function()
  -- function num : 0_43
  local l_44_0 = (Game.GetActor)("doorpowerclosed_001")
  if l_44_0 ~= nil and (l_44_0.LIFE):CanBeClosedSafely() then
    (((Game.GetActor)("doorpowerclosed_001")).LIFE):CloseDoor(false, true, false)
    local l_44_1 = (Game.GetEntityFromSpawnPoint)("SP_Emmy")
    if l_44_1 ~= nil then
      l_44_1.bEnabled = true
    end
  else
    do
      ;
      (Game.AddSF)(0, "s080_shipyard.ClosePowerBombDoor", "")
    end
  end
end

l_0_3.ClosePowerBombDoor = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function()
  -- function num : 0_44
  (Game.AddSF)(1.2999999523163, "s080_shipyard.OnEmmyShipyardLaunchFade", "")
end

l_0_3.OnEmmyShipyardTargetDetected = l_0_4
l_0_3 = s080_shipyard
l_0_3.fEmmyShipyardFadeOutTime = 0.25
l_0_3 = s080_shipyard
l_0_3.fEmmyShipyardFadeTime = 0.5
l_0_3 = s080_shipyard
l_0_3.fEmmyShipyardInTime = 0.25
l_0_3 = s080_shipyard
l_0_4 = function()
  -- function num : 0_45
  local l_46_0 = (Game.GetActor)("PRP_CUDeactivated")
  if l_46_0 ~= nil then
    l_46_0.bEnabled = false
  end
  local l_46_1 = (Game.GetActor)("block_cut43")
  if l_46_1 ~= nil then
    (l_46_1.TIMELINECOMPONENT):StartAction("powerbombexplosion", -1, false)
  end
end

l_0_3.OnEmmyShipyardLaunchFade = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function()
  -- function num : 0_46
  (Game.SetSendReports)(false)
  ;
  (((Game.GetPlayer)()).INVENTORY):SetItemAmount("ITEM_HYPER_SUIT", 0, true)
  ;
  (((Game.GetPlayer)()).INVENTORY):SetItemAmount("ITEM_WEAPON_HYPER_BEAM", 0, true)
  ;
  (((Game.GetPlayer)()).INVENTORY):SetItemAmount("ITEM_WEAPON_WAVE_BEAM", 1, true)
  ;
  (Game.SetSendReports)(true)
end

l_0_3.RemoveSamusHyperSuit = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function()
  -- function num : 0_47 , upvalues : l_0_0
  local l_48_0 = (Game.GetActor)("cutsceneplayer_43")
  if l_48_0 ~= nil then
    (l_48_0.CUTSCENE):TryLaunchCutscene()
  end
  local l_48_1 = (Game.GetActor)("centralunitmagmacontroller_000")
  if l_48_1 ~= nil then
    (l_48_1.CENTRALUNIT):ForceEmmyDeadState()
  end
  ;
  (Scenario.WriteToBlackboard)((Scenario.LUAPropIDs).SHIP_EMMY_METROIDNIZATION, "b", true)
  l_0_0 = true
  local l_48_2 = (Game.GetActor)("block_cut43")
  if l_48_2 ~= nil then
    (l_48_2.LIFE):ForceDead(false, true)
  end
  local l_48_3 = (Game.GetEntityFromSpawnPoint)("SP_Emmy")
  if l_48_3 ~= nil then
    (l_48_3.ANIMATION):SetAction("dead_shipyard", true)
  end
end

l_0_3.OnBegin_Cutscene_43 = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function()
  -- function num : 0_48 , upvalues : l_0_1
  local l_49_0 = (Game.GetActor)("cutsceneplayer_12")
  if l_49_0 ~= nil then
    (l_49_0.CUTSCENE):TryLaunchCutscene()
  end
  ;
  (Scenario.WriteToBlackboard)((Scenario.LUAPropIDs).SHIP_STRONG_REACTION, "b", true)
  l_0_1 = true
end

l_0_3.OnBegin_Cutscene_12 = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function()
  -- function num : 0_49 , upvalues : l_0_2
  local l_50_0 = (Game.GetActor)("cutsceneplayer_71")
  if l_50_0 ~= nil then
    (l_50_0.CUTSCENE):TryLaunchCutscene()
  end
  ;
  (Scenario.WriteToBlackboard)((Scenario.LUAPropIDs).SHIP_CWXELITE_PRESENTATION, "b", true)
  l_0_2 = true
end

l_0_3.OnBegin_Cutscene_71 = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function()
  -- function num : 0_50
  (Game.PlayCameraFXPreset)("QUEEN_SHAKING_JUMP")
  ;
  (Game.PlayPresetSound)("events/chainreaction_bigexplosion")
end

l_0_3.AtriumBridgeEvent = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function()
  -- function num : 0_51
  print("ACTIVATED POST CHOZO WARRIOR EVENT SETUP")
  ;
  (Game.PushSetup)("PostChozoWarriorEvent", true, true)
end

l_0_3.Activate_SG_PostWarrior = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function(l_53_0, l_53_1)
  -- function num : 0_52
  local l_53_2 = (Game.GetActor)("SG_Sharpaw_000")
  if l_53_2 ~= nil then
    (l_53_2.SPAWNGROUP):EnableSpawnGroup()
  end
  l_53_0.bEnabled = false
end

l_0_3.OnEnter_ActivateArenaEnemies = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function()
  -- function num : 0_53
  local l_54_0 = (Game.GetActor)("centralunitmagmacontroller_000")
  if l_54_0 ~= nil then
    (l_54_0.CENTRALUNIT):AllowAlarm(false)
  end
end

l_0_3.StopCUAlarm = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function()
  -- function num : 0_54
  local l_55_0 = (Game.GetActor)("ev_shi_ray02_004")
  if l_55_0 ~= nil then
    l_55_0.bEnabled = true
  end
  local l_55_1 = (Game.GetActor)("ev_shi_rayimpact01_000")
  if l_55_1 ~= nil then
    l_55_1.bEnabled = true
  end
end

l_0_3.LightningEntitiesEnable = l_0_4
l_0_3 = s080_shipyard
l_0_4 = function()
  -- function num : 0_55
  local l_56_0 = (Game.GetActor)("ev_shi_ray02_004")
  if l_56_0 ~= nil then
    l_56_0.bEnabled = false
  end
  local l_56_1 = (Game.GetActor)("ev_shi_rayimpact01_000")
  if l_56_1 ~= nil then
    l_56_1.bEnabled = false
  end
end

l_0_3.LightningEntitiesDisable = l_0_4

