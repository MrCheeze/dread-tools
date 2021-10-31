-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: lua/s030_baselab.lc.local 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC2: Confused about usage of register: R0 in 'UnsetPending'

s030_baselab.main = function()
  -- function num : 0_0
  (s030_baselab.PatrolRoutesGeneration)()
  ;
  (s030_baselab.PatrolRoutesFinalNodesAssignation)()
end

-- DECOMPILER ERROR at PC5: Confused about usage of register: R0 in 'UnsetPending'

s030_baselab.SetupDebugGameBlackboard = function()
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
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 22)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 22)
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
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_VARIA_SUIT", "f", 0)
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
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MORPH_BALL", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_BOMB", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_LINE_BOMB", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_CHARGE_BEAM", "f", 1)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_WIDE_BEAM", "f", 0)
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
local l_0_3 = false
-- DECOMPILER ERROR at PC19: Confused about usage of register: R4 in 'UnsetPending'

s030_baselab.InitFromBlackboard = function()
  -- function num : 0_2 , upvalues : l_0_1, l_0_2, l_0_0
  (Game.ReinitPlayerFromBlackboard)()
  l_0_1 = (Scenario.ReadFromBlackboard)((Scenario.LUAPropIDs).LAB_EMMY_SPAWNED, false)
  l_0_2 = (Scenario.ReadFromBlackboard)((Scenario.LUAPropIDs).LAB_POSTXRELEASE_APPLIED, false)
  l_0_0 = (Blackboard.GetProp)("GAME_PROGRESS", "QUARENTINE_OPENED")
  if l_0_0 == true then
    (s030_baselab.Activate_Setup_PostXRelease)()
  end
end

-- DECOMPILER ERROR at PC23: Confused about usage of register: R4 in 'UnsetPending'

s030_baselab.Activate_Setup_PostXRelease = function()
  -- function num : 0_3 , upvalues : l_0_2
  if l_0_2 == false then
    (Game.PushSetup)("PostXRelease", true, true)
    ;
    (Scenario.WriteToBlackboard)((Scenario.LUAPropIDs).LAB_POSTXRELEASE_APPLIED, "b", true)
    l_0_2 = true
  end
end

local l_0_4 = s030_baselab
local l_0_5 = {}
l_0_5.ShowDeath = true
l_0_5.GoToMainMenu = false
l_0_4.tGetOnDeathOverrides = l_0_5
l_0_4 = s030_baselab
l_0_5 = function()
  -- function num : 0_4
  return s030_baselab.tGetOnDeathOverrides
end

l_0_4.GetOnDeathOverrides = l_0_5
l_0_4 = s030_baselab
l_0_5 = function()
  -- function num : 0_5
end

l_0_4.OnBeforeGenerate = l_0_5
l_0_4 = s030_baselab
l_0_5 = function(l_7_0, l_7_1)
  -- function num : 0_6
  -- DECOMPILER ERROR at PC1: Confused about usage of register: R2 in 'UnsetPending'

  CurrentScenario.oEmmyEntity = l_7_1
  ;
  (AI.SetWorldGraphToEmmy)("LE_WorldGraph", l_7_1.sName)
  ;
  (s030_baselab.ChangePatrolEmmy)("PATROLROUTE_01")
  print("EMMY: Generation OK. Starting patrol: " .. (l_7_1.AI).sCurrentPatrol)
end

l_0_4.OnEmmyBaseLabGenerated = l_0_5
l_0_4 = s030_baselab
l_0_5 = function()
  -- function num : 0_7
  -- DECOMPILER ERROR at PC13: Confused about usage of register: R0 in 'UnsetPending'

  if (Scenario.CheckEmmyAlive)(CurrentScenario.oEmmyEntity) and CurrentScenario.oEmmyEntity ~= nil then
    (CurrentScenario.oEmmyEntity).bEnabled = false
    print("EMMY DESACTIVADO")
  end
end

l_0_4.OnEnter_EmmyLAB_Deactivation = l_0_5
l_0_4 = s030_baselab
l_0_5 = function()
  -- function num : 0_8 , upvalues : l_0_1
  print("ACTIVANDO EMMY")
  ;
  (GUI.AddEmmyMissionLogEntry)("#MLOG_ENCOUNTER_EMMY_LAB")
  local l_9_0 = (Game.GetActor)("TG_EmmyLAB_Deactivation")
  if l_9_0 ~= nil then
    l_9_0.bEnabled = false
  end
  ;
  (Scenario.WriteToBlackboard)((Scenario.LUAPropIDs).LAB_EMMY_SPAWNED, "b", true)
  l_0_1 = true
  do
    if (Scenario.CheckEmmyAlive)(CurrentScenario.oEmmyEntity) and CurrentScenario.oEmmyEntity ~= nil then
      local l_9_1 = (Game.GetActor)("LM_EmmyPresentation")
      -- DECOMPILER ERROR at PC41: Confused about usage of register: R2 in 'UnsetPending'

      ;
      (CurrentScenario.oEmmyEntity).bEnabled = false
      -- DECOMPILER ERROR at PC45: Confused about usage of register: R2 in 'UnsetPending'

      ;
      (CurrentScenario.oEmmyEntity).vPos = l_9_1.vPos
      -- DECOMPILER ERROR at PC49: Confused about usage of register: R2 in 'UnsetPending'

      ;
      (CurrentScenario.oEmmyEntity).vAng = l_9_1.vAng
      -- DECOMPILER ERROR at PC52: Confused about usage of register: R2 in 'UnsetPending'

      ;
      (CurrentScenario.oEmmyEntity).bEnabled = true
      print("EMMY REACTIVADO")
    end
    local l_9_2 = (Game.GetActor)("doorshutter_001")
    if l_9_2 ~= nil then
      (l_9_2.ANIMATION):SetAction("opened", true)
    end
  end
end

l_0_4.OnEnter_EmmyLAB_Presentation = l_0_5
l_0_4 = s030_baselab
l_0_5 = function()
  -- function num : 0_9
  if (Scenario.CheckEmmyAlive)(CurrentScenario.oEmmyEntity) then
    ((CurrentScenario.oEmmyEntity).AI):ForceStartChase()
  end
end

l_0_4.EmmyLabSpawnSequenceEnd = l_0_5
l_0_4 = s030_baselab
l_0_5 = function()
  -- function num : 0_10
  (GUI.ShowMessage)("#BASELAB_EMMY_PRESENTATION", true, "")
  local l_11_0 = (Game.GetPlayer)()
  if l_11_0 ~= nil then
    (l_11_0.INPUT):IgnoreInput(false, false, "OnEnter_EmmyLAB_Presentation")
  end
  if (Scenario.CheckEmmyAlive)(CurrentScenario.oEmmyEntity) and CurrentScenario.oEmmyEntity ~= nil then
    local l_11_1 = (Game.GetActor)("LM_EmmyPresentation")
    -- DECOMPILER ERROR at PC34: Confused about usage of register: R2 in 'UnsetPending'

    ;
    (CurrentScenario.oEmmyEntity).bEnabled = false
    -- DECOMPILER ERROR at PC38: Confused about usage of register: R2 in 'UnsetPending'

    ;
    (CurrentScenario.oEmmyEntity).vPos = l_11_1.vPos
    -- DECOMPILER ERROR at PC42: Confused about usage of register: R2 in 'UnsetPending'

    ;
    (CurrentScenario.oEmmyEntity).vAng = l_11_1.vAng
    -- DECOMPILER ERROR at PC45: Confused about usage of register: R2 in 'UnsetPending'

    ;
    (CurrentScenario.oEmmyEntity).bEnabled = true
    print("EMMY REACTIVADO")
  end
end

l_0_4.DelayedEmmyLABSpawnSequence = l_0_5
l_0_4 = s030_baselab
l_0_5 = function()
  -- function num : 0_11
  (Game.PushSetup)("PostEmmy", true, true)
end

l_0_4.OnEmmyBaseLabDead = l_0_5
l_0_4 = s030_baselab
l_0_5 = function()
  -- function num : 0_12
  ((Game.GetActor)("TG_EnablePostEmmyEnemies")).bEnabled = true
  local l_13_0 = (Game.GetActor)("centralunitmagmacontroller")
  if l_13_0 ~= nil then
    (l_13_0.CENTRALUNIT):OnEmmyAbilityObtainedFadeOutCompleted()
  end
end

l_0_4.OnEmmyAbilityObtainedFadeOutCompleted = l_0_5
l_0_4 = s030_baselab
l_0_5 = function()
  -- function num : 0_13
  (GUI.ShowMessage)("#PLACEHOLDER_EMMYBASELAB_KILLED", true, "")
  local l_14_0 = (Game.GetPlayer)()
  if l_14_0 ~= nil then
    (l_14_0.INPUT):IgnoreInput(false, false, "OnEmmyBaseLabDead")
  end
end

l_0_4.DelayedOnEmmyBaseLabDead = l_0_5
l_0_4 = s030_baselab
l_0_5 = function()
  -- function num : 0_14
end

l_0_4.OnEmmyDeathMessageSkipped = l_0_5
l_0_4 = s030_baselab
l_0_5 = function()
  -- function num : 0_15
  local l_16_0 = (Game.GetActor)("centralunitmagmacontroller")
  if l_16_0 ~= nil then
    (l_16_0.CENTRALUNIT):UnlockDoors()
  else
    print("CENTRAL_UNIT: centralunitmagmacontroller not found")
  end
end

l_0_4.OnUnlockEmmyDoors = l_0_5
l_0_4 = s030_baselab
l_0_5 = function()
  -- function num : 0_16
  local l_17_0 = (Game.GetActor)("centralunitmagmacontroller")
  if l_17_0 ~= nil then
    (l_17_0.CENTRALUNIT):UnlockDoors()
  else
    print("CENTRAL_UNIT: centralunitbaselabcontroller not found")
  end
end

l_0_4.OnUnlockEmmyDoors = l_0_5
l_0_4 = s030_baselab
l_0_5 = function()
  -- function num : 0_17
  local l_18_0 = (Game.GetActor)("centralunitmagmacontroller")
  if l_18_0 ~= nil then
    (l_18_0.CENTRALUNIT):LockDoors()
  else
    print("CENTRAL_UNIT: centralunitbaselabcontroller not found")
  end
end

l_0_4.OnLockEmmyDoors = l_0_5
l_0_4 = s030_baselab
l_0_5 = function()
  -- function num : 0_18
  (s030_baselab.OnLockEmmyDoors)()
end

l_0_4.OnCheckpoint_SpeedBooster = l_0_5
l_0_4 = s030_baselab
l_0_5 = function()
  -- function num : 0_19
  local l_20_0 = (Game.GetActor)("SP_Emmy")
  if l_20_0 ~= nil then
    (l_20_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_01")
    ;
    (l_20_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_02")
    ;
    (l_20_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_03")
    ;
    (l_20_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_04")
    ;
    (l_20_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_05")
    ;
    (l_20_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_06")
    ;
    (l_20_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_07")
    ;
    (l_20_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_08")
    ;
    (l_20_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_09")
    ;
    (l_20_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_10")
    ;
    (l_20_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_11")
    ;
    (l_20_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_12")
    ;
    (l_20_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_13")
    ;
    (l_20_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_14")
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
  ;
  (AI.AddPatrol)("LE_WorldGraph", "PATROLROUTE_11", "LS_PATROLEMMY_11")
  ;
  (AI.AddPatrol)("LE_WorldGraph", "PATROLROUTE_12", "LS_PATROLEMMY_12")
  ;
  (AI.AddPatrol)("LE_WorldGraph", "PATROLROUTE_13", "LS_PATROLEMMY_13")
  ;
  (AI.AddPatrol)("LE_WorldGraph", "PATROLROUTE_14", "LS_PATROLEMMY_14")
  print("s030_baselab.PatrolRoutesGeneration(): Patrol designation OK")
end

l_0_4.PatrolRoutesGeneration = l_0_5
l_0_4 = s030_baselab
l_0_5 = function()
  -- function num : 0_20
  local l_21_0 = AI.SetPatrolFinalNode
  local l_21_1 = "LE_WorldGraph"
  local l_21_2 = "PATROLROUTE_01"
  local l_21_3 = {}
  -- DECOMPILER ERROR at PC6: No list found for R3 , SetList fails

  -- DECOMPILER ERROR at PC7: Overwrote pending register: R4 in 'AssignReg'

  l_21_0(l_21_1, l_21_2, l_21_3, "WorldGraph_21")
  l_21_0 = AI
  l_21_0 = l_21_0.SetPatrolFinalNode
  l_21_1 = "LE_WorldGraph"
  l_21_2 = "PATROLROUTE_01"
  l_21_0(l_21_1, l_21_2, l_21_3, 1)
  l_21_3 = {"WorldGraph_16", "WorldGraph_15"}
  l_21_0 = AI
  l_21_0 = l_21_0.SetPatrolFinalNode
  l_21_1 = "LE_WorldGraph"
  l_21_2 = "PATROLROUTE_02"
  l_21_0(l_21_1, l_21_2, l_21_3, 0)
  l_21_3 = {"WorldGraph_5", "WorldGraph_11"}
  l_21_0 = AI
  l_21_0 = l_21_0.SetPatrolFinalNode
  l_21_1 = "LE_WorldGraph"
  l_21_2 = "PATROLROUTE_02"
  l_21_0(l_21_1, l_21_2, l_21_3, 1)
  l_21_3 = {"WorldGraph_21"}
  l_21_0 = AI
  l_21_0 = l_21_0.SetPatrolFinalNode
  l_21_1 = "LE_WorldGraph"
  l_21_2 = "PATROLROUTE_03"
  l_21_0(l_21_1, l_21_2, l_21_3, 0)
  l_21_3 = {"WorldGraph_22", "WorldGraph_24"}
  l_21_0 = AI
  l_21_0 = l_21_0.SetPatrolFinalNode
  l_21_1 = "LE_WorldGraph"
  l_21_2 = "PATROLROUTE_03"
  l_21_0(l_21_1, l_21_2, l_21_3, 1)
  l_21_3 = {"WorldGraph_26"}
  l_21_0 = AI
  l_21_0 = l_21_0.SetPatrolFinalNode
  l_21_1 = "LE_WorldGraph"
  l_21_2 = "PATROLROUTE_04"
  l_21_0(l_21_1, l_21_2, l_21_3, 0)
  l_21_3 = {"WorldGraph_57", "WorldGraph_56"}
  l_21_0 = AI
  l_21_0 = l_21_0.SetPatrolFinalNode
  l_21_1 = "LE_WorldGraph"
  l_21_2 = "PATROLROUTE_04"
  l_21_0(l_21_1, l_21_2, l_21_3, 1)
  l_21_3 = {"WorldGraph_30", "WorldGraph_31"}
  l_21_0 = AI
  l_21_0 = l_21_0.SetPatrolFinalNode
  l_21_1 = "LE_WorldGraph"
  l_21_2 = "PATROLROUTE_05"
  l_21_0(l_21_1, l_21_2, l_21_3, 0)
  l_21_3 = {"WorldGraph_56", "WorldGraph_38"}
  l_21_0 = AI
  l_21_0 = l_21_0.SetPatrolFinalNode
  l_21_1 = "LE_WorldGraph"
  l_21_2 = "PATROLROUTE_05"
  l_21_0(l_21_1, l_21_2, l_21_3, 1)
  l_21_3 = {"WorldGraph_46"}
  l_21_0 = AI
  l_21_0 = l_21_0.SetPatrolFinalNode
  l_21_1 = "LE_WorldGraph"
  l_21_2 = "PATROLROUTE_06"
  l_21_0(l_21_1, l_21_2, l_21_3, 0)
  l_21_3 = {"WorldGraph_46", "WorldGraph_47"}
  l_21_0 = AI
  l_21_0 = l_21_0.SetPatrolFinalNode
  l_21_1 = "LE_WorldGraph"
  l_21_2 = "PATROLROUTE_06"
  l_21_0(l_21_1, l_21_2, l_21_3, 1)
  l_21_3 = {"WorldGraph_56"}
  l_21_0 = AI
  l_21_0 = l_21_0.SetPatrolFinalNode
  l_21_1 = "LE_WorldGraph"
  l_21_2 = "PATROLROUTE_06"
  l_21_0(l_21_1, l_21_2, l_21_3, 2)
  l_21_3 = {"WorldGraph_31", "WorldGraph_35"}
  l_21_0 = AI
  l_21_0 = l_21_0.SetPatrolFinalNode
  l_21_1 = "LE_WorldGraph"
  l_21_2 = "PATROLROUTE_06"
  l_21_0(l_21_1, l_21_2, l_21_3, 3)
  l_21_3 = {"WorldGraph_55"}
  l_21_0 = AI
  l_21_0 = l_21_0.SetPatrolFinalNode
  l_21_1 = "LE_WorldGraph"
  l_21_2 = "PATROLROUTE_07"
  l_21_0(l_21_1, l_21_2, l_21_3, 0)
  l_21_3 = {"WorldGraph_65"}
  l_21_0 = AI
  l_21_0 = l_21_0.SetPatrolFinalNode
  l_21_1 = "LE_WorldGraph"
  l_21_2 = "PATROLROUTE_07"
  l_21_0(l_21_1, l_21_2, l_21_3, 1)
  l_21_3 = {"WorldGraph_56"}
  l_21_0 = AI
  l_21_0 = l_21_0.SetPatrolFinalNode
  l_21_1 = "LE_WorldGraph"
  l_21_2 = "PATROLROUTE_08"
  l_21_0(l_21_1, l_21_2, l_21_3, 0)
  l_21_3 = {"WorldGraph_60"}
  l_21_0 = AI
  l_21_0 = l_21_0.SetPatrolFinalNode
  l_21_1 = "LE_WorldGraph"
  l_21_2 = "PATROLROUTE_08"
  l_21_0(l_21_1, l_21_2, l_21_3, 1)
  l_21_3 = {"WorldGraph_72"}
  l_21_0 = AI
  l_21_0 = l_21_0.SetPatrolFinalNode
  l_21_1 = "LE_WorldGraph"
  l_21_2 = "PATROLROUTE_09"
  l_21_0(l_21_1, l_21_2, l_21_3, 0)
  l_21_3 = {"WorldGraph_60"}
  l_21_0 = AI
  l_21_0 = l_21_0.SetPatrolFinalNode
  l_21_1 = "LE_WorldGraph"
  l_21_2 = "PATROLROUTE_09"
  l_21_0(l_21_1, l_21_2, l_21_3, 1)
  l_21_3 = {"WorldGraph_81"}
  l_21_0 = AI
  l_21_0 = l_21_0.SetPatrolFinalNode
  l_21_1 = "LE_WorldGraph"
  l_21_2 = "PATROLROUTE_10"
  l_21_0(l_21_1, l_21_2, l_21_3, 0)
  l_21_3 = {"WorldGraph_75"}
  l_21_0 = AI
  l_21_0 = l_21_0.SetPatrolFinalNode
  l_21_1 = "LE_WorldGraph"
  l_21_2 = "PATROLROUTE_10"
  l_21_0(l_21_1, l_21_2, l_21_3, 1)
  l_21_3 = {"WorldGraph_81"}
  l_21_0 = AI
  l_21_0 = l_21_0.SetPatrolFinalNode
  l_21_1 = "LE_WorldGraph"
  l_21_2 = "PATROLROUTE_11"
  l_21_0(l_21_1, l_21_2, l_21_3, 0)
  l_21_3 = {"WorldGraph_1"}
  l_21_0 = AI
  l_21_0 = l_21_0.SetPatrolFinalNode
  l_21_1 = "LE_WorldGraph"
  l_21_2 = "PATROLROUTE_11"
  l_21_0(l_21_1, l_21_2, l_21_3, 0)
  l_21_3 = {"WorldGraph_11"}
  l_21_0 = AI
  l_21_0 = l_21_0.SetPatrolFinalNode
  l_21_1 = "LE_WorldGraph"
  l_21_2 = "PATROLROUTE_11"
  l_21_0(l_21_1, l_21_2, l_21_3, 1)
  l_21_3 = {"WorldGraph_17"}
  l_21_0 = AI
  l_21_0 = l_21_0.SetPatrolFinalNode
  l_21_1 = "LE_WorldGraph"
  l_21_2 = "PATROLROUTE_12"
  l_21_0(l_21_1, l_21_2, l_21_3, 0)
  l_21_3 = {"WorldGraph_100", "WorldGraph_98"}
  l_21_0 = AI
  l_21_0 = l_21_0.SetPatrolFinalNode
  l_21_1 = "LE_WorldGraph"
  l_21_2 = "PATROLROUTE_12"
  l_21_0(l_21_1, l_21_2, l_21_3, 0)
  l_21_3 = {"WorldGraph_94", "WorldGraph_93"}
  l_21_0 = AI
  l_21_0 = l_21_0.SetPatrolFinalNode
  l_21_1 = "LE_WorldGraph"
  l_21_2 = "PATROLROUTE_12"
  l_21_0(l_21_1, l_21_2, l_21_3, 1)
  l_21_3 = {"WorldGraph_87", "WorldGraph_84"}
  l_21_0 = AI
  l_21_0 = l_21_0.SetPatrolFinalNode
  l_21_1 = "LE_WorldGraph"
  l_21_2 = "PATROLROUTE_12"
  l_21_0(l_21_1, l_21_2, l_21_3, 1)
  l_21_3 = {"WorldGraph_85", "WorldGraph_86"}
  l_21_0 = AI
  l_21_0 = l_21_0.SetPatrolFinalNode
  l_21_1 = "LE_WorldGraph"
  l_21_2 = "PATROLROUTE_13"
  l_21_0(l_21_1, l_21_2, l_21_3, 0)
  l_21_3 = {"WorldGraph_109"}
  l_21_0 = AI
  l_21_0 = l_21_0.SetPatrolFinalNode
  l_21_1 = "LE_WorldGraph"
  l_21_2 = "PATROLROUTE_14"
  l_21_0(l_21_1, l_21_2, l_21_3, 0)
  l_21_3 = {"WorldGraph_109"}
  l_21_0 = AI
  l_21_0 = l_21_0.SetPatrolFinalNode
  l_21_1 = "LE_WorldGraph"
  l_21_2 = "PATROLROUTE_14"
  l_21_0(l_21_1, l_21_2, l_21_3, 1)
  l_21_3 = {"WorldGraph_117"}
  l_21_0 = AI
  l_21_0 = l_21_0.SetPatrolFinalNode
  l_21_1 = "LE_WorldGraph"
  l_21_2 = "PATROLROUTE_14"
  l_21_0(l_21_1, l_21_2, l_21_3, 2)
  l_21_3 = {"WorldGraph_115"}
  l_21_0 = AI
  l_21_0 = l_21_0.SetPatrolFinalNode
  l_21_1 = "LE_WorldGraph"
  l_21_2 = "PATROLROUTE_14"
  l_21_0(l_21_1, l_21_2, l_21_3, 3)
  l_21_3 = {"WorldGraph_111", "WorldGraph_112"}
  l_21_0 = AI
  l_21_0 = l_21_0.SetPatrolFinalNode
  l_21_1 = "LE_WorldGraph"
  l_21_2 = "PATROLROUTE_14"
  l_21_0(l_21_1, l_21_2, l_21_3, 4)
  l_21_3 = {"WorldGraph_101"}
  l_21_0 = AI
  l_21_0 = l_21_0.SetPatrolFinalNode
  l_21_1 = "LE_WorldGraph"
  l_21_2 = "PATROLROUTE_14"
  l_21_0(l_21_1, l_21_2, l_21_3, 5)
  l_21_3 = {"WorldGraph_107", "WorldGraph_105"}
  l_21_0 = AI
  l_21_0 = l_21_0.SetPatrolFinalNode
  l_21_1 = "LE_WorldGraph"
  l_21_2 = "PATROLROUTE_14"
  l_21_0(l_21_1, l_21_2, l_21_3, 6)
  l_21_3 = {"WorldGraph_104"}
  l_21_0 = print
  l_21_1 = "s030_baselab.PatrolRoutesFinalNodesAssignation(): Final Nodes Assignation OK"
  l_21_0(l_21_1)
end

l_0_4.PatrolRoutesFinalNodesAssignation = l_0_5
l_0_4 = s030_baselab
l_0_5 = function(l_22_0)
  -- function num : 0_21
  -- DECOMPILER ERROR at PC10: Confused about usage of register: R1 in 'UnsetPending'

  if (Scenario.CheckEmmyAlive)(CurrentScenario.oEmmyEntity) then
    ((CurrentScenario.oEmmyEntity).AI).sCurrentPatrol = l_22_0
    print("EMMY: Assigned route " .. l_22_0)
  else
    print("EMMY: Not found, route " .. l_22_0 .. " not assigned")
  end
end

l_0_4.ChangePatrolEmmy = l_0_5
l_0_4 = s030_baselab
l_0_5 = function(l_23_0, l_23_1)
  -- function num : 0_22
  local l_23_2 = (string.gsub)(l_23_0.sName, "TG_PATROLEMMYACTIVATOR_", "PATROLROUTE_")
  ;
  (s030_baselab.ChangePatrolEmmy)(l_23_2)
end

l_0_4.OnEnter_PatrolEmmyActivator = l_0_5
l_0_4 = s030_baselab
l_0_5 = function(l_24_0, l_24_1)
  -- function num : 0_23
end

l_0_4.OnExit_PatrolEmmyActivator = l_0_5
l_0_4 = s030_baselab
l_0_5 = function()
  -- function num : 0_24 , upvalues : l_0_3
  if (Scenario.CheckEmmyAlive)(CurrentScenario.oEmmyEntity) and CurrentScenario.oEmmyEntity ~= nil then
    l_0_3 = true
    local l_25_0 = (Game.GetActor)("LM_EmmySpawnAfterAqua")
    -- DECOMPILER ERROR at PC19: Confused about usage of register: R1 in 'UnsetPending'

    ;
    (CurrentScenario.oEmmyEntity).bEnabled = false
    -- DECOMPILER ERROR at PC23: Confused about usage of register: R1 in 'UnsetPending'

    ;
    (CurrentScenario.oEmmyEntity).vPos = l_25_0.vPos
    -- DECOMPILER ERROR at PC27: Confused about usage of register: R1 in 'UnsetPending'

    ;
    (CurrentScenario.oEmmyEntity).vAng = l_25_0.vAng
    -- DECOMPILER ERROR at PC30: Confused about usage of register: R1 in 'UnsetPending'

    ;
    (CurrentScenario.oEmmyEntity).bEnabled = true
    ;
    (s030_baselab.ChangePatrolEmmy)("PATROLROUTE_13")
  end
end

l_0_4.OnEnter_EmmySpawnAfterAqua = l_0_5
l_0_4 = s030_baselab
l_0_4.tEmmyDoor = nil
l_0_4 = s030_baselab
l_0_5 = function(l_26_0, l_26_1, l_26_2)
  -- function num : 0_25 , upvalues : l_0_1
  -- DECOMPILER ERROR at PC17: Unhandled construct in 'MakeBoolean' P1

  if (Scenario.CheckEmmyAlive)(CurrentScenario.oEmmyEntity) and l_0_1 and l_26_1 and CurrentScenario.oEmmyEntity ~= nil then
    local l_26_3 = nil
    if l_26_2 then
      l_26_3 = (s030_baselab.HardEmmyRelocationDoor)(l_26_0)
    else
      l_26_3 = (s030_baselab.EmmyRelocationDoor)(l_26_0)
    end
    if l_26_3 ~= nil then
      local l_26_4 = (Game.GetActor)(l_26_3)
      print(l_26_4.sName)
      -- DECOMPILER ERROR at PC41: Confused about usage of register: R5 in 'UnsetPending'

      ;
      (CurrentScenario.oEmmyEntity).bEnabled = false
      -- DECOMPILER ERROR at PC45: Confused about usage of register: R5 in 'UnsetPending'

      ;
      (CurrentScenario.oEmmyEntity).vPos = l_26_4.vPos
      -- DECOMPILER ERROR at PC49: Confused about usage of register: R5 in 'UnsetPending'

      ;
      (CurrentScenario.oEmmyEntity).vAng = l_26_4.vAng
      -- DECOMPILER ERROR at PC52: Confused about usage of register: R5 in 'UnsetPending'

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

l_0_4.OnWalkThroughEmmyDoor = l_0_5
l_0_4 = s030_baselab
l_0_5 = function(l_27_0)
  -- function num : 0_26 , upvalues : l_0_3
  print("Door: Hard " .. l_27_0.sName)
  if l_27_0.sName == "dooremmy_000" then
    local l_27_1 = s030_baselab
    local l_27_2 = {}
    -- DECOMPILER ERROR at PC11: No list found for R2 , SetList fails

  else
    do
      if l_27_0.sName == "dooremmy_001" then
        local l_27_3 = s030_baselab
        local l_27_4 = {}
        -- DECOMPILER ERROR at PC19: Overwrote pending register: R3 in 'AssignReg'

        -- DECOMPILER ERROR at PC20: No list found for R2 , SetList fails

      else
        do
          if l_27_0.sName == "dooremmy_003" then
            local l_27_5 = s030_baselab
            local l_27_6 = {}
            -- DECOMPILER ERROR at PC28: Overwrote pending register: R3 in 'AssignReg'

            -- DECOMPILER ERROR at PC29: No list found for R2 , SetList fails

          else
            do
              if l_27_0.sName == "dooremmy_004" then
                local l_27_7 = s030_baselab
                local l_27_8 = {}
                -- DECOMPILER ERROR at PC37: Overwrote pending register: R3 in 'AssignReg'

                -- DECOMPILER ERROR at PC38: No list found for R2 , SetList fails

              else
                do
                  if l_27_0.sName == "dooremmy_005" then
                    local l_27_9 = s030_baselab
                    local l_27_10 = {}
                    -- DECOMPILER ERROR at PC46: Overwrote pending register: R3 in 'AssignReg'

                    -- DECOMPILER ERROR at PC47: No list found for R2 , SetList fails

                  else
                    do
                      if l_27_0.sName == "dooremmy_006" then
                        local l_27_11 = s030_baselab
                        local l_27_12 = {}
                        -- DECOMPILER ERROR at PC55: Overwrote pending register: R3 in 'AssignReg'

                        -- DECOMPILER ERROR at PC56: No list found for R2 , SetList fails

                      else
                        do
                          if l_27_0.sName == "dooremmy_008" then
                            local l_27_13 = s030_baselab
                            local l_27_14 = {}
                            -- DECOMPILER ERROR at PC64: Overwrote pending register: R3 in 'AssignReg'

                            -- DECOMPILER ERROR at PC65: No list found for R2 , SetList fails

                          else
                            do
                              if l_27_0.sName == "dooremmy_009" then
                                local l_27_15 = s030_baselab
                                local l_27_16 = {}
                                -- DECOMPILER ERROR at PC73: Overwrote pending register: R3 in 'AssignReg'

                                -- DECOMPILER ERROR at PC74: No list found for R2 , SetList fails

                              else
                                do
                                  if l_27_0.sName == "dooremmy_010" then
                                    local l_27_17 = s030_baselab
                                    local l_27_18 = {}
                                    -- DECOMPILER ERROR at PC82: Overwrote pending register: R3 in 'AssignReg'

                                    -- DECOMPILER ERROR at PC83: No list found for R2 , SetList fails

                                  else
                                    do
                                      if l_27_0.sName == "dooremmy_012" then
                                        if l_0_3 then
                                          return "nil"
                                        else
                                          local l_27_19 = s030_baselab
                                          local l_27_20 = {}
                                          -- DECOMPILER ERROR at PC99: Overwrote pending register: R3 in 'AssignReg'

                                          -- DECOMPILER ERROR at PC100: No list found for R2 , SetList fails

                                        end
                                      else
                                        do
                                          -- DECOMPILER ERROR at PC104: Confused about usage of register: R1 in 'UnsetPending'

                                          -- DECOMPILER ERROR at PC113: Overwrote pending register: R3 in 'AssignReg'

                                          if s030_baselab.tEmmyDoor ~= nil then
                                            return (s030_baselab.tEmmyDoor)[(math.random)((("LM_EmmyEntrancePoint_000").maxn)(s030_baselab.tEmmyDoor))]
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
              end
            end
          end
        end
      end
    end
  end
end

l_0_4.HardEmmyRelocationDoor = l_0_5
l_0_4 = s030_baselab
l_0_5 = function(l_28_0)
  -- function num : 0_27 , upvalues : l_0_3
  if l_28_0.sName == "dooremmy_000" then
    local l_28_1 = s030_baselab
    local l_28_2 = {}
    -- DECOMPILER ERROR at PC9: No list found for R2 , SetList fails

  else
    do
      if l_28_0.sName == "dooremmy_001" then
        local l_28_3 = s030_baselab
        local l_28_4 = {}
        -- DECOMPILER ERROR at PC17: Overwrote pending register: R3 in 'AssignReg'

        -- DECOMPILER ERROR at PC18: Overwrote pending register: R4 in 'AssignReg'

        -- DECOMPILER ERROR at PC19: Overwrote pending register: R5 in 'AssignReg'

        -- DECOMPILER ERROR at PC20: No list found for R2 , SetList fails

      else
        do
          if l_28_0.sName == "dooremmy_003" then
            local l_28_5 = s030_baselab
            local l_28_6 = {}
            -- DECOMPILER ERROR at PC28: Overwrote pending register: R3 in 'AssignReg'

            -- DECOMPILER ERROR at PC29: Overwrote pending register: R4 in 'AssignReg'

            -- DECOMPILER ERROR at PC30: No list found for R2 , SetList fails

          else
            do
              if l_28_0.sName == "dooremmy_004" then
                local l_28_7 = s030_baselab
                local l_28_8 = {}
                -- DECOMPILER ERROR at PC38: Overwrote pending register: R3 in 'AssignReg'

                -- DECOMPILER ERROR at PC39: Overwrote pending register: R4 in 'AssignReg'

                -- DECOMPILER ERROR at PC40: Overwrote pending register: R5 in 'AssignReg'

                -- DECOMPILER ERROR at PC41: No list found for R2 , SetList fails

              else
                do
                  if l_28_0.sName == "dooremmy_005" then
                    local l_28_9 = s030_baselab
                    local l_28_10 = {}
                    -- DECOMPILER ERROR at PC49: Overwrote pending register: R3 in 'AssignReg'

                    -- DECOMPILER ERROR at PC50: Overwrote pending register: R4 in 'AssignReg'

                    -- DECOMPILER ERROR at PC51: Overwrote pending register: R5 in 'AssignReg'

                    -- DECOMPILER ERROR at PC52: No list found for R2 , SetList fails

                  else
                    do
                      if l_28_0.sName == "dooremmy_006" then
                        local l_28_11 = s030_baselab
                        local l_28_12 = {}
                        -- DECOMPILER ERROR at PC60: Overwrote pending register: R3 in 'AssignReg'

                        -- DECOMPILER ERROR at PC61: Overwrote pending register: R4 in 'AssignReg'

                        -- DECOMPILER ERROR at PC62: Overwrote pending register: R5 in 'AssignReg'

                        -- DECOMPILER ERROR at PC63: No list found for R2 , SetList fails

                      else
                        do
                          if l_28_0.sName == "dooremmy_008" then
                            local l_28_13 = s030_baselab
                            local l_28_14 = {}
                            -- DECOMPILER ERROR at PC71: Overwrote pending register: R3 in 'AssignReg'

                            -- DECOMPILER ERROR at PC72: Overwrote pending register: R4 in 'AssignReg'

                            -- DECOMPILER ERROR at PC73: Overwrote pending register: R5 in 'AssignReg'

                            -- DECOMPILER ERROR at PC74: No list found for R2 , SetList fails

                          else
                            do
                              if l_28_0.sName == "dooremmy_009" then
                                local l_28_15 = s030_baselab
                                local l_28_16 = {}
                                -- DECOMPILER ERROR at PC82: Overwrote pending register: R3 in 'AssignReg'

                                -- DECOMPILER ERROR at PC83: Overwrote pending register: R4 in 'AssignReg'

                                -- DECOMPILER ERROR at PC84: No list found for R2 , SetList fails

                              else
                                do
                                  if l_28_0.sName == "dooremmy_010" then
                                    local l_28_17 = s030_baselab
                                    local l_28_18 = {}
                                    -- DECOMPILER ERROR at PC92: Overwrote pending register: R3 in 'AssignReg'

                                    -- DECOMPILER ERROR at PC93: Overwrote pending register: R4 in 'AssignReg'

                                    -- DECOMPILER ERROR at PC94: No list found for R2 , SetList fails

                                  else
                                    do
                                      if l_28_0.sName == "dooremmy_012" then
                                        if l_0_3 then
                                          return "nil"
                                        else
                                          local l_28_19 = s030_baselab
                                          local l_28_20 = {}
                                          -- DECOMPILER ERROR at PC110: Overwrote pending register: R3 in 'AssignReg'

                                          -- DECOMPILER ERROR at PC111: Overwrote pending register: R4 in 'AssignReg'

                                          -- DECOMPILER ERROR at PC112: Overwrote pending register: R5 in 'AssignReg'

                                          -- DECOMPILER ERROR at PC113: No list found for R2 , SetList fails

                                        end
                                      else
                                        do
                                          -- DECOMPILER ERROR at PC117: Confused about usage of register: R1 in 'UnsetPending'

                                          -- DECOMPILER ERROR at PC126: Overwrote pending register: R3 in 'AssignReg'

                                          -- DECOMPILER ERROR at PC128: Overwrote pending register: R4 in 'AssignReg'

                                          if s030_baselab.tEmmyDoor ~= nil then
                                            return (s030_baselab.tEmmyDoor)[(math.random)((("LM_EmmyEntrancePoint_000").maxn)(("LM_EmmyEntrancePoint_001").tEmmyDoor))]
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
  end
end

l_0_4.EmmyRelocationDoor = l_0_5
l_0_4 = s030_baselab
l_0_5 = function()
  -- function num : 0_28
  (Game.AddSF)(1, "s030_baselab.Checkpoint_RelocatingEmmy_CU", "")
end

l_0_4.OnTeleport_Checkpoint_CU = l_0_5
l_0_4 = s030_baselab
l_0_5 = function()
  -- function num : 0_29
  if CurrentScenario.oEmmyEntity ~= nil then
    local l_30_0 = (Game.GetActor)("LM_EmmyEntrancePoint_027")
    -- DECOMPILER ERROR at PC12: Confused about usage of register: R1 in 'UnsetPending'

    if l_30_0 ~= nil then
      (CurrentScenario.oEmmyEntity).bEnabled = false
      -- DECOMPILER ERROR at PC16: Confused about usage of register: R1 in 'UnsetPending'

      ;
      (CurrentScenario.oEmmyEntity).vPos = l_30_0.vPos
      -- DECOMPILER ERROR at PC20: Confused about usage of register: R1 in 'UnsetPending'

      ;
      (CurrentScenario.oEmmyEntity).vAng = l_30_0.vAng
      -- DECOMPILER ERROR at PC23: Confused about usage of register: R1 in 'UnsetPending'

      ;
      (CurrentScenario.oEmmyEntity).bEnabled = true
      ;
      (s030_baselab.ChangePatrolEmmy)("PATROLROUTE_12")
    end
  end
end

l_0_4.Checkpoint_RelocatingEmmy_CU = l_0_5
l_0_4 = s030_baselab
l_0_5 = function()
  -- function num : 0_30
  local l_31_0 = (Game.GetActor)("accesspoint_000")
  local l_31_1 = (Blackboard.GetProp)("GAME_PROGRESS", "ADAMDIALOGUE")
  if l_31_0 ~= nil then
    if l_31_1 == "DIAG_ADAM_MAGMA_2" then
      (l_31_0.USABLE):ActiveDialogue("DIAG_ADAM_LAB_1")
      ;
      (Blackboard.SetProp)("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_LAB_1")
    else
      if l_31_1 == "DIAG_ADAM_CAVE_4" then
        local l_31_2 = (Blackboard.GetProp)("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK")
        if l_31_2 ~= nil and l_31_2 > 0 then
          (l_31_0.USABLE):ActiveDialogue("DIAG_ADAM_AQUA_3")
          ;
          (Blackboard.SetProp)("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_AQUA_3")
        end
      end
    end
  end
end

l_0_4.OnEnter_AP_04 = l_0_5
l_0_4 = s030_baselab
l_0_5 = function()
  -- function num : 0_31
  local l_32_0 = (Game.GetActor)("accesspoint_001")
  local l_32_1 = (Blackboard.GetProp)("GAME_PROGRESS", "ADAMDIALOGUE")
  if l_32_0 ~= nil then
    if l_32_1 == "DIAG_ADAM_AQUA_1" then
      (l_32_0.USABLE):ActiveDialogue("DIAG_ADAM_LAB_2")
      ;
      (Blackboard.SetProp)("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_LAB_2")
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

l_0_4.OnEnter_AP_06 = l_0_5
l_0_4 = s030_baselab
l_0_5 = function(l_33_0, l_33_1, l_33_2, l_33_3)
  -- function num : 0_32
  (Scenario.SubAreaChangeRequest)(l_33_0, l_33_1, l_33_2, l_33_3)
end

l_0_4.SubAreaChangeRequest = l_0_5
l_0_4 = s030_baselab
l_0_5 = function(l_34_0, l_34_1, l_34_2, l_34_3, l_34_4)
  -- function num : 0_33
end

l_0_4.OnSubAreaChange = l_0_5
l_0_4 = s030_baselab
l_0_5 = function()
  -- function num : 0_34
  (Game.PushSetup)("PostBlackout", true, true)
  ;
  (Game.StopMusic)(true)
end

l_0_4.OnEnter_ActivatePostBlackout = l_0_5
l_0_4 = s030_baselab
l_0_5 = function()
  -- function num : 0_35
  local l_36_0 = (Game.GetActor)("SP_Shakernaut_001B_shakernaut")
  if l_36_0 ~= nil then
    (l_36_0.ANIMATION):SetAction("spawn_baselab_part015_relaxtopath", true)
  end
  local l_36_1 = (Game.GetActor)("SP_Shakernaut_001B")
  if l_36_1 ~= nil then
    (l_36_1.SPAWNPOINT):Deactivate()
  end
  local l_36_2 = (Game.GetActor)("SP_Shakernaut_001")
  if l_36_2 ~= nil then
    (l_36_2.SPAWNPOINT):Activate()
  end
end

l_0_4.Event_ShakerNaut_Activation = l_0_5
l_0_4 = s030_baselab
l_0_5 = function()
  -- function num : 0_36
  local l_37_0 = (Game.GetActor)("SP_Shakernaut_001B_shakernaut")
  if l_37_0 ~= nil then
    if (l_37_0.ANIMATION):IsPlayingAnim("spawn_baselab_part015_relaxtopath", false) then
      (Game.AddSF)(0, "s030_baselab.DetectingDirection", "")
    else
      local l_37_1 = (Game.GetPlayer)()
      local l_37_2 = V3D(-1, 0, 0)
      if l_37_1 ~= nil then
        l_37_2 = l_37_1.vPos - l_37_0.vPos
      end
      if l_37_2.x > 0 then
        (l_37_0.ANIMATION):SetAction("spawn_baselab_part015_turn_right", true)
        l_37_2 = V3D(1, 0, 0)
      else
        ;
        (l_37_0.ANIMATION):SetAction("spawn_baselab_part015_turn_left", true)
        l_37_2 = V3D(-1, 0, 0)
      end
      ;
      (l_37_0.AI):SetNavigationDir(l_37_2)
    end
  end
end

l_0_4.DetectingDirection = l_0_5
l_0_4 = s030_baselab
l_0_5 = function()
  -- function num : 0_37
  (Game.PushSetup)("PostBlackout2", true, true)
  ;
  (Game.StopMusic)(true)
end

l_0_4.OnEnter_ActivatePostBlackout2 = l_0_5
l_0_4 = s030_baselab
l_0_5 = function(l_39_0, l_39_1)
  -- function num : 0_38
  local l_39_2 = (Game.GetActor)("SG_PostEmmy_000")
  local l_39_3 = (Game.GetActor)("SG_PostEmmy_001")
  if l_39_2 ~= nil then
    (l_39_2.SPAWNGROUP):EnableSpawnGroup()
  end
  if l_39_3 ~= nil then
    (l_39_3.SPAWNGROUP):EnableSpawnGroup()
  end
  l_39_0.bEnabled = false
end

l_0_4.OnEnter_ActivatePostEmmyEnemies = l_0_5
l_0_4 = s030_baselab
l_0_5 = function()
  -- function num : 0_39
  (s030_baselab.EmmyLabSpawnSequenceEnd)()
  local l_40_0 = (Game.GetActor)("emmyvalve_reg_gen_002")
  if l_40_0 ~= nil then
    (l_40_0.EMMYVALVE):CleanForceStateFlag()
  end
end

l_0_4.OnCutscene39End = l_0_5

