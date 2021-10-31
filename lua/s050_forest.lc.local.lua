-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: lua/s050_forest.lc.local 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC2: Confused about usage of register: R0 in 'UnsetPending'

s050_forest.main = function()
  -- function num : 0_0
  (s050_forest.PatrolRoutesGeneration)()
  ;
  (s050_forest.PatrolRoutesFinalNodesAssignation)()
end

-- DECOMPILER ERROR at PC5: Confused about usage of register: R0 in 'UnsetPending'

s050_forest.SetupDebugGameBlackboard = function()
  -- function num : 0_1
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPECIAL_ENERGY", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 499)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 499)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 52)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 52)
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
-- DECOMPILER ERROR at PC16: Confused about usage of register: R2 in 'UnsetPending'

s050_forest.InitFromBlackboard = function()
  -- function num : 0_2 , upvalues : l_0_1, l_0_0
  (Game.ReinitPlayerFromBlackboard)()
  l_0_1 = (Scenario.ReadFromBlackboard)((Scenario.LUAPropIDs).FOREST_POSTXRELEASE_APPLIED, false)
  l_0_0 = (Blackboard.GetProp)("GAME_PROGRESS", "QUARENTINE_OPENED")
  if l_0_0 == true then
    (s050_forest.Activate_Setup_PostXRelease)()
  end
end

-- DECOMPILER ERROR at PC20: Confused about usage of register: R2 in 'UnsetPending'

s050_forest.Activate_Setup_PostXRelease = function()
  -- function num : 0_3 , upvalues : l_0_1
  if l_0_1 == false then
    (Game.PushSetup)("PostXRelease", true, true)
    ;
    (Scenario.WriteToBlackboard)((Scenario.LUAPropIDs).FOREST_POSTXRELEASE_APPLIED, "b", true)
    l_0_1 = true
  end
end

local l_0_2 = s050_forest
local l_0_3 = {}
l_0_3.ShowDeath = true
l_0_3.GoToMainMenu = false
l_0_2.tGetOnDeathOverrides = l_0_3
l_0_2 = s050_forest
l_0_3 = function()
  -- function num : 0_4
  return s050_forest.tGetOnDeathOverrides
end

l_0_2.GetOnDeathOverrides = l_0_3
l_0_2 = s050_forest
l_0_3 = function(l_6_0, l_6_1)
  -- function num : 0_5
  if l_6_1 ~= nil then
    print("OnEntityGenerated!!!!!!")
  end
end

l_0_2.OnEntityGenerated = l_0_3
l_0_2 = s050_forest
l_0_3 = function()
  -- function num : 0_6
  local l_7_0 = (Game.GetActor)("powerup_sonar")
  if l_7_0 ~= nil then
    (l_7_0.PICKABLE):OnPickUpAfterCutScene()
  end
end

l_0_2.SonarObtained = l_0_3
l_0_2 = s050_forest
l_0_3 = function(l_8_0, l_8_1)
  -- function num : 0_7
  l_8_0.bEnabled = false
  ;
  (Game.AddSF)(1, "s050_forest.DelayedLineBoomObtined", "")
  local l_8_2 = (Game.GetPlayer)()
  if l_8_2 ~= nil then
    (l_8_2.INPUT):IgnoreInput(true, false, "OnEnter_trigger_LineBoomObtained")
  end
end

l_0_2.OnEnter_trigger_LineBoomObtained = l_0_3
l_0_2 = s050_forest
l_0_3 = function()
  -- function num : 0_8
  (GUI.ShowMessage)("#CUT_LINE_BOMB", true, "s050_forest.LineBoomObtainedMessageSkipped")
  local l_9_0 = (Game.GetPlayer)()
  if l_9_0 ~= nil then
    (l_9_0.INPUT):IgnoreInput(false, false, "OnEnter_trigger_LineBoomObtained")
  end
end

l_0_2.DelayedLineBoomObtined = l_0_3
l_0_2 = s050_forest
l_0_3 = function()
  -- function num : 0_9
  local l_10_0 = (Game.GetPlayer)()
  if l_10_0 ~= nil then
    (l_10_0.INVENTORY):SetItemAmount("ITEM_WEAPON_LINE_BOMB", 1, true)
  end
end

l_0_2.LineBoomObtainedMessageSkipped = l_0_3
l_0_2 = s050_forest
l_0_3 = function(l_11_0, l_11_1)
  -- function num : 0_10
  l_11_0.bEnabled = false
  ;
  (Game.AddSF)(1, "s050_forest.DelayedBossPresentation", "")
  local l_11_2 = (Game.GetPlayer)()
  if l_11_2 ~= nil then
    (l_11_2.INPUT):IgnoreInput(true, false, "OnEnter_trigger_BossPresentation")
  end
end

l_0_2.OnEnter_trigger_BossPresentation = l_0_3
l_0_2 = s050_forest
l_0_3 = function()
  -- function num : 0_11
  (GUI.ShowMessage)("#CUT_FOREST_BOSS_PRESENTATION", true, "s050_forest.BossPresentationMessageSkipped")
  local l_12_0 = (Game.GetPlayer)()
  if l_12_0 ~= nil then
    (l_12_0.INPUT):IgnoreInput(false, false, "OnEnter_trigger_BossPresentation")
  end
end

l_0_2.DelayedBossPresentation = l_0_3
l_0_2 = s050_forest
l_0_3 = function()
  -- function num : 0_12
end

l_0_2.BossPresentationMessageSkipped = l_0_3
l_0_2 = s050_forest
l_0_3 = function()
  -- function num : 0_13
  (Game.SetCollisionCameraLocked)("collision_camera_003_B", true)
end

l_0_2.OnEnter_ChangeCamera_003_B = l_0_3
l_0_2 = s050_forest
l_0_3 = function()
  -- function num : 0_14
  (Game.SetCollisionCameraLocked)("collision_camera_003_B", false)
end

l_0_2.OnExit_ChangeCamera_003_B = l_0_3
l_0_2 = s050_forest
l_0_3 = function()
  -- function num : 0_15
  (Game.SetCollisionCameraLocked)("collision_camera_003_C", true)
end

l_0_2.OnEnter_ChangeCamera_003_C = l_0_3
l_0_2 = s050_forest
l_0_3 = function()
  -- function num : 0_16
  (Game.SetCollisionCameraLocked)("collision_camera_003_C", false)
end

l_0_2.OnExit_ChangeCamera_003_C = l_0_3
l_0_2 = s050_forest
l_0_3 = function()
  -- function num : 0_17
  (Game.PushSetup)("ChangeCamera_019_B", false, true)
end

l_0_2.OnEnter_ChangeCamera_019_B = l_0_3
l_0_2 = s050_forest
l_0_3 = function()
  -- function num : 0_18
  (Game.PopSetup)("ChangeCamera_019_B", false, true)
end

l_0_2.OnExit_ChangeCamera_019_B = l_0_3
l_0_2 = s050_forest
l_0_3 = function()
  -- function num : 0_19
  (Game.SetCollisionCameraLocked)("collision_camera_023_B", true)
end

l_0_2.OnEnter_ChangeCamera_023_B = l_0_3
l_0_2 = s050_forest
l_0_3 = function()
  -- function num : 0_20
  (Game.SetCollisionCameraLocked)("collision_camera_023_B", false)
end

l_0_2.OnExit_ChangeCamera_023_B = l_0_3
l_0_2 = s050_forest
l_0_3 = function()
  -- function num : 0_21
  (Game.PushSetup)("ChangeCamera_024_B", false, true)
end

l_0_2.OnEnter_ChangeCamera_024_B = l_0_3
l_0_2 = s050_forest
l_0_3 = function()
  -- function num : 0_22
  (Game.PopSetup)("ChangeCamera_024_B", false, true)
end

l_0_2.OnExit_ChangeCamera_024_B = l_0_3
l_0_2 = s050_forest
l_0_3 = function()
  -- function num : 0_23
  (Game.PushSetup)("ChangeCamera_025_B", false, true)
end

l_0_2.OnEnter_ChangeCamera_025_B = l_0_3
l_0_2 = s050_forest
l_0_3 = function()
  -- function num : 0_24
  (Game.PopSetup)("ChangeCamera_025_B", false, true)
end

l_0_2.OnExit_ChangeCamera_025_B = l_0_3
l_0_2 = s050_forest
l_0_3 = function()
  -- function num : 0_25
  (Game.PushSetup)("ChangeCamera_025_C", false, true)
end

l_0_2.OnEnter_ChangeCamera_025_C = l_0_3
l_0_2 = s050_forest
l_0_3 = function()
  -- function num : 0_26
  (Game.PopSetup)("ChangeCamera_025_C", false, true)
end

l_0_2.OnExit_ChangeCamera_025_C = l_0_3
l_0_2 = s050_forest
l_0_3 = function(l_28_0, l_28_1)
  -- function num : 0_27
  l_28_0.bEnabled = false
  ;
  (Game.PushSetup)("ZoomIn_Magnet", true, true)
  local l_28_2 = (Game.GetActor)("trigger_camera_ZoomIn_off")
  if l_28_2 ~= nil then
    l_28_2.bEnabled = true
  end
end

l_0_2.OnEnter_TG_camera_ZoomIn_On = l_0_3
l_0_2 = s050_forest
l_0_3 = function(l_29_0, l_29_1)
  -- function num : 0_28
  l_29_0.bEnabled = false
  ;
  (Game.PopSetup)("ZoomIn_Magnet", true, true)
end

l_0_2.OnEnter_TG_camera_ZoomIn_Off = l_0_3
l_0_2 = s050_forest
l_0_3 = function()
  -- function num : 0_29
  (Game.PopSetup)("SuperGoliath_CoreX_Env", true)
  ;
  (Game.PushSetup)("goliath_Boss_Defeated", true)
  ;
  ((Game.GetActor)("TG_PreBossCheckpoint_SuperGoliath")).bEnabled = false
  ;
  ((Game.GetActor)("TG_Checkpoint_SuperGoliath")).bEnabled = false
end

l_0_2.OnEnter_PostSuperGoliathDefeated = l_0_3
l_0_2 = s050_forest
l_0_3 = function(l_31_0)
  -- function num : 0_30
  if l_31_0 ~= nil and l_31_0 == "SP_SuperGoliath_CoreX_core_x" then
    (Game.PopSetup)("SP_Goliath_B_goliath_Fake_Boss_Defeated", true, false)
  end
end

l_0_2.OnBossDefeated = l_0_3
l_0_2 = s050_forest
l_0_3 = function()
  -- function num : 0_31 , upvalues : l_0_0
  local l_32_0 = (Game.GetActor)("accesspoint_000")
  local l_32_1 = (Blackboard.GetProp)("GAME_PROGRESS", "ADAMDIALOGUE")
  if l_32_0 ~= nil then
    if l_32_1 == "DIAG_ADAM_LAB_2" then
      (l_32_0.USABLE):ActiveDialogue("DIAG_ADAM_FOREST_1")
      ;
      (Blackboard.SetProp)("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_FOREST_1")
    else
      if l_32_1 == "DIAG_ADAM_FOREST_1" and l_0_0 then
        (l_32_0.USABLE):ActiveDialogue("DIAG_ADAM_FOREST_2")
        ;
        (Blackboard.SetProp)("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_FOREST_2")
      else
        if l_32_1 == "DIAG_ADAM_CAVE_4" then
          local l_32_2 = (Blackboard.GetProp)("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK")
          if l_32_2 ~= nil and l_32_2 > 0 then
            (l_32_0.USABLE):ActiveDialogue("DIAG_ADAM_AQUA_3")
            ;
            (Blackboard.SetProp)("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_AQUA_3")
          end
        end
      end
    end
  end
end

l_0_2.OnEnter_AP_07 = l_0_3
l_0_2 = s050_forest
l_0_3 = function(l_33_0, l_33_1, l_33_2, l_33_3)
  -- function num : 0_32
  (Scenario.SubAreaChangeRequest)(l_33_0, l_33_1, l_33_2, l_33_3)
end

l_0_2.SubAreaChangeRequest = l_0_3
l_0_2 = s050_forest
l_0_3 = function(l_34_0, l_34_1, l_34_2, l_34_3, l_34_4)
  -- function num : 0_33
  if l_34_0 == "collision_camera_039" and l_34_2 == "collision_camera_032" then
    (s050_forest.LaunchCutscene_33)()
  end
  do
    if l_34_0 == "collision_camera_002" and l_34_1 == "Default" then
      local l_34_5 = (Game.GetActor)("SG_ChozoRobotSoldier")
      if l_34_5 ~= nil then
        print((l_34_5.SPAWNGROUP).iNumDeaths)
        if (l_34_5.SPAWNGROUP).iNumDeaths > 0 then
          (Game.PushSetup)("PostChozoRobotSoldier", true, true)
        end
      end
    end
    if l_34_0 == "collision_camera_023" and l_34_1 == "ChozoWarriorX" then
      local l_34_6 = (Game.GetActor)("SG_ChozoWarriorX")
      if l_34_6 ~= nil then
        print((l_34_6.SPAWNGROUP).iNumDeaths)
        if (l_34_6.SPAWNGROUP).iNumDeaths > 0 then
          (Game.PopSetup)("ChozoWarriorX", true, true)
          ;
          (Game.PushSetup)("PostChozoWarriorX", false, true)
        end
      end
    end
  end
end

l_0_2.OnSubAreaChange = l_0_3
l_0_2 = s050_forest
l_0_3 = function()
  -- function num : 0_34
  local l_35_0 = (Game.GetActor)("cutsceneplayer_33")
  if l_35_0 ~= nil then
    (l_35_0.CUTSCENE):TryLaunchCutscene()
  end
end

l_0_2.LaunchCutscene_33 = l_0_3
l_0_2 = Scenario
l_0_2 = l_0_2.AddFadeTransition
l_0_3 = "collision_camera_024"
l_0_2(l_0_3, "Default", "collision_camera_031", "Default", "Fade")
l_0_2 = s050_forest
l_0_3 = function()
  -- function num : 0_35
end

l_0_2.OnBeforeGenerate = l_0_3
l_0_2 = s050_forest
l_0_3 = function(l_37_0, l_37_1)
  -- function num : 0_36 , upvalues : l_0_0
  -- DECOMPILER ERROR at PC1: Confused about usage of register: R2 in 'UnsetPending'

  CurrentScenario.oEmmyEntity = l_37_1
  ;
  (AI.SetWorldGraphToEmmy)("LE_WorldGraph", l_37_1.sName)
  ;
  (s050_forest.ChangePatrolEmmy)("PATROLROUTE_03")
  print("EMMY: Generation OK. Starting patrol: " .. (l_37_1.AI).sCurrentPatrol)
  if l_0_0 == true then
    print("QUARANTINE IS OPENED")
  else
    -- DECOMPILER ERROR at PC26: Confused about usage of register: R2 in 'UnsetPending'

    ;
    (CurrentScenario.oEmmyEntity).bEnabled = false
    print("QUARANTINE IS NOT OPENED")
  end
end

l_0_2.OnEmmyForestGenerated = l_0_3
l_0_2 = s050_forest
l_0_3 = function()
  -- function num : 0_37
  (GUI.AddEmmyMissionLogEntry)("#MLOG_ENCOUNTER_EMMY_FOREST")
end

l_0_2.AddForestEmmyToMissionLog = l_0_3
l_0_2 = s050_forest
l_0_3 = function()
  -- function num : 0_38
  (Game.PushSetup)("PostEmmy", true, true)
end

l_0_2.OnEmmyForestDead = l_0_3
l_0_2 = s050_forest
l_0_3 = function()
  -- function num : 0_39
  ((Game.GetActor)("TG_EnablePostEmmyEnemies")).bEnabled = true
  local l_40_0 = (Game.GetActor)("centralunitmagmacontroller")
  if l_40_0 ~= nil then
    (l_40_0.CENTRALUNIT):OnEmmyAbilityObtainedFadeOutCompleted()
  end
end

l_0_2.OnEmmyAbilityObtainedFadeOutCompleted = l_0_3
l_0_2 = s050_forest
l_0_3 = function()
  -- function num : 0_40
  (GUI.ShowMessage)("#CUT_ICE_MISSILE", true, "")
  local l_41_0 = (Game.GetPlayer)()
  if l_41_0 ~= nil then
    (l_41_0.INPUT):IgnoreInput(false, false, "OnEmmyForestDead")
  end
end

l_0_2.DelayedOnEmmyForestDead = l_0_3
l_0_2 = s050_forest
l_0_3 = function()
  -- function num : 0_41
end

l_0_2.OnEmmyDeathMessageSkipped = l_0_3
l_0_2 = s050_forest
l_0_3 = function()
  -- function num : 0_42
  local l_43_0 = (Game.GetActor)("centralunitmagmacontroller")
  if l_43_0 ~= nil then
    (l_43_0.CENTRALUNIT):UnlockDoors()
  else
    print("CENTRAL_UNIT: centralunitmagmacontroller not found")
  end
end

l_0_2.OnUnlockEmmyDoors = l_0_3
l_0_2 = s050_forest
l_0_3 = function()
  -- function num : 0_43
  local l_44_0 = (Game.GetActor)("SP_Emmy")
  if l_44_0 ~= nil then
    (l_44_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_01")
    ;
    (l_44_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_02")
    ;
    (l_44_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_03")
    ;
    (l_44_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_04")
    ;
    (l_44_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_05")
    ;
    (l_44_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_06")
    ;
    (l_44_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_07")
    ;
    (l_44_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_08")
    ;
    (l_44_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_09")
    ;
    (l_44_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_10")
  end
  ;
  (AI.AddPatrol)("LE_WorldGraph", "PATROLROUTE_01", "LS_PATROLEMMY_01")
  ;
  (AI.AddPatrol)("LE_WorldGraph", "PATROLROUTE_02", "LS_PATROLEMMY_02")
  ;
  (AI.AddPatrol)("LE_WorldGraph", "PATROLROUTE_03", "LS_PATROLEMMY_03")
  ;
  (AI.AddPatrol)("LE_WorldGraph", "PATROLROUTE_04", "LS_PATROLEMMY_04")
  ;
  (AI.AddPatrol)("LE_WorldGraph", "PATROLROUTE_05", "LS_PATROLEMMY_05")
  ;
  (AI.AddPatrol)("LE_WorldGraph", "PATROLROUTE_06", "LS_PATROLEMMY_06")
  ;
  (AI.AddPatrol)("LE_WorldGraph", "PATROLROUTE_07", "LS_PATROLEMMY_07")
  ;
  (AI.AddPatrol)("LE_WorldGraph", "PATROLROUTE_08", "LS_PATROLEMMY_08")
  ;
  (AI.AddPatrol)("LE_WorldGraph", "PATROLROUTE_09", "LS_PATROLEMMY_09")
  ;
  (AI.AddPatrol)("LE_WorldGraph", "PATROLROUTE_10", "LS_PATROLEMMY_10")
  print("s050_forest.PatrolRoutesGeneration(): Patrol designation OK")
end

l_0_2.PatrolRoutesGeneration = l_0_3
l_0_2 = s050_forest
l_0_3 = function()
  -- function num : 0_44
  local l_45_0 = AI.SetPatrolFinalNode
  local l_45_1 = "LE_WorldGraph"
  local l_45_2 = "PATROLROUTE_01"
  local l_45_3 = {}
  -- DECOMPILER ERROR at PC7: No list found for R3 , SetList fails

  -- DECOMPILER ERROR at PC8: Overwrote pending register: R4 in 'AssignReg'

  l_45_0(l_45_1, l_45_2, l_45_3, "WorldGraph_0")
  -- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC16: Overwrote pending register: R5 in 'AssignReg'

  l_45_0(l_45_1, l_45_2, l_45_3, 1)
  l_45_3 = {"WorldGraph_11", "WorldGraph_2"}
  -- DECOMPILER ERROR at PC20: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC21: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC22: Overwrote pending register: R1 in 'AssignReg'

  -- DECOMPILER ERROR at PC23: Overwrote pending register: R2 in 'AssignReg'

  l_45_0(l_45_1, l_45_2, l_45_3, 0)
  l_45_3 = {"WorldGraph_10", "WorldGraph_12"}
  -- DECOMPILER ERROR at PC30: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC31: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC32: Overwrote pending register: R1 in 'AssignReg'

  -- DECOMPILER ERROR at PC33: Overwrote pending register: R2 in 'AssignReg'

  l_45_0(l_45_1, l_45_2, l_45_3, 1)
  l_45_3 = {"WorldGraph_1", "WorldGraph_11"}
  -- DECOMPILER ERROR at PC40: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC41: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC42: Overwrote pending register: R1 in 'AssignReg'

  -- DECOMPILER ERROR at PC43: Overwrote pending register: R2 in 'AssignReg'

  l_45_0(l_45_1, l_45_2, l_45_3, 0)
  l_45_3 = {"WorldGraph_10", "WorldGraph_1"}
  -- DECOMPILER ERROR at PC50: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC51: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC52: Overwrote pending register: R1 in 'AssignReg'

  -- DECOMPILER ERROR at PC53: Overwrote pending register: R2 in 'AssignReg'

  l_45_0(l_45_1, l_45_2, l_45_3, 1)
  l_45_3 = {"WorldGraph_9", "WorldGraph_12"}
  -- DECOMPILER ERROR at PC60: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC61: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC62: Overwrote pending register: R1 in 'AssignReg'

  -- DECOMPILER ERROR at PC63: Overwrote pending register: R2 in 'AssignReg'

  l_45_0(l_45_1, l_45_2, l_45_3, 0)
  l_45_3 = {"WorldGraph_16", "WorldGraph_14"}
  -- DECOMPILER ERROR at PC70: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC71: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC72: Overwrote pending register: R1 in 'AssignReg'

  -- DECOMPILER ERROR at PC73: Overwrote pending register: R2 in 'AssignReg'

  l_45_0(l_45_1, l_45_2, l_45_3, 0)
  l_45_3 = {"WorldGraph_15", "WorldGraph_13"}
  -- DECOMPILER ERROR at PC80: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC81: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC82: Overwrote pending register: R1 in 'AssignReg'

  -- DECOMPILER ERROR at PC83: Overwrote pending register: R2 in 'AssignReg'

  l_45_0(l_45_1, l_45_2, l_45_3, 1)
  l_45_3 = {"WorldGraph_11", "WorldGraph_12"}
  -- DECOMPILER ERROR at PC90: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC91: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC92: Overwrote pending register: R1 in 'AssignReg'

  -- DECOMPILER ERROR at PC93: Overwrote pending register: R2 in 'AssignReg'

  l_45_0(l_45_1, l_45_2, l_45_3, 0)
  l_45_3 = {"WorldGraph_13"}
  -- DECOMPILER ERROR at PC99: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC100: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC101: Overwrote pending register: R1 in 'AssignReg'

  -- DECOMPILER ERROR at PC102: Overwrote pending register: R2 in 'AssignReg'

  l_45_0(l_45_1, l_45_2, l_45_3, 1)
  l_45_3 = {"WorldGraph_14"}
  -- DECOMPILER ERROR at PC108: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC109: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC110: Overwrote pending register: R1 in 'AssignReg'

  -- DECOMPILER ERROR at PC111: Overwrote pending register: R2 in 'AssignReg'

  l_45_0(l_45_1, l_45_2, l_45_3, 1)
  l_45_3 = {"WorldGraph_15"}
  -- DECOMPILER ERROR at PC117: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC118: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC119: Overwrote pending register: R1 in 'AssignReg'

  -- DECOMPILER ERROR at PC120: Overwrote pending register: R2 in 'AssignReg'

  l_45_0(l_45_1, l_45_2, l_45_3, 0)
  l_45_3 = {"WorldGraph_42", "WorldGraph_12"}
  -- DECOMPILER ERROR at PC127: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC128: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC129: Overwrote pending register: R1 in 'AssignReg'

  -- DECOMPILER ERROR at PC130: Overwrote pending register: R2 in 'AssignReg'

  l_45_0(l_45_1, l_45_2, l_45_3, 0)
  l_45_3 = {"WorldGraph_16", "WorldGraph_14"}
  -- DECOMPILER ERROR at PC137: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC138: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC139: Overwrote pending register: R1 in 'AssignReg'

  -- DECOMPILER ERROR at PC140: Overwrote pending register: R2 in 'AssignReg'

  l_45_0(l_45_1, l_45_2, l_45_3, 1)
  l_45_3 = {"WorldGraph_12", "WorldGraph_19"}
  -- DECOMPILER ERROR at PC147: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC148: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC149: Overwrote pending register: R1 in 'AssignReg'

  -- DECOMPILER ERROR at PC150: Overwrote pending register: R2 in 'AssignReg'

  l_45_0(l_45_1, l_45_2, l_45_3, 0)
  l_45_3 = {"WorldGraph_17", "WorldGraph_21"}
  -- DECOMPILER ERROR at PC157: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC158: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC159: Overwrote pending register: R1 in 'AssignReg'

  -- DECOMPILER ERROR at PC160: Overwrote pending register: R2 in 'AssignReg'

  l_45_0(l_45_1, l_45_2, l_45_3, 1)
  l_45_3 = {"WorldGraph_18", "WorldGraph_41", "WorldGraph_23"}
  -- DECOMPILER ERROR at PC168: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC169: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC170: Overwrote pending register: R1 in 'AssignReg'

  -- DECOMPILER ERROR at PC171: Overwrote pending register: R2 in 'AssignReg'

  l_45_0(l_45_1, l_45_2, l_45_3, 0)
  l_45_3 = {"WorldGraph_26"}
  -- DECOMPILER ERROR at PC177: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC178: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC179: Overwrote pending register: R1 in 'AssignReg'

  -- DECOMPILER ERROR at PC180: Overwrote pending register: R2 in 'AssignReg'

  l_45_0(l_45_1, l_45_2, l_45_3, 0)
  l_45_3 = {"WorldGraph_27"}
  -- DECOMPILER ERROR at PC186: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC187: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC188: Overwrote pending register: R1 in 'AssignReg'

  -- DECOMPILER ERROR at PC189: Overwrote pending register: R2 in 'AssignReg'

  l_45_0(l_45_1, l_45_2, l_45_3, 1)
  l_45_3 = {"WorldGraph_24"}
  -- DECOMPILER ERROR at PC195: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC196: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC197: Overwrote pending register: R1 in 'AssignReg'

  -- DECOMPILER ERROR at PC198: Overwrote pending register: R2 in 'AssignReg'

  l_45_0(l_45_1, l_45_2, l_45_3, 0)
  l_45_3 = {"WorldGraph_25", "WorldGraph_29"}
  -- DECOMPILER ERROR at PC205: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC206: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC207: Overwrote pending register: R1 in 'AssignReg'

  -- DECOMPILER ERROR at PC208: Overwrote pending register: R2 in 'AssignReg'

  l_45_0(l_45_1, l_45_2, l_45_3, 1)
  l_45_3 = {"WorldGraph_26", "WorldGraph_31"}
  -- DECOMPILER ERROR at PC215: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC216: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC217: Overwrote pending register: R1 in 'AssignReg'

  -- DECOMPILER ERROR at PC218: Overwrote pending register: R2 in 'AssignReg'

  l_45_0(l_45_1, l_45_2, l_45_3, 1)
  l_45_3 = {"WorldGraph_48", "WorldGraph_24"}
  -- DECOMPILER ERROR at PC225: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC226: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC227: Overwrote pending register: R1 in 'AssignReg'

  -- DECOMPILER ERROR at PC228: Overwrote pending register: R2 in 'AssignReg'

  l_45_0(l_45_1, l_45_2, l_45_3, 0)
  l_45_3 = {"WorldGraph_39", "WorldGraph_32"}
  -- DECOMPILER ERROR at PC235: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC236: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC237: Overwrote pending register: R1 in 'AssignReg'

  -- DECOMPILER ERROR at PC238: Overwrote pending register: R2 in 'AssignReg'

  l_45_0(l_45_1, l_45_2, l_45_3, 1)
  l_45_3 = {"WorldGraph_40", "WorldGraph_34"}
  -- DECOMPILER ERROR at PC245: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC246: Overwrote pending register: R1 in 'AssignReg'

  l_45_0(l_45_1)
end

l_0_2.PatrolRoutesFinalNodesAssignation = l_0_3
l_0_2 = s050_forest
l_0_3 = function(l_46_0)
  -- function num : 0_45
  -- DECOMPILER ERROR at PC10: Confused about usage of register: R1 in 'UnsetPending'

  if (Scenario.CheckEmmyAlive)(CurrentScenario.oEmmyEntity) then
    ((CurrentScenario.oEmmyEntity).AI).sCurrentPatrol = l_46_0
    print("EMMY: Assigned route " .. l_46_0)
  else
    print("EMMY: Not found, route " .. l_46_0 .. " not assigned")
  end
end

l_0_2.ChangePatrolEmmy = l_0_3
l_0_2 = s050_forest
l_0_3 = function(l_47_0, l_47_1)
  -- function num : 0_46
  local l_47_2 = (string.gsub)(l_47_0.sName, "TG_PATROLEMMYACTIVATOR_", "PATROLROUTE_")
  ;
  (s050_forest.ChangePatrolEmmy)(l_47_2)
end

l_0_2.OnEnter_PatrolEmmyActivator = l_0_3
l_0_2 = s050_forest
l_0_3 = function(l_48_0, l_48_1)
  -- function num : 0_47
end

l_0_2.OnExit_PatrolEmmyActivator = l_0_3
l_0_2 = s050_forest
l_0_2.tEmmyDoor = nil
l_0_2 = s050_forest
l_0_3 = function(l_49_0, l_49_1, l_49_2)
  -- function num : 0_48 , upvalues : l_0_0
  -- DECOMPILER ERROR at PC22: Unhandled construct in 'MakeBoolean' P1

  if l_0_0 == true and (Scenario.CheckEmmyAlive)(CurrentScenario.oEmmyEntity) and l_49_1 and CurrentScenario.oEmmyEntity ~= nil then
    if l_49_2 then
      sTeleportLandmark = (s050_forest.HardEmmyRelocationDoor)(l_49_0)
    else
      sTeleportLandmark = (s050_forest.EmmyRelocationDoor)(l_49_0)
    end
    if sTeleportLandmark ~= nil then
      local l_49_3 = (Game.GetActor)(sTeleportLandmark)
      print(l_49_3.sName)
      -- DECOMPILER ERROR at PC41: Confused about usage of register: R4 in 'UnsetPending'

      ;
      (CurrentScenario.oEmmyEntity).bEnabled = false
      -- DECOMPILER ERROR at PC45: Confused about usage of register: R4 in 'UnsetPending'

      ;
      (CurrentScenario.oEmmyEntity).vPos = l_49_3.vPos
      -- DECOMPILER ERROR at PC49: Confused about usage of register: R4 in 'UnsetPending'

      ;
      (CurrentScenario.oEmmyEntity).vAng = l_49_3.vAng
      -- DECOMPILER ERROR at PC52: Confused about usage of register: R4 in 'UnsetPending'

      ;
      (CurrentScenario.oEmmyEntity).bEnabled = true
    end
  end
  do
    -- DECOMPILER ERROR at PC56: Confused about usage of register: R3 in 'UnsetPending'

    ;
    (CurrentScenario.oEmmyEntity).bEnabled = false
  end
end

l_0_2.OnWalkThroughEmmyDoor = l_0_3
l_0_2 = s050_forest
l_0_3 = function(l_50_0)
  -- function num : 0_49
  print("Door: Hard " .. l_50_0.sName)
  if l_50_0.sName == "dooremmy" then
    local l_50_1 = s050_forest
    local l_50_2 = {}
    -- DECOMPILER ERROR at PC11: No list found for R2 , SetList fails

  else
    do
      if l_50_0.sName == "dooremmy_000" then
        local l_50_3 = s050_forest
        local l_50_4 = {}
        -- DECOMPILER ERROR at PC19: Overwrote pending register: R3 in 'AssignReg'

        -- DECOMPILER ERROR at PC20: No list found for R2 , SetList fails

      else
        do
          if l_50_0.sName == "dooremmy_001" then
            local l_50_5 = s050_forest
            local l_50_6 = {}
            -- DECOMPILER ERROR at PC28: Overwrote pending register: R3 in 'AssignReg'

            -- DECOMPILER ERROR at PC29: No list found for R2 , SetList fails

          else
            do
              if l_50_0.sName == "dooremmy_002" then
                local l_50_7 = s050_forest
                local l_50_8 = {}
                -- DECOMPILER ERROR at PC37: Overwrote pending register: R3 in 'AssignReg'

                -- DECOMPILER ERROR at PC38: No list found for R2 , SetList fails

              else
                do
                  if l_50_0.sName == "dooremmy_003" then
                    local l_50_9 = s050_forest
                    local l_50_10 = {}
                    -- DECOMPILER ERROR at PC46: Overwrote pending register: R3 in 'AssignReg'

                    -- DECOMPILER ERROR at PC49: No list found for R2 , SetList fails

                  else
                    do
                      if l_50_0.sName == "dooremmy_004" then
                        local l_50_11 = s050_forest
                        local l_50_12 = {}
                        -- DECOMPILER ERROR at PC57: Overwrote pending register: R3 in 'AssignReg'

                        -- DECOMPILER ERROR at PC58: No list found for R2 , SetList fails

                      else
                        do
                          if l_50_0.sName == "dooremmy_005" then
                            local l_50_13 = s050_forest
                            local l_50_14 = {}
                            -- DECOMPILER ERROR at PC66: Overwrote pending register: R3 in 'AssignReg'

                            -- DECOMPILER ERROR at PC67: Overwrote pending register: R4 in 'AssignReg'

                            -- DECOMPILER ERROR at PC68: Overwrote pending register: R5 in 'AssignReg'

                            -- DECOMPILER ERROR at PC69: No list found for R2 , SetList fails

                          else
                            do
                              if l_50_0.sName == "dooremmy_006" then
                                local l_50_15 = s050_forest
                                local l_50_16 = {}
                                -- DECOMPILER ERROR at PC77: Overwrote pending register: R3 in 'AssignReg'

                                -- DECOMPILER ERROR at PC78: No list found for R2 , SetList fails

                              else
                                do
                                  if l_50_0.sName == "dooremmy_007" then
                                    local l_50_17 = s050_forest
                                    local l_50_18 = {}
                                    -- DECOMPILER ERROR at PC86: Overwrote pending register: R3 in 'AssignReg'

                                    -- DECOMPILER ERROR at PC87: No list found for R2 , SetList fails

                                  else
                                    do
                                      -- DECOMPILER ERROR at PC91: Confused about usage of register: R1 in 'UnsetPending'

                                      -- DECOMPILER ERROR at PC100: Overwrote pending register: R3 in 'AssignReg'

                                      -- DECOMPILER ERROR at PC102: Overwrote pending register: R4 in 'AssignReg'

                                      if s050_forest.tEmmyDoor ~= nil then
                                        return (s050_forest.tEmmyDoor)[(math.random)((("LM_EmmyEntrancePoint_019").maxn)(("LM_EmmyEntrancePoint_006").tEmmyDoor))]
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
          end
        end
      end
    end
  end
end

l_0_2.HardEmmyRelocationDoor = l_0_3
l_0_2 = s050_forest
l_0_3 = function(l_51_0)
  -- function num : 0_50
  if l_51_0.sName == "dooremmy" then
    local l_51_1 = s050_forest
    local l_51_2 = {}
    -- DECOMPILER ERROR at PC9: No list found for R2 , SetList fails

  else
    do
      if l_51_0.sName == "dooremmy_000" then
        local l_51_3 = s050_forest
        local l_51_4 = {}
        -- DECOMPILER ERROR at PC17: Overwrote pending register: R3 in 'AssignReg'

        -- DECOMPILER ERROR at PC18: Overwrote pending register: R4 in 'AssignReg'

        -- DECOMPILER ERROR at PC19: Overwrote pending register: R5 in 'AssignReg'

        -- DECOMPILER ERROR at PC20: No list found for R2 , SetList fails

      else
        do
          if l_51_0.sName == "dooremmy_001" then
            local l_51_5 = s050_forest
            local l_51_6 = {}
            -- DECOMPILER ERROR at PC28: Overwrote pending register: R3 in 'AssignReg'

            -- DECOMPILER ERROR at PC29: Overwrote pending register: R4 in 'AssignReg'

            -- DECOMPILER ERROR at PC30: No list found for R2 , SetList fails

          else
            do
              if l_51_0.sName == "dooremmy_002" then
                local l_51_7 = s050_forest
                local l_51_8 = {}
                -- DECOMPILER ERROR at PC38: Overwrote pending register: R3 in 'AssignReg'

                -- DECOMPILER ERROR at PC39: Overwrote pending register: R4 in 'AssignReg'

                -- DECOMPILER ERROR at PC40: No list found for R2 , SetList fails

              else
                do
                  if l_51_0.sName == "dooremmy_003" then
                    local l_51_9 = s050_forest
                    local l_51_10 = {}
                    -- DECOMPILER ERROR at PC48: Overwrote pending register: R3 in 'AssignReg'

                    -- DECOMPILER ERROR at PC49: Overwrote pending register: R4 in 'AssignReg'

                    -- DECOMPILER ERROR at PC50: Overwrote pending register: R5 in 'AssignReg'

                    -- DECOMPILER ERROR at PC51: No list found for R2 , SetList fails

                  else
                    do
                      if l_51_0.sName == "dooremmy_004" then
                        local l_51_11 = s050_forest
                        local l_51_12 = {}
                        -- DECOMPILER ERROR at PC59: Overwrote pending register: R3 in 'AssignReg'

                        -- DECOMPILER ERROR at PC60: Overwrote pending register: R4 in 'AssignReg'

                        -- DECOMPILER ERROR at PC61: No list found for R2 , SetList fails

                      else
                        do
                          if l_51_0.sName == "dooremmy_005" then
                            local l_51_13 = s050_forest
                            local l_51_14 = {}
                            -- DECOMPILER ERROR at PC69: Overwrote pending register: R3 in 'AssignReg'

                            -- DECOMPILER ERROR at PC70: Overwrote pending register: R4 in 'AssignReg'

                            -- DECOMPILER ERROR at PC71: Overwrote pending register: R5 in 'AssignReg'

                            -- DECOMPILER ERROR at PC72: No list found for R2 , SetList fails

                          else
                            do
                              if l_51_0.sName == "dooremmy_006" then
                                local l_51_15 = s050_forest
                                local l_51_16 = {}
                                -- DECOMPILER ERROR at PC80: Overwrote pending register: R3 in 'AssignReg'

                                -- DECOMPILER ERROR at PC81: Overwrote pending register: R4 in 'AssignReg'

                                -- DECOMPILER ERROR at PC82: Overwrote pending register: R5 in 'AssignReg'

                                -- DECOMPILER ERROR at PC83: No list found for R2 , SetList fails

                              else
                                do
                                  if l_51_0.sName == "dooremmy_007" then
                                    local l_51_17 = s050_forest
                                    local l_51_18 = {}
                                    -- DECOMPILER ERROR at PC91: Overwrote pending register: R3 in 'AssignReg'

                                    -- DECOMPILER ERROR at PC92: No list found for R2 , SetList fails

                                  else
                                    do
                                      -- DECOMPILER ERROR at PC96: Confused about usage of register: R1 in 'UnsetPending'

                                      -- DECOMPILER ERROR at PC105: Overwrote pending register: R3 in 'AssignReg'

                                      -- DECOMPILER ERROR at PC107: Overwrote pending register: R4 in 'AssignReg'

                                      if s050_forest.tEmmyDoor ~= nil then
                                        return (s050_forest.tEmmyDoor)[(math.random)((("LM_EmmyEntrancePoint_012").maxn)(("LM_EmmyEntrancePoint_013").tEmmyDoor))]
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
          end
        end
      end
    end
  end
end

l_0_2.EmmyRelocationDoor = l_0_3
l_0_2 = s050_forest
l_0_3 = function()
  -- function num : 0_51
  (Game.AddSF)(1, "s050_forest.Checkpoint_RelocatingEmmy_CU", "")
end

l_0_2.OnTeleport_Checkpoint_CU = l_0_3
l_0_2 = s050_forest
l_0_3 = function()
  -- function num : 0_52
  if CurrentScenario.oEmmyEntity ~= nil then
    local l_53_0 = (Game.GetActor)("LM_EmmyEntrancePoint_017")
    -- DECOMPILER ERROR at PC12: Confused about usage of register: R1 in 'UnsetPending'

    if l_53_0 ~= nil then
      (CurrentScenario.oEmmyEntity).bEnabled = false
      -- DECOMPILER ERROR at PC16: Confused about usage of register: R1 in 'UnsetPending'

      ;
      (CurrentScenario.oEmmyEntity).vPos = l_53_0.vPos
      -- DECOMPILER ERROR at PC20: Confused about usage of register: R1 in 'UnsetPending'

      ;
      (CurrentScenario.oEmmyEntity).vAng = l_53_0.vAng
      -- DECOMPILER ERROR at PC23: Confused about usage of register: R1 in 'UnsetPending'

      ;
      (CurrentScenario.oEmmyEntity).bEnabled = true
      ;
      (s050_forest.ChangePatrolEmmy)("PATROLROUTE_10")
    end
  end
end

l_0_2.Checkpoint_RelocatingEmmy_CU = l_0_3
l_0_2 = s050_forest
l_0_3 = function(l_54_0, l_54_1)
  -- function num : 0_53
  local l_54_2 = (Game.GetActor)("SG_PostDoubleJump")
  l_54_0.bEnabled = false
  ;
  (Game.PushSetup)("ChozoWarriorX", true, true)
  if l_54_2 ~= nil then
    (l_54_2.SPAWNGROUP):EnableSpawnGroup()
  end
end

l_0_2.OnEnter_Enable_ChozoWarriorX = l_0_3
l_0_2 = s050_forest
l_0_3 = function()
  -- function num : 0_54
  ((Game.GetActor)("TG_AfterChozoWarriorXEncounter")).bEnabled = true
end

l_0_2.OnEnter_Enable_Trigger_AfterCWX = l_0_3
l_0_2 = s050_forest
l_0_3 = function(l_56_0, l_56_1)
  -- function num : 0_55
  l_56_0.bEnabled = false
  ;
  (Game.PopSetup)("PostChozoWarriorX", true, true)
end

l_0_2.OnEnter_Disable_PostChozoWarriorSetup = l_0_3
l_0_2 = s050_forest
l_0_3 = function()
  -- function num : 0_56
  if (Scenario.CheckEmmyAlive)(CurrentScenario.oEmmyEntity) then
    ((CurrentScenario.oEmmyEntity).AI):StartWeightedEdges()
  end
end

l_0_2.StartEmmyWeightedEdges = l_0_3
l_0_2 = s050_forest
l_0_3 = function()
  -- function num : 0_57
  if (Scenario.CheckEmmyAlive)(CurrentScenario.oEmmyEntity) then
    ((CurrentScenario.oEmmyEntity).AI):StopWeightedEdges()
  end
end

l_0_2.StopEmmyWeightedEdges = l_0_3
l_0_2 = s050_forest
l_0_3 = function()
  -- function num : 0_58
  (Game.PushSetup)("ChangeMusic_010_StatueRoom", true, true)
end

l_0_2.OnEnter_ChangeMusic_SuperMissile = l_0_3
l_0_2 = s050_forest
l_0_3 = function()
  -- function num : 0_59
  (Game.PopSetup)("ChangeMusic_010_StatueRoom", true, true)
end

l_0_2.OnExit_ChangeMusic_SuperMissile = l_0_3
l_0_2 = s050_forest
l_0_3 = function(l_61_0, l_61_1)
  -- function num : 0_60
  local l_61_2 = (Game.GetActor)("SG_PostEmmy_000")
  local l_61_3 = (Game.GetActor)("SG_PostEmmy_001")
  local l_61_4 = (Game.GetActor)("SG_PostEmmy_002")
  local l_61_5 = (Game.GetActor)("SG_PostEmmy_003")
  if l_61_2 ~= nil then
    (l_61_2.SPAWNGROUP):EnableSpawnGroup()
  end
  if l_61_3 ~= nil then
    (l_61_3.SPAWNGROUP):EnableSpawnGroup()
  end
  if l_61_4 ~= nil then
    (l_61_4.SPAWNGROUP):EnableSpawnGroup()
  end
  if l_61_5 ~= nil then
    (l_61_5.SPAWNGROUP):EnableSpawnGroup()
  end
  l_61_0.bEnabled = false
end

l_0_2.OnEnter_ActivatePostEmmyEnemies = l_0_3
l_0_2 = s050_forest
l_0_3 = function(l_62_0, l_62_1)
  -- function num : 0_61
  local l_62_2 = (Game.GetActor)("SG_Gooplot_000")
  if l_62_2 ~= nil then
    (l_62_2.SPAWNGROUP):EnableSpawnGroup()
  end
  l_62_0.bEnabled = false
end

l_0_2.OnEnter_ActivateArenaSpawngroup = l_0_3
l_0_2 = s050_forest
l_0_3 = function(l_63_0, l_63_1)
  -- function num : 0_62
  local l_63_2 = (Game.GetActor)("SG_PostSuperGoliath_000")
  if l_63_2 ~= nil then
    (l_63_2.SPAWNGROUP):EnableSpawnGroup()
  end
  l_63_0.bEnabled = false
end

l_0_2.OnEnter_PostSuperGoliath = l_0_3
l_0_2 = s050_forest
l_0_3 = function()
  -- function num : 0_63
  local l_64_0 = (Game.GetActor)("LM_EnteringCWXArena")
  local l_64_1 = (Game.GetPlayer)()
  if l_64_1 ~= nil and l_64_0 ~= nil then
    (l_64_1.INPUT):IgnoreInput(true, false, "Enter_CWX_Arena")
    ;
    (l_64_1.ANIMATION):SetAction("fall", true)
    l_64_1.vPos = l_64_0.vPos
    l_64_1.vAng = l_64_0.vAng
    ;
    (Game.ForceConvertToSamus)()
  end
end

l_0_2.Enter_CWX_Arena = l_0_3
l_0_2 = s050_forest
l_0_3 = function()
  -- function num : 0_64
  local l_65_0 = (Game.GetPlayer)()
  if l_65_0 ~= nil then
    (l_65_0.INPUT):IgnoreInput(false, false, "Enter_CWX_Arena")
  end
end

l_0_2.Exit_CWX_Arena = l_0_3
l_0_2 = s050_forest
l_0_3 = function(l_66_0, l_66_1)
  -- function num : 0_65
  local l_66_2 = (Game.GetActor)("doorpowerclosed_003")
  if l_66_2 ~= nil then
    (l_66_2.LIFE):LockDoor()
  end
  l_66_0.bEnabled = false
end

l_0_2.LockDoorSuperGoliathArena = l_0_3
l_0_2 = s050_forest
l_0_3 = function(l_67_0, l_67_1)
  -- function num : 0_66
  local l_67_2 = (Game.GetActor)("SG_ChozoRobotSoldier")
  if l_67_2 ~= nil then
    (l_67_2.SPAWNGROUP):EnableSpawnGroup()
  end
  ;
  ((Game.GetActor)("TG_ActivateArenaSpawngroup")).bEnabled = true
  l_67_0.bEnabled = false
end

l_0_2.OnEnter_Presentation_ChozoRobotSoldier = l_0_3
l_0_2 = s050_forest
l_0_3 = function()
  -- function num : 0_67
  print("----- DETECTING DIRECTION -----")
  local l_68_0 = (Game.GetActor)("SP_ChozoRobotSoldier_chozorobotsoldier")
  if l_68_0 ~= nil then
    local l_68_1 = (Game.GetPlayer)()
    local l_68_2 = V3D(-1, 0, 0)
    if l_68_1 ~= nil then
      l_68_2 = l_68_1.vPos - l_68_0.vPos
    end
    if l_68_2.x > 0 then
      print("----- TURN RIGHT -----")
      ;
      (l_68_0.ANIMATION):SetAction("spawn_front_turn_right", true)
      l_68_2 = V3D(1, 0, 0)
    else
      print("----- TURN LEFT -----")
      ;
      (l_68_0.ANIMATION):SetAction("spawn_front_turn_left", true)
      l_68_2 = V3D(-1, 0, 0)
    end
  end
end

l_0_2.CRS_DetectingDirection = l_0_3

