-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: lua/s070_basesanc.lc.local 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC2: Confused about usage of register: R0 in 'UnsetPending'

s070_basesanc.main = function()
  -- function num : 0_0
  (s070_basesanc.PatrolRoutesGeneration)()
  ;
  (s070_basesanc.PatrolRoutesFinalNodesAssignation)()
  -- DECOMPILER ERROR at PC7: Confused about usage of register: R0 in 'UnsetPending'

  s070_basesanc.m_bSkipAquaOpening = false
end

-- DECOMPILER ERROR at PC5: Confused about usage of register: R0 in 'UnsetPending'

s070_basesanc.SetupDebugGameBlackboard = function()
  -- function num : 0_1
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPECIAL_ENERGY", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 399)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 399)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 38)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 38)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_SUPER_MISSILE", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_ICE_MISSILE", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_POWER_BOMB_MAX", "f", 0)
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
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_DIFFUSION_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_GRAPPLE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_PLASMA_BEAM", "f", 0)
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
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SONAR", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_METROIDNIZATION", "f", 0)
end

local l_0_0 = (Blackboard.GetProp)("GAME_PROGRESS", "QUARENTINE_OPENED")
local l_0_1 = false
local l_0_2 = "SP_Checkpoint_TwoChozoRobots"
-- DECOMPILER ERROR at PC17: Confused about usage of register: R3 in 'UnsetPending'

s070_basesanc.InitFromBlackboard = function()
  -- function num : 0_2 , upvalues : l_0_1, l_0_0
  (Game.ReinitPlayerFromBlackboard)()
  l_0_1 = (Scenario.ReadFromBlackboard)((Scenario.LUAPropIDs).SANC_POSTXRELEASE_APPLIED, false)
  l_0_0 = (Blackboard.GetProp)("GAME_PROGRESS", "QUARENTINE_OPENED")
  if l_0_0 == true then
    (s070_basesanc.Activate_Setup_PostXRelease)()
  end
  local l_3_0 = (Game.GetActor)("emmy_sanc_deactivated")
  if l_3_0 ~= nil then
    if (Scenario.ReadFromBlackboard)((Scenario.LUAPropIDs).SANC_EMMY_DEACTIVATED_ENABLED, false) == true then
      l_3_0.bEnabled = true
    else
      l_3_0.bEnabled = false
    end
  end
end

-- DECOMPILER ERROR at PC21: Confused about usage of register: R3 in 'UnsetPending'

s070_basesanc.Activate_Setup_PostXRelease = function()
  -- function num : 0_3 , upvalues : l_0_1
  if l_0_1 == false then
    (Game.PushSetup)("PostXRelease", true, true)
    ;
    (Scenario.WriteToBlackboard)((Scenario.LUAPropIDs).SANC_POSTXRELEASE_APPLIED, "b", true)
    l_0_1 = true
  end
end

local l_0_3 = s070_basesanc
local l_0_4 = {}
l_0_4.ShowDeath = true
l_0_4.GoToMainMenu = false
l_0_3.tGetOnDeathOverrides = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_4
  return s070_basesanc.tGetOnDeathOverrides
end

l_0_3.GetOnDeathOverrides = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function(l_6_0, l_6_1)
  -- function num : 0_5
  if l_6_1 ~= nil then
    print("OnEntityGenerated!!!!!!")
  end
end

l_0_3.OnEntityGenerated = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_6
  (Game.SetCollisionCameraLocked)("collision_camera_012_B", true)
  print("OnEnter_ChangeCamera_012_B")
end

l_0_3.OnEnter_ChangeCamera_012_B = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_7
  (Game.SetCollisionCameraLocked)("collision_camera_012_B", false)
  print("OnExit_ChangeCamera_012_B")
end

l_0_3.OnExit_ChangeCamera_012_B = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_8
  (Game.SetCollisionCameraLocked)("collision_camera_012_C", true)
  print("OnEnter_ChangeCamera_012_C")
end

l_0_3.OnEnter_ChangeCamera_012_C = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_9
  (Game.SetCollisionCameraLocked)("collision_camera_012_C", false)
  print("OnExit_ChangeCamera_012_C")
end

l_0_3.OnExit_ChangeCamera_012_C = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_10
  (Game.SetCollisionCameraLocked)("collision_camera_003_B", true)
  print("OnEnter_ChangeCamera_003_B")
end

l_0_3.OnEnter_ChangeCamera_003_B = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_11
  (Game.SetCollisionCameraLocked)("collision_camera_003_B", false)
  print("OnExit_ChangeCamera_003_B")
end

l_0_3.OnExit_ChangeCamera_003_B = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_12
  local l_13_0 = (Game.GetActor)("TG_ChangeCamera_024_B")
  l_13_0.bEnabled = false
  print("OnEnter_ChangeCamera_024_A")
  ;
  (Game.SetCollisionCameraLocked)("collision_camera_024_A", true)
end

l_0_3.OnEnter_ChangeCamera_024_A = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_13
  ((Game.GetActor)("TG_ChangeCamera_024_A")).bEnabled = true
end

l_0_3.OnEnter_ChangeCamera_024_A_Delayed = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_14
  (Game.SetCollisionCameraLocked)("collision_camera_024_A", false)
  print("OnExit_ChangeCamera_024_A")
  ;
  (Game.AddSF)(0, "s070_basesanc.OnEnter_ChangeCamera_024_B_Delayed", "")
end

l_0_3.OnExit_ChangeCamera_024_A = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_15
  local l_16_0 = (Game.GetActor)("TG_ChangeCamera_024_A")
  l_16_0.bEnabled = false
  ;
  (Game.SetCollisionCameraLocked)("collision_camera_024_B", true)
  print("OnEnter_ChangeCamera_024_B")
end

l_0_3.OnEnter_ChangeCamera_024_B = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_16
  ((Game.GetActor)("TG_ChangeCamera_024_B")).bEnabled = true
end

l_0_3.OnEnter_ChangeCamera_024_B_Delayed = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_17
  (Game.SetCollisionCameraLocked)("collision_camera_024_B", false)
  print("OnExit_ChangeCamera_024_B")
  ;
  (Game.AddSF)(0, "s070_basesanc.OnEnter_ChangeCamera_024_A_Delayed", "")
end

l_0_3.OnExit_ChangeCamera_024_B = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_18
  (Game.SetCollisionCameraLocked)("collision_camera_024_C", true)
end

l_0_3.OnEnter_ChangeCamera_024_C = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_19
  (Game.SetCollisionCameraLocked)("collision_camera_024_C", false)
end

l_0_3.OnExit_ChangeCamera_024_C = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_20
  (Game.SetCollisionCameraLocked)("collision_camera_030_B", true)
end

l_0_3.OnEnter_ChangeCamera_030_B = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_21
  (Game.SetCollisionCameraLocked)("collision_camera_030_B", false)
end

l_0_3.OnExit_ChangeCamera_030_B = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_22
  (Game.SetCollisionCameraLocked)("collision_camera_038_B", true)
end

l_0_3.OnEnter_ChangeCamera_038_B = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_23
  (Game.SetCollisionCameraLocked)("collision_camera_038_B", false)
end

l_0_3.OnExit_ChangeCamera_038_B = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_24
  local l_25_0 = {}
  for l_25_4 = 1, 26 do
    local l_25_5 = (string.format)("%02d", l_25_4)
    local l_25_6 = "#CAPTION_PROFESSOREVENT_PAGE_" .. l_25_5
    ;
    (table.insert)(l_25_0, l_25_6)
    if l_25_4 == 5 or l_25_4 == 11 then
      l_25_6 = l_25_6 .. "_B"
      ;
      (table.insert)(l_25_0, l_25_6)
    end
  end
  ;
  (GUI.AddDialogMissionLogEntry)(l_25_0)
end

l_0_3.AddProfessorDialogueToMissionLog = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_25
  if s070_basesanc.m_bSkipAquaOpening == false then
    local l_26_0 = (Game.GetActor)("cutsceneplayer_40b_part1")
    if l_26_0 ~= nil then
      local l_26_1 = (Game.GetCurrentCutsceneStr)()
      local l_26_2 = (((l_26_0.CUTSCENE):GetCutscene()).oDefinition).sId
      if l_26_1 ~= l_26_2 then
        (l_26_0.CUTSCENE):TryLaunchCutscene()
      end
    end
  end
  do
    ;
    (Game.SetAquaGateOpeningEventEndLUACallback)("s070_basesanc.LaunchCutscene40_Part2b")
  end
end

l_0_3.OnAfter_Cutscene_40_Part1 = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_26
  -- DECOMPILER ERROR at PC1: Confused about usage of register: R0 in 'UnsetPending'

  s070_basesanc.m_bSkipAquaOpening = true
  local l_27_0 = (Game.GetActor)("cutsceneplayer_40b_part1")
  if l_27_0 ~= nil then
    (l_27_0.CUTSCENE):LaunchCutsceneImmediate()
    ;
    (l_27_0.CUTSCENE):SkipCutscene(true)
  end
end

l_0_3.OnSkip_Cutscene_40_Part1 = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_27
  (Game.LaunchAquaGateOpening)(s070_basesanc.m_bSkipAquaOpening)
end

l_0_3.OnAfter_Cutscene_40_Part2a = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_28
  -- DECOMPILER ERROR at PC1: Confused about usage of register: R0 in 'UnsetPending'

  s070_basesanc.m_bSkipAquaOpening = true
end

l_0_3.OnSkip_Cutscene_40_Part2a = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function(l_30_0)
  -- function num : 0_29
  local l_30_1 = (Game.GetActor)("cutsceneplayer_40b_part2")
  if l_30_1 ~= nil then
    if l_30_0 == true then
      (Game.SetSkippingQueuedCutscenes)(true)
      local l_30_2 = (Game.GetActor)("PRP_professor_death")
      if l_30_2 ~= nil then
        l_30_2:SetVisible(true)
      end
    end
    do
      ;
      ((l_30_1.CUTSCENE):GetCutscene()):SetFadeInOnStart(false)
      ;
      (l_30_1.CUTSCENE):LaunchCutsceneImmediate()
      if l_30_0 == true then
        (l_30_1.CUTSCENE):SkipCutscene(true)
      end
    end
  end
end

l_0_3.LaunchCutscene40_Part2b = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_30
  (Game.SpawnEntity)("SP_ChozoRobotSoldier")
  local l_31_0 = (Game.GetActor)("CAM_ChozoRobotSoldier")
  if l_31_0 ~= nil then
    ((l_31_0.LOGICCAMERA):GetLogicCamera()).fMinExtraZDist = 2630
  end
end

l_0_3.OnBefore_Cutscene_40_Part2bStarted = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_31
  (GUI.AddEmmyMissionLogEntry)("#MLOG_ENCOUNTER_EMMY_SANC")
  ;
  (s070_basesanc.AddProfessorDialogueToMissionLog)()
end

l_0_3.AddEmmyProfessorToMissionLog = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_32
  (s070_basesanc.Professor_MET)()
  -- DECOMPILER ERROR at PC4: Confused about usage of register: R0 in 'UnsetPending'

  s070_basesanc.m_bSkipAquaOpening = false
  ;
  (Game.AddSF)(0.5, "s070_basesanc.Delayed_RestoreRobotSoldierLogicCameraMinZ", "")
end

l_0_3.OnAfter_Cutscene_40_Part2b = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_33
  local l_34_0 = (Game.GetActor)("CAM_ChozoRobotSoldier")
  if l_34_0 ~= nil then
    ((l_34_0.LOGICCAMERA):GetLogicCamera()).fMinExtraZDist = 1630
  end
end

l_0_3.Delayed_RestoreRobotSoldierLogicCameraMinZ = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function(l_35_0)
  -- function num : 0_34
  if l_35_0 == "SP_ChozoRobotSoldier_chozorobotsoldier" then
    (Game.AddSF)(2.5, "s070_basesanc.Delayed_Professor_CUT", "")
    local l_35_1 = (Game.GetActor)("doorpowerpower_002")
    if l_35_1 ~= nil then
      (l_35_1.LIFE):LockDoor()
    end
    local l_35_2 = (Game.GetActor)("emmy_sanc_deactivated")
    if l_35_2 ~= nil then
      l_35_2.bEnabled = true
      ;
      (Scenario.WriteToBlackboard)((Scenario.LUAPropIDs).SANC_EMMY_DEACTIVATED_ENABLED, "b", true)
      l_35_2:SetVisible(true)
    end
  end
end

l_0_3.OnBossDeath = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_35
  local l_36_0 = (Game.GetActor)("cutsceneplayer_40c")
  if l_36_0 ~= nil then
    (l_36_0.CUTSCENE):LaunchCutscene()
  end
  local l_36_1 = (Game.GetActor)("doorpowerpower_002")
  if l_36_1 ~= nil then
    (l_36_1.LIFE):UnLockDoor()
  end
  ;
  (Game.RemoveBossCameraCtrl)()
end

l_0_3.Delayed_Professor_CUT = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_36
end

l_0_3.OnAfter_Cutscene_40_Part3 = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_37
  (Blackboard.SetProp)("GAME_PROGRESS", "PROFESSOR_MET", "b", true)
end

l_0_3.Professor_MET = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_38
end

l_0_3.OnBeforeGenerate = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function(l_40_0, l_40_1)
  -- function num : 0_39
end

l_0_3.OnEmmyBaseSancGenerated = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function(l_41_0, l_41_1)
  -- function num : 0_40
  -- DECOMPILER ERROR at PC1: Confused about usage of register: R2 in 'UnsetPending'

  CurrentScenario.oEmmyEntity = l_41_1
  ;
  (AI.SetWorldGraphToEmmy)("LE_WorldGraph", l_41_1.sName)
  ;
  (s070_basesanc.ChangePatrolEmmy)("PATROLROUTE_01")
  print("EMMY: Generation OK. Starting patrol: " .. (l_41_1.AI).sCurrentPatrol)
  local l_41_2 = (Blackboard.GetProp)("GAME_PROGRESS", "QUARENTINE_OPENED")
  if l_41_2 == true and ((CurrentScenario.oEmmyEntity).AI).bTargetInsideEmmyZone then
    print("QUARANTINE IS OPENED")
  else
    -- DECOMPILER ERROR at PC36: Confused about usage of register: R3 in 'UnsetPending'

    ;
    (CurrentScenario.oEmmyEntity).bEnabled = false
    print("QUARANTINE IS NOT OPENED")
  end
end

l_0_3.OnCentralUnitEmmyReady = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_41
  (Game.PushSetup)("PostEmmy", true, true)
end

l_0_3.OnEmmySancDead = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_42
  ((Game.GetActor)("TG_EnablePostEmmyEnemies")).bEnabled = true
  local l_43_0 = (Game.GetActor)("centralunitmagmacontroller")
  if l_43_0 ~= nil then
    (l_43_0.CENTRALUNIT):OnEmmyAbilityObtainedFadeOutCompleted()
  end
end

l_0_3.OnEmmyAbilityObtainedFadeOutCompleted = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_43
  (GUI.ShowMessage)("#PLACEHOLDER_WAVEBEAM_OBTAINED", true, "")
  local l_44_0 = (Game.GetPlayer)()
  if l_44_0 ~= nil then
    (l_44_0.INPUT):IgnoreInput(false, false, "OnEmmySancDead")
  end
end

l_0_3.DelayedOnEmmySancDead = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_44
end

l_0_3.OnEmmyDeathMessageSkipped = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_45
  local l_46_0 = (Game.GetActor)("centralunitmagmacontroller")
  if l_46_0 ~= nil then
    (l_46_0.CENTRALUNIT):UnlockDoors()
  else
    print("CENTRAL_UNIT: centralunitmagmacontroller not found")
  end
end

l_0_3.OnUnlockEmmyDoors = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_46
  local l_47_0 = (Game.GetActor)("SP_Emmy")
  if l_47_0 ~= nil then
    (l_47_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_01")
    ;
    (l_47_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_02")
    ;
    (l_47_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_03")
    ;
    (l_47_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_05")
    ;
    (l_47_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_06")
    ;
    (l_47_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_07")
    ;
    (l_47_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_08")
    ;
    (l_47_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_10")
    ;
    (l_47_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_11")
  end
  ;
  (AI.AddPatrol)("LE_WorldGraph", "PATROLROUTE_01", "LS_PATROLEMMY_01")
  ;
  (AI.AddPatrol)("LE_WorldGraph", "PATROLROUTE_02", "LS_PATROLEMMY_02")
  ;
  (AI.AddPatrol)("LE_WorldGraph", "PATROLROUTE_03", "LS_PATROLEMMY_03")
  ;
  (AI.AddPatrol)("LE_WorldGraph", "PATROLROUTE_05", "LS_PATROLEMMY_05")
  ;
  (AI.AddPatrol)("LE_WorldGraph", "PATROLROUTE_06", "LS_PATROLEMMY_06")
  ;
  (AI.AddPatrol)("LE_WorldGraph", "PATROLROUTE_07", "LS_PATROLEMMY_07")
  ;
  (AI.AddPatrol)("LE_WorldGraph", "PATROLROUTE_08", "LS_PATROLEMMY_08")
  ;
  (AI.AddPatrol)("LE_WorldGraph", "PATROLROUTE_10", "LS_PATROLEMMY_10")
  ;
  (AI.AddPatrol)("LE_WorldGraph", "PATROLROUTE_11", "LS_PATROLEMMY_11")
  print("s070_basesanc.PatrolRoutesGeneration(): Patrol designation OK")
end

l_0_3.PatrolRoutesGeneration = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_47
  local l_48_0 = AI.SetPatrolFinalNode
  local l_48_1 = "LE_WorldGraph"
  local l_48_2 = "PATROLROUTE_01"
  local l_48_3 = {}
  -- DECOMPILER ERROR at PC6: No list found for R3 , SetList fails

  -- DECOMPILER ERROR at PC7: Overwrote pending register: R4 in 'AssignReg'

  l_48_0(l_48_1, l_48_2, l_48_3, "WorldGraph_1")
  l_48_0 = AI
  l_48_0 = l_48_0.SetPatrolFinalNode
  l_48_1 = "LE_WorldGraph"
  l_48_2 = "PATROLROUTE_01"
  l_48_0(l_48_1, l_48_2, l_48_3, 1)
  l_48_3 = {"WorldGraph_4"}
  l_48_0 = AI
  l_48_0 = l_48_0.SetPatrolFinalNode
  l_48_1 = "LE_WorldGraph"
  l_48_2 = "PATROLROUTE_02"
  l_48_0(l_48_1, l_48_2, l_48_3, 0)
  l_48_3 = {"WorldGraph_1"}
  l_48_0 = AI
  l_48_0 = l_48_0.SetPatrolFinalNode
  l_48_1 = "LE_WorldGraph"
  l_48_2 = "PATROLROUTE_02"
  l_48_0(l_48_1, l_48_2, l_48_3, 1)
  l_48_3 = {"WorldGraph_6"}
  l_48_0 = AI
  l_48_0 = l_48_0.SetPatrolFinalNode
  l_48_1 = "LE_WorldGraph"
  l_48_2 = "PATROLROUTE_03"
  l_48_0(l_48_1, l_48_2, l_48_3, 0)
  l_48_3 = {"WorldGraph_8", "WorldGraph_10"}
  l_48_0 = AI
  l_48_0 = l_48_0.SetPatrolFinalNode
  l_48_1 = "LE_WorldGraph"
  l_48_2 = "PATROLROUTE_03"
  l_48_0(l_48_1, l_48_2, l_48_3, 1)
  l_48_3 = {"WorldGraph_6", "WorldGraph_7"}
  l_48_0 = AI
  l_48_0 = l_48_0.SetPatrolFinalNode
  l_48_1 = "LE_WorldGraph"
  l_48_2 = "PATROLROUTE_05"
  l_48_0(l_48_1, l_48_2, l_48_3, 0)
  l_48_3 = {"WorldGraph_12"}
  l_48_0 = AI
  l_48_0 = l_48_0.SetPatrolFinalNode
  l_48_1 = "LE_WorldGraph"
  l_48_2 = "PATROLROUTE_05"
  l_48_0(l_48_1, l_48_2, l_48_3, 1)
  l_48_3 = {"WorldGraph_20"}
  l_48_0 = AI
  l_48_0 = l_48_0.SetPatrolFinalNode
  l_48_1 = "LE_WorldGraph"
  l_48_2 = "PATROLROUTE_06"
  l_48_0(l_48_1, l_48_2, l_48_3, 0)
  l_48_3 = {"WorldGraph_12"}
  l_48_0 = AI
  l_48_0 = l_48_0.SetPatrolFinalNode
  l_48_1 = "LE_WorldGraph"
  l_48_2 = "PATROLROUTE_06"
  l_48_0(l_48_1, l_48_2, l_48_3, 1)
  l_48_3 = {"WorldGraph_16"}
  l_48_0 = AI
  l_48_0 = l_48_0.SetPatrolFinalNode
  l_48_1 = "LE_WorldGraph"
  l_48_2 = "PATROLROUTE_07"
  l_48_0(l_48_1, l_48_2, l_48_3, 0)
  l_48_3 = {"WorldGraph_18"}
  l_48_0 = AI
  l_48_0 = l_48_0.SetPatrolFinalNode
  l_48_1 = "LE_WorldGraph"
  l_48_2 = "PATROLROUTE_07"
  l_48_0(l_48_1, l_48_2, l_48_3, 1)
  l_48_3 = {"WorldGraph_23"}
  l_48_0 = AI
  l_48_0 = l_48_0.SetPatrolFinalNode
  l_48_1 = "LE_WorldGraph"
  l_48_2 = "PATROLROUTE_07"
  l_48_0(l_48_1, l_48_2, l_48_3, 1)
  l_48_3 = {"WorldGraph_27", "WorldGraph_28"}
  l_48_0 = AI
  l_48_0 = l_48_0.SetPatrolFinalNode
  l_48_1 = "LE_WorldGraph"
  l_48_2 = "PATROLROUTE_07"
  l_48_0(l_48_1, l_48_2, l_48_3, 2)
  l_48_3 = {"WorldGraph_29"}
  l_48_0 = AI
  l_48_0 = l_48_0.SetPatrolFinalNode
  l_48_1 = "LE_WorldGraph"
  l_48_2 = "PATROLROUTE_08"
  l_48_0(l_48_1, l_48_2, l_48_3, 0)
  l_48_3 = {"WorldGraph_31"}
  l_48_0 = AI
  l_48_0 = l_48_0.SetPatrolFinalNode
  l_48_1 = "LE_WorldGraph"
  l_48_2 = "PATROLROUTE_08"
  l_48_0(l_48_1, l_48_2, l_48_3, 1)
  l_48_3 = {"WorldGraph_25"}
  l_48_0 = AI
  l_48_0 = l_48_0.SetPatrolFinalNode
  l_48_1 = "LE_WorldGraph"
  l_48_2 = "PATROLROUTE_08"
  l_48_0(l_48_1, l_48_2, l_48_3, 1)
  l_48_3 = {"WorldGraph_36"}
  l_48_0 = AI
  l_48_0 = l_48_0.SetPatrolFinalNode
  l_48_1 = "LE_WorldGraph"
  l_48_2 = "PATROLROUTE_10"
  l_48_0(l_48_1, l_48_2, l_48_3, 0)
  l_48_3 = {"WorldGraph_40"}
  l_48_0 = AI
  l_48_0 = l_48_0.SetPatrolFinalNode
  l_48_1 = "LE_WorldGraph"
  l_48_2 = "PATROLROUTE_10"
  l_48_0(l_48_1, l_48_2, l_48_3, 1)
  l_48_3 = {"WorldGraph_44"}
  l_48_0 = AI
  l_48_0 = l_48_0.SetPatrolFinalNode
  l_48_1 = "LE_WorldGraph"
  l_48_2 = "PATROLROUTE_11"
  l_48_0(l_48_1, l_48_2, l_48_3, 0)
  l_48_3 = {"WorldGraph_46", "WorldGraph_78", "WorldGraph_51"}
  l_48_0 = AI
  l_48_0 = l_48_0.SetPatrolFinalNode
  l_48_1 = "LE_WorldGraph"
  l_48_2 = "PATROLROUTE_11"
  l_48_0(l_48_1, l_48_2, l_48_3, 1)
  l_48_3 = {"WorldGraph_49"}
  l_48_0 = print
  l_48_1 = "s070_basesanc.PatrolRoutesFinalNodesAssignation(): Final Nodes Assignation OK"
  l_48_0(l_48_1)
end

l_0_3.PatrolRoutesFinalNodesAssignation = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function(l_49_0)
  -- function num : 0_48
  -- DECOMPILER ERROR at PC10: Confused about usage of register: R1 in 'UnsetPending'

  if (Scenario.CheckEmmyAlive)(CurrentScenario.oEmmyEntity) then
    ((CurrentScenario.oEmmyEntity).AI).sCurrentPatrol = l_49_0
    print("EMMY: Assigned route " .. l_49_0)
  else
    print("EMMY: Not found, route " .. l_49_0 .. " not assigned")
  end
end

l_0_3.ChangePatrolEmmy = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function(l_50_0, l_50_1)
  -- function num : 0_49
  local l_50_2 = (string.gsub)(l_50_0.sName, "TG_PATROLEMMYACTIVATOR_", "PATROLROUTE_")
  ;
  (s070_basesanc.ChangePatrolEmmy)(l_50_2)
end

l_0_3.OnEnter_PatrolEmmyActivator = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function(l_51_0, l_51_1)
  -- function num : 0_50
end

l_0_3.OnExit_PatrolEmmyActivator = l_0_4
l_0_3 = s070_basesanc
l_0_3.tEmmyDoor = nil
l_0_3 = s070_basesanc
l_0_4 = function(l_52_0, l_52_1, l_52_2)
  -- function num : 0_51
  local l_52_3 = (Blackboard.GetProp)("GAME_PROGRESS", "QUARENTINE_OPENED")
  if l_52_3 == true and (Scenario.CheckEmmyAlive)(CurrentScenario.oEmmyEntity) then
    local l_52_4 = (Game.GetActor)("emmy_sanc_deactivated")
    if l_52_4 ~= nil then
      l_52_4.bEnabled = false
      ;
      (Scenario.WriteToBlackboard)((Scenario.LUAPropIDs).SANC_EMMY_DEACTIVATED_ENABLED, "b", false)
    end
    -- DECOMPILER ERROR at PC41: Unhandled construct in 'MakeBoolean' P1

    if l_52_1 and CurrentScenario.oEmmyEntity ~= nil then
      if l_52_2 then
        sTeleportLandmark = (s070_basesanc.HardEmmyRelocationDoor)(l_52_0)
      else
        sTeleportLandmark = (s070_basesanc.EmmyRelocationDoor)(l_52_0)
      end
      if sTeleportLandmark ~= nil then
        local l_52_5 = (Game.GetActor)(sTeleportLandmark)
        print(l_52_5.sName)
        -- DECOMPILER ERROR at PC60: Confused about usage of register: R6 in 'UnsetPending'

        ;
        (CurrentScenario.oEmmyEntity).bEnabled = false
        -- DECOMPILER ERROR at PC64: Confused about usage of register: R6 in 'UnsetPending'

        ;
        (CurrentScenario.oEmmyEntity).vPos = l_52_5.vPos
        -- DECOMPILER ERROR at PC68: Confused about usage of register: R6 in 'UnsetPending'

        ;
        (CurrentScenario.oEmmyEntity).vAng = l_52_5.vAng
        -- DECOMPILER ERROR at PC71: Confused about usage of register: R6 in 'UnsetPending'

        ;
        (CurrentScenario.oEmmyEntity).bEnabled = true
      end
    end
  end
  do
    do
      -- DECOMPILER ERROR at PC75: Confused about usage of register: R5 in 'UnsetPending'

      ;
      (CurrentScenario.oEmmyEntity).bEnabled = false
      local l_52_6 = (Game.GetActor)("TG_EmmyZipline004Behavior")
      if l_52_6 ~= nil then
        l_52_6.bEnabled = false
      end
    end
  end
end

l_0_3.OnWalkThroughEmmyDoor = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function(l_53_0)
  -- function num : 0_52
  print("Door: Hard " .. l_53_0.sName)
  if l_53_0.sName == "dooremmy_002" then
    local l_53_1 = s070_basesanc
    local l_53_2 = {}
    -- DECOMPILER ERROR at PC11: No list found for R2 , SetList fails

  else
    do
      if l_53_0.sName == "dooremmy_003" then
        local l_53_3 = s070_basesanc
        local l_53_4 = {}
        -- DECOMPILER ERROR at PC19: Overwrote pending register: R3 in 'AssignReg'

        -- DECOMPILER ERROR at PC20: No list found for R2 , SetList fails

      else
        do
          if l_53_0.sName == "dooremmy_004" then
            local l_53_5 = s070_basesanc
            local l_53_6 = {}
            -- DECOMPILER ERROR at PC28: Overwrote pending register: R3 in 'AssignReg'

            -- DECOMPILER ERROR at PC29: No list found for R2 , SetList fails

          else
            do
              if l_53_0.sName == "dooremmy_005" then
                local l_53_7 = s070_basesanc
                local l_53_8 = {}
                -- DECOMPILER ERROR at PC37: Overwrote pending register: R3 in 'AssignReg'

                -- DECOMPILER ERROR at PC38: No list found for R2 , SetList fails

              else
                do
                  if l_53_0.sName == "dooremmy_006" then
                    local l_53_9 = s070_basesanc
                    local l_53_10 = {}
                    -- DECOMPILER ERROR at PC46: Overwrote pending register: R3 in 'AssignReg'

                    -- DECOMPILER ERROR at PC47: No list found for R2 , SetList fails

                  else
                    do
                      if l_53_0.sName == "dooremmy_008" then
                        local l_53_11 = s070_basesanc
                        local l_53_12 = {}
                        -- DECOMPILER ERROR at PC55: Overwrote pending register: R3 in 'AssignReg'

                        -- DECOMPILER ERROR at PC57: No list found for R2 , SetList fails

                      else
                        do
                          -- DECOMPILER ERROR at PC61: Confused about usage of register: R1 in 'UnsetPending'

                          -- DECOMPILER ERROR at PC70: Overwrote pending register: R3 in 'AssignReg'

                          -- DECOMPILER ERROR at PC72: Overwrote pending register: R4 in 'AssignReg'

                          if s070_basesanc.tEmmyDoor ~= nil then
                            return (s070_basesanc.tEmmyDoor)[(math.random)((("LM_EmmyEntrancePoint_005").maxn)(("LM_EmmyEntrancePoint_014").tEmmyDoor))]
                          else
                            return nil
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end

l_0_3.HardEmmyRelocationDoor = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function(l_54_0)
  -- function num : 0_53
  if l_54_0.sName == "dooremmy_002" then
    local l_54_1 = s070_basesanc
    local l_54_2 = {}
    -- DECOMPILER ERROR at PC7: No list found for R2 , SetList fails

  else
    do
      if l_54_0.sName == "dooremmy_003" then
        local l_54_3 = s070_basesanc
        local l_54_4 = {}
        -- DECOMPILER ERROR at PC15: Overwrote pending register: R3 in 'AssignReg'

        -- DECOMPILER ERROR at PC16: Overwrote pending register: R4 in 'AssignReg'

        -- DECOMPILER ERROR at PC17: No list found for R2 , SetList fails

      else
        do
          if l_54_0.sName == "dooremmy_004" then
            local l_54_5 = s070_basesanc
            local l_54_6 = {}
            -- DECOMPILER ERROR at PC25: Overwrote pending register: R3 in 'AssignReg'

            -- DECOMPILER ERROR at PC26: Overwrote pending register: R4 in 'AssignReg'

            -- DECOMPILER ERROR at PC27: No list found for R2 , SetList fails

          else
            do
              if l_54_0.sName == "dooremmy_005" then
                local l_54_7 = s070_basesanc
                local l_54_8 = {}
                -- DECOMPILER ERROR at PC35: Overwrote pending register: R3 in 'AssignReg'

                -- DECOMPILER ERROR at PC36: Overwrote pending register: R4 in 'AssignReg'

                -- DECOMPILER ERROR at PC38: No list found for R2 , SetList fails

              else
                do
                  if l_54_0.sName == "dooremmy_006" then
                    local l_54_9 = s070_basesanc
                    local l_54_10 = {}
                    -- DECOMPILER ERROR at PC46: Overwrote pending register: R3 in 'AssignReg'

                    -- DECOMPILER ERROR at PC47: Overwrote pending register: R4 in 'AssignReg'

                    -- DECOMPILER ERROR at PC48: Overwrote pending register: R5 in 'AssignReg'

                    -- DECOMPILER ERROR at PC49: No list found for R2 , SetList fails

                  else
                    do
                      if l_54_0.sName == "dooremmy_008" then
                        local l_54_11 = s070_basesanc
                        local l_54_12 = {}
                        -- DECOMPILER ERROR at PC57: Overwrote pending register: R3 in 'AssignReg'

                        -- DECOMPILER ERROR at PC58: Overwrote pending register: R4 in 'AssignReg'

                        -- DECOMPILER ERROR at PC59: No list found for R2 , SetList fails

                      else
                        do
                          -- DECOMPILER ERROR at PC63: Confused about usage of register: R1 in 'UnsetPending'

                          -- DECOMPILER ERROR at PC72: Overwrote pending register: R3 in 'AssignReg'

                          -- DECOMPILER ERROR at PC74: Overwrote pending register: R4 in 'AssignReg'

                          if s070_basesanc.tEmmyDoor ~= nil then
                            return (s070_basesanc.tEmmyDoor)[(math.random)((("LM_EmmyEntrancePoint_003").maxn)(("LM_EmmyEntrancePoint_005").tEmmyDoor))]
                          else
                            return nil
                          end
                          -- WARNING: undefined locals caused missing assignments!
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end

l_0_3.EmmyRelocationDoor = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_54
  if (Scenario.CheckEmmyAlive)(CurrentScenario.oEmmyEntity) and CurrentScenario.oEmmyEntity ~= nil then
    local l_55_0 = (Game.GetActor)("LM_EmmyLocation_Phase2")
    -- DECOMPILER ERROR at PC17: Confused about usage of register: R1 in 'UnsetPending'

    ;
    (CurrentScenario.oEmmyEntity).bEnabled = false
    -- DECOMPILER ERROR at PC21: Confused about usage of register: R1 in 'UnsetPending'

    ;
    (CurrentScenario.oEmmyEntity).vPos = l_55_0.vPos
    -- DECOMPILER ERROR at PC25: Confused about usage of register: R1 in 'UnsetPending'

    ;
    (CurrentScenario.oEmmyEntity).vAng = l_55_0.vAng
    -- DECOMPILER ERROR at PC28: Confused about usage of register: R1 in 'UnsetPending'

    ;
    (CurrentScenario.oEmmyEntity).bEnabled = true
  end
end

l_0_3.OnEnter_EmmyRelocated_Phase2 = l_0_4
l_0_3 = s070_basesanc
l_0_3.bFootStepPlatform000Opened = true
l_0_3 = s070_basesanc
l_0_3.bFootStepPlatform001Opened = true
l_0_3 = s070_basesanc
l_0_4 = function(l_56_0)
  -- function num : 0_55
  -- DECOMPILER ERROR at PC14: Confused about usage of register: R2 in 'UnsetPending'

  -- DECOMPILER ERROR at PC20: Confused about usage of register: R2 in 'UnsetPending'

  if s070_basesanc.bFootStepPlatform000Opened == false and s070_basesanc.bFootStepPlatform001Opened == false == true and ((l_56_0.sName == "footstepplatform_000" and l_56_0.sName ~= "footstepplatform_001") or s070_basesanc.bFootStepPlatform000Opened == false) and s070_basesanc.bFootStepPlatform001Opened == false == false and CurrentScenario.oEmmyEntity ~= nil and (Scenario.CheckEmmyAlive)(CurrentScenario.oEmmyEntity) then
    ((CurrentScenario.oEmmyEntity).AI):StopSancShutterPerceptionModifier()
  end
  -- DECOMPILER ERROR: 6 unprocessed JMP targets
end

l_0_3.OnShutterOpened = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function(l_57_0)
  -- function num : 0_56
  -- DECOMPILER ERROR at PC4: Confused about usage of register: R1 in 'UnsetPending'

  if l_57_0.sName == "footstepplatform_000" then
    s070_basesanc.bFootStepPlatform000Opened = false
  else
    -- DECOMPILER ERROR at PC10: Confused about usage of register: R1 in 'UnsetPending'

    if l_57_0.sName == "footstepplatform_001" then
      s070_basesanc.bFootStepPlatform001Opened = false
    end
  end
  if s070_basesanc.bFootStepPlatform000Opened == false and s070_basesanc.bFootStepPlatform001Opened == false and CurrentScenario.oEmmyEntity ~= nil and (Scenario.CheckEmmyAlive)(CurrentScenario.oEmmyEntity) then
    ((CurrentScenario.oEmmyEntity).AI):StartSancShutterPerceptionModifier("LS_EmmyTrap", "LM_EmmyTrap")
  end
  -- DECOMPILER ERROR: 2 unprocessed JMP targets
end

l_0_3.OnShutterClosed = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_57
  local l_58_0 = (Game.GetActor)("TG_EmmyZipline004Behavior")
  if l_58_0 ~= nil then
    l_58_0.bEnabled = true
  end
end

l_0_3.OnEnterEmmyZipline004Activator = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_58
  -- DECOMPILER ERROR at PC10: Confused about usage of register: R0 in 'UnsetPending'

  if (Scenario.CheckEmmyAlive)(CurrentScenario.oEmmyEntity) then
    ((CurrentScenario.oEmmyEntity).AI).bZipLine004Behavior = true
  end
end

l_0_3.OnEnterEmmyZipline004Behavior = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_59
  -- DECOMPILER ERROR at PC10: Confused about usage of register: R0 in 'UnsetPending'

  if (Scenario.CheckEmmyAlive)(CurrentScenario.oEmmyEntity) then
    ((CurrentScenario.oEmmyEntity).AI).bZipLine004Behavior = false
  end
end

l_0_3.OnExitEmmyZipline004Behavior = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_60 , upvalues : l_0_2
  (Game.SaveSnapshotToCheckpoint)("Checkpoint_Pre_ChozoRobots", "Checkpoint_Pre_ChozoRobots", l_0_2, true)
  print("guardo snapshot")
end

l_0_3.RobotSnapshotToCheckpoint = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_61 , upvalues : l_0_2
  l_0_2 = "SP_Checkpoint_TwoChozoRobots"
  print("actualizo startpoint:" .. l_0_2)
end

l_0_3.OnEnter_SnapshotRobots_BottomRight = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_62 , upvalues : l_0_2
  l_0_2 = "SP_Checkpoint_TwoChozoRobots_TopRight"
  print("actualizo startpoint:" .. l_0_2)
end

l_0_3.OnEnter_SnapshotRobots_TopRight = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_63 , upvalues : l_0_2
  l_0_2 = "SP_Checkpoint_TwoChozoRobots_BottomLeft"
  print("actualizo startpoint:" .. l_0_2)
end

l_0_3.OnEnter_SnapshotRobots_BottomLeft = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_64 , upvalues : l_0_2
  l_0_2 = "SP_Checkpoint_TwoChozoRobots_TopLeft"
  print("actualizo startpoint:" .. l_0_2)
end

l_0_3.OnEnter_SnapshotRobots_TopLeft = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_65
  local l_66_0 = (Blackboard.GetProp)("PLAYER_INVENTORY", "ITEM_MULTILOCKON")
  if l_66_0 ~= nil and l_66_0 > 0 then
    local l_66_1 = (Game.GetActor)("SG_2ChozoRobots")
    if l_66_1 ~= nil then
      print((l_66_1.SPAWNGROUP).iNumDeaths)
      if (l_66_1.SPAWNGROUP).iNumDeaths > 1 then
        (Game.PopSetup)("Post2ChozoRobots", true, true)
      else
        ;
        (Game.PushSetup)("2ChozoRobots", true, true)
      end
    end
  end
end

l_0_3.CheckChozoRobots_State = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function(l_67_0, l_67_1)
  -- function num : 0_66
  local l_67_2 = (Game.GetActor)("doorshutter_000")
  local l_67_3 = (Game.GetActor)("doorshutter_001")
  local l_67_4 = (Game.GetActor)("doorshutter_002")
  local l_67_5 = (Game.GetActor)("doorshutter_003")
  if l_67_2 ~= nil then
    (l_67_2.LIFE):LockDoor()
  end
  if l_67_3 ~= nil then
    (l_67_3.LIFE):LockDoor()
  end
  if l_67_4 ~= nil then
    (l_67_4.LIFE):LockDoor()
  end
  if l_67_5 ~= nil then
    (l_67_5.LIFE):LockDoor()
  end
  l_67_0.bEnabled = false
end

l_0_3.CloseShutter = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function(l_68_0, l_68_1)
  -- function num : 0_67
  local l_68_2 = (Game.GetActor)("SG_2ChozoRobots")
  if l_68_2 ~= nil then
    (l_68_2.SPAWNGROUP):EnableSpawnGroup()
  end
  l_68_0.bEnabled = false
end

l_0_3.OnEnter_PresentationCRS = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_68
  local l_69_0 = (Game.GetActor)("doorshutter_000")
  local l_69_1 = (Game.GetActor)("doorshutter_001")
  local l_69_2 = (Game.GetActor)("doorshutter_002")
  local l_69_3 = (Game.GetActor)("doorshutter_003")
  if l_69_0 ~= nil then
    (l_69_0.LIFE):UnLockDoor()
  end
  if l_69_1 ~= nil then
    (l_69_1.LIFE):UnLockDoor()
  end
  if l_69_2 ~= nil then
    (l_69_2.LIFE):UnLockDoor()
  end
  if l_69_3 ~= nil then
    (l_69_3.LIFE):UnLockDoor()
  end
end

l_0_3.OpenShutter = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_69
  local l_70_0 = (Game.GetActor)("SP_ChozoRobotSoldier_000_chozorobotsoldier")
  if l_70_0 ~= nil then
    (s070_basesanc.CRS_EvaluatingDirection)(l_70_0)
  end
end

l_0_3.CRS_DetectingDirection = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_70
  local l_71_0 = (Game.GetActor)("SP_ChozoRobotSoldier_001_chozorobotsoldier")
  if l_71_0 ~= nil then
    (s070_basesanc.CRS_EvaluatingDirection)(l_71_0)
  end
end

l_0_3.CRS_DetectingDirection_B = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function(l_72_0)
  -- function num : 0_71
  print("----- DETECTING DIRECTION -----")
  if l_72_0 ~= nil then
    local l_72_1 = (Game.GetPlayer)()
    local l_72_2 = V3D(-1, 0, 0)
    if l_72_1 ~= nil then
      l_72_2 = l_72_1.vPos - l_72_0.vPos
    end
    if l_72_2.x > 0 then
      print("----- TURN RIGHT -----")
      ;
      (l_72_0.ANIMATION):SetAction("spawn_front_turn_right", true)
      l_72_2 = V3D(1, 0, 0)
    else
      print("----- TURN LEFT -----")
      ;
      (l_72_0.ANIMATION):SetAction("spawn_front_turn_left", true)
      l_72_2 = V3D(-1, 0, 0)
    end
  end
end

l_0_3.CRS_EvaluatingDirection = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_72
  local l_73_0 = (Game.GetActor)("accesspoint_000")
  local l_73_1 = (Blackboard.GetProp)("GAME_PROGRESS", "ADAMDIALOGUE")
  if l_73_0 ~= nil then
    if l_73_1 == "DIAG_ADAM_FOREST_2" then
      (l_73_0.USABLE):ActiveDialogue("DIAG_ADAM_SANC_1")
      ;
      (Blackboard.SetProp)("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_SANC_1")
    else
      if l_73_1 == "DIAG_ADAM_CAVE_4" then
        local l_73_2 = (Blackboard.GetProp)("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK")
        if l_73_2 ~= nil and l_73_2 > 0 then
          (l_73_0.USABLE):ActiveDialogue("DIAG_ADAM_AQUA_3")
          ;
          (Blackboard.SetProp)("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_AQUA_3")
        end
      else
        do
          local l_73_3 = (Blackboard.GetProp)("s070_basesanc", "accesspoint_000:USABLE:Used")
          if l_73_3 ~= true then
            (l_73_0.USABLE):ActiveDialogue("")
          end
        end
      end
    end
  end
end

l_0_3.OnEnter_AP_08 = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function(l_74_0, l_74_1, l_74_2, l_74_3)
  -- function num : 0_73
  (Scenario.SubAreaChangeRequest)(l_74_0, l_74_1, l_74_2, l_74_3)
end

l_0_3.SubAreaChangeRequest = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function(l_75_0, l_75_1, l_75_2, l_75_3, l_75_4)
  -- function num : 0_74
  local l_75_5 = (Game.GetActor)("SG_2ChozoRobots")
  if l_75_0 == "collision_camera_005" and l_75_1 == "Default" then
    (Game.PushSetup)("PostChozoRobotSoldier_Arena", true, true)
  end
  if l_75_2 == "collision_camera_005" and l_75_3 == "Default" then
    (Game.PushSetup)("PostChozoRobotSoldier", true, true)
  end
  if l_75_0 == "collision_camera_027" and l_75_1 == "PostSuperQuetzoaDead" then
    (Game.PushSetup)("PostSuperQuetzoaArena", true, true)
  end
  if l_75_0 == "collision_camera_017" and l_75_1 == "2ChozoRobots" and l_75_5 ~= nil then
    print((l_75_5.SPAWNGROUP).iNumDeaths)
    if (l_75_5.SPAWNGROUP).iNumDeaths > 1 then
      (Game.PopSetup)("2ChozoRobots", true, true)
      ;
      (Game.PushSetup)("Post2ChozoRobots", false, true)
    end
  end
end

l_0_3.OnSubAreaChange = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_75
  (Game.PushSetup)("PostSuperQuetzoa", true, true)
end

l_0_3.ActivateGooShockers = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function(l_77_0, l_77_1)
  -- function num : 0_76
  local l_77_2 = (Game.GetActor)("SG_PostSuperQuetzoa")
  if l_77_2 ~= nil then
    (l_77_2.SPAWNGROUP):EnableSpawnGroup()
  end
  l_77_0.bEnabled = false
end

l_0_3.OnEnter_PostSuperQuetzoaEnemies = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function(l_78_0, l_78_1)
  -- function num : 0_77
  local l_78_2 = (Game.GetActor)("SG_PostEmmy_000")
  if l_78_2 ~= nil then
    (l_78_2.SPAWNGROUP):EnableSpawnGroup()
  end
  l_78_0.bEnabled = false
end

l_0_3.OnEnter_ActivatePostEmmyEnemies = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function(l_79_0, l_79_1)
  -- function num : 0_78
  (Game.PopSetup)("SP_SuperQuetzoa_CoreX_core_x_superquetzoa_Boss_Defeated", false, false)
  ;
  (Game.PushSetup)("PostSuperQuetzoaDead", true, false)
end

l_0_3.Post_SuperQuetzoa_Dead = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function(l_80_0, l_80_1)
  -- function num : 0_79
  (Game.PushSetup)("SpaceJump", true, false)
end

l_0_3.OnEnter_MusicChange_SpaceJump = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function(l_81_0, l_81_1)
  -- function num : 0_80
  (Game.PopSetup)("SpaceJump", true, false)
end

l_0_3.OnExit_MusicChange_SpaceJump = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function(l_82_0, l_82_1)
  -- function num : 0_81
  (Game.PushSetup)("SpaceJumpWater", true, false)
end

l_0_3.OnEnter_MusicChange_SpaceJumpWater = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function(l_83_0, l_83_1)
  -- function num : 0_82
  (Game.PopSetup)("SpaceJumpWater", true, false)
end

l_0_3.OnExit_MusicChange_SpaceJumpWater = l_0_4
l_0_3 = s070_basesanc
l_0_4 = function()
  -- function num : 0_83
  local l_84_0 = (Game.GetActor)("cutsceneplayer_40")
  if l_84_0 ~= nil then
    local l_84_1 = (Game.GetActor)("cutsceneplayer_40b_part1")
    if l_84_1 ~= nil then
      (l_84_0.CUTSCENE):QueueCutscenePlayer(l_84_1)
      local l_84_2 = (Game.GetActor)("cutsceneplayer_40b_part2")
      if l_84_2 ~= nil then
        (l_84_1.CUTSCENE):QueueCutscenePlayer(l_84_2)
        local l_84_3 = (Game.GetActor)("cutsceneplayer_40c")
        if l_84_3 ~= nil then
          (l_84_2.CUTSCENE):QueueCutscenePlayer(l_84_3)
        end
      end
    end
  end
end

l_0_3.cutsceneplayer_40_full = l_0_4

