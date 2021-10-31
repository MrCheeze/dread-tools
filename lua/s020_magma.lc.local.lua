-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: lua/s020_magma.lc.local 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC2: Confused about usage of register: R0 in 'UnsetPending'

s020_magma.main = function()
  -- function num : 0_0
  (s020_magma.PatrolRoutesGeneration)()
  ;
  (s020_magma.PatrolRoutesFinalNodesAssignation)()
end

-- DECOMPILER ERROR at PC5: Confused about usage of register: R0 in 'UnsetPending'

s020_magma.SetupDebugGameBlackboard = function()
  -- function num : 0_1
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_SPECIAL_ENERGY", "f", 1000)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_SPECIAL_ENERGY", "f", 0)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_CURRENT_LIFE", "f", 199)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_MAX_LIFE", "f", 199)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_MAX", "f", 20)
  ;
  (Blackboard.SetProp)("PLAYER_INVENTORY", "ITEM_WEAPON_MISSILE_CURRENT", "f", 20)
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

s020_magma.InitFromBlackboard = function()
  -- function num : 0_2 , upvalues : l_0_2, l_0_3, l_0_0
  (Game.ReinitPlayerFromBlackboard)()
  l_0_2 = (Scenario.ReadFromBlackboard)((Scenario.LUAPropIDs).MAGMA_COOLDOWN_APPLIED, false)
  l_0_3 = (Scenario.ReadFromBlackboard)((Scenario.LUAPropIDs).MAGMA_POSTXRELEASE_APPLIED, false)
  l_0_0 = (Blackboard.GetProp)("GAME_PROGRESS", "QUARENTINE_OPENED")
  if l_0_0 == true then
    (s020_magma.Activate_Setup_PostXRelease)()
  end
  if (Game.GetCooldownFlag)() == true then
    (s020_magma.Enable_PistonOff)()
    ;
    (s020_magma.Cooldown_Activation)()
  end
  if (Scenario.ReadFromBlackboard)((Scenario.LUAPropIDs).COOLDOWN_FINISHED, false) then
    (s020_magma.ThermalTrapChange)()
    ;
    (s020_magma.PistonDeactivation)()
  end
  if l_0_0 ~= true then
    local l_3_0 = (Game.GetActor)("ev_lavapump_mg_001")
    if l_3_0 ~= nil then
      (l_3_0.MODELUPDATER):SetMeshVisible("Slime_MESH", false)
    end
    local l_3_1 = (Game.GetActor)("fan_cooldown_000")
    if l_3_1 ~= nil then
      (l_3_1.MODELUPDATER):SetMeshVisible("Slime_MESH", false)
    end
  end
end

-- DECOMPILER ERROR at PC23: Confused about usage of register: R4 in 'UnsetPending'

s020_magma.Activate_Setup_PostXRelease = function()
  -- function num : 0_3 , upvalues : l_0_3
  if l_0_3 == false then
    (Game.PushSetup)("PostXRelease", true, true)
    ;
    (Scenario.WriteToBlackboard)((Scenario.LUAPropIDs).MAGMA_POSTXRELEASE_APPLIED, "b", true)
    l_0_3 = true
  end
end

local l_0_4 = s020_magma
local l_0_5 = {}
l_0_5.ShowDeath = true
l_0_5.GoToMainMenu = false
l_0_4.tGetOnDeathOverrides = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_4
  return s020_magma.tGetOnDeathOverrides
end

l_0_4.GetOnDeathOverrides = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_5
end

l_0_4.OnBeforeGenerate = l_0_5
l_0_4 = s020_magma
l_0_5 = function(l_7_0, l_7_1)
  -- function num : 0_6
  -- DECOMPILER ERROR at PC1: Confused about usage of register: R2 in 'UnsetPending'

  CurrentScenario.oEmmyEntity = l_7_1
  ;
  (AI.SetWorldGraphToEmmy)("LE_WorldGraph", l_7_1.sName)
  ;
  (s020_magma.ChangePatrolEmmy)("PATROLROUTE_01")
  print("EMMY: Generation OK. Starting patrol: " .. (l_7_1.AI).sCurrentPatrol)
end

l_0_4.OnEmmyMagmaGenerated = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_7
  do
    if (Scenario.CheckEmmyAlive)(CurrentScenario.oEmmyEntity) then
      local l_8_0 = (Game.GetActor)("LM_EmmyEntrancePoint_024")
      -- DECOMPILER ERROR at PC13: Confused about usage of register: R1 in 'UnsetPending'

      ;
      (CurrentScenario.oEmmyEntity).bEnabled = false
      -- DECOMPILER ERROR at PC17: Confused about usage of register: R1 in 'UnsetPending'

      ;
      (CurrentScenario.oEmmyEntity).vPos = l_8_0.vPos
      -- DECOMPILER ERROR at PC21: Confused about usage of register: R1 in 'UnsetPending'

      ;
      (CurrentScenario.oEmmyEntity).vAng = l_8_0.vAng
      -- DECOMPILER ERROR at PC24: Confused about usage of register: R1 in 'UnsetPending'

      ;
      (CurrentScenario.oEmmyEntity).bEnabled = true
    end
    ;
    (GUI.AddEmmyMissionLogEntry)("#MLOG_ENCOUNTER_EMMY_MAGMA")
  end
end

l_0_4.RelocateEmmy_AfterPresentation = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_8
  (Game.PushSetup)("PostEmmy", true, true)
end

l_0_4.OnEmmyMagmaDead = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_9
  local l_10_0 = (Game.GetActor)("centralunitmagmacontroller")
  if l_10_0 ~= nil then
    (l_10_0.CENTRALUNIT):OnEmmyAbilityObtainedFadeOutCompleted()
  end
end

l_0_4.OnEmmyAbilityObtainedFadeOutCompleted = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_10
  (GUI.ShowMessage)("#PLACEHOLDER_EMMYMAGMA_KILLED", true, "")
  local l_11_0 = (Game.GetPlayer)()
  if l_11_0 ~= nil then
    (l_11_0.INPUT):IgnoreInput(false, false, "OnEmmyMagmaDead")
  end
end

l_0_4.DelayedOnEmmyMagmaDead = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_11
end

l_0_4.OnEmmyDeathMessageSkipped = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_12
  local l_13_0 = (Game.GetActor)("centralunitmagmacontroller")
  if l_13_0 ~= nil then
    (l_13_0.CENTRALUNIT):UnlockDoors()
  else
    print("CENTRAL_UNIT: centralunitmagmacontroller not found")
  end
end

l_0_4.OnUnlockEmmyDoors = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_13
  local l_14_0 = (Game.GetActor)("centralunitmagmacontroller")
  if l_14_0 ~= nil then
    (l_14_0.CENTRALUNIT):LockDoors()
  else
    print("CENTRAL_UNIT: centralunitmagmacontroller not found")
  end
end

l_0_4.OnLockEmmyDoors = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_14
  (s020_magma.OnLockEmmyDoors)()
end

l_0_4.OnCheckpoint_MorphBall = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_15
  local l_16_0 = (Game.GetActor)("SP_Emmy")
  if l_16_0 ~= nil then
    (l_16_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_01")
    ;
    (l_16_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_02")
    ;
    (l_16_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_03")
    ;
    (l_16_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_04")
    ;
    (l_16_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_05")
    ;
    (l_16_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_06")
    ;
    (l_16_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_07")
    ;
    (l_16_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_08")
    ;
    (l_16_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_09")
    ;
    (l_16_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_10")
    ;
    (l_16_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_11")
    ;
    (l_16_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_12")
    ;
    (l_16_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_13")
    ;
    (l_16_0.SPAWNPOINT):AddPatrolShape("LS_PATROLEMMY_14")
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
  print("s020_magma.PatrolRoutesGeneration(): Patrol designation OK")
end

l_0_4.PatrolRoutesGeneration = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_16
  local l_17_0 = AI.SetPatrolFinalNode
  local l_17_1 = "LE_WorldGraph"
  local l_17_2 = "PATROLROUTE_01"
  local l_17_3 = {}
  -- DECOMPILER ERROR at PC6: No list found for R3 , SetList fails

  -- DECOMPILER ERROR at PC7: Overwrote pending register: R4 in 'AssignReg'

  l_17_0(l_17_1, l_17_2, l_17_3, "WorldGraph_41")
  l_17_0 = AI
  l_17_0 = l_17_0.SetPatrolFinalNode
  l_17_1 = "LE_WorldGraph"
  l_17_2 = "PATROLROUTE_01"
  l_17_0(l_17_1, l_17_2, l_17_3, 1)
  l_17_3 = {"WorldGraph_38"}
  l_17_0 = AI
  l_17_0 = l_17_0.SetPatrolFinalNode
  l_17_1 = "LE_WorldGraph"
  l_17_2 = "PATROLROUTE_02"
  l_17_0(l_17_1, l_17_2, l_17_3, 0)
  l_17_3 = {"WorldGraph_4", "WorldGraph_36"}
  l_17_0 = AI
  l_17_0 = l_17_0.SetPatrolFinalNode
  l_17_1 = "LE_WorldGraph"
  l_17_2 = "PATROLROUTE_02"
  l_17_0(l_17_1, l_17_2, l_17_3, 0)
  l_17_3 = {"WorldGraph_62", "WorldGraph_81"}
  l_17_0 = AI
  l_17_0 = l_17_0.SetPatrolFinalNode
  l_17_1 = "LE_WorldGraph"
  l_17_2 = "PATROLROUTE_02"
  l_17_0(l_17_1, l_17_2, l_17_3, 1)
  l_17_3 = {"WorldGraph_0", "WorldGraph_13", "WorldGraph_12"}
  l_17_0 = AI
  l_17_0 = l_17_0.SetPatrolFinalNode
  l_17_1 = "LE_WorldGraph"
  l_17_2 = "PATROLROUTE_02"
  l_17_0(l_17_1, l_17_2, l_17_3, 1)
  l_17_3 = {"WorldGraph_11", "WorldGraph_59"}
  l_17_0 = AI
  l_17_0 = l_17_0.SetPatrolFinalNode
  l_17_1 = "LE_WorldGraph"
  l_17_2 = "PATROLROUTE_03"
  l_17_0(l_17_1, l_17_2, l_17_3, 0)
  l_17_3 = {"WorldGraph_35", "WorldGraph_31"}
  l_17_0 = AI
  l_17_0 = l_17_0.SetPatrolFinalNode
  l_17_1 = "LE_WorldGraph"
  l_17_2 = "PATROLROUTE_03"
  l_17_0(l_17_1, l_17_2, l_17_3, 0)
  l_17_3 = {"WorldGraph_26", "WorldGraph_36"}
  l_17_0 = AI
  l_17_0 = l_17_0.SetPatrolFinalNode
  l_17_1 = "LE_WorldGraph"
  l_17_2 = "PATROLROUTE_03"
  l_17_0(l_17_1, l_17_2, l_17_3, 1)
  l_17_3 = {"WorldGraph_83", "WorldGraph_64"}
  l_17_0 = AI
  l_17_0 = l_17_0.SetPatrolFinalNode
  l_17_1 = "LE_WorldGraph"
  l_17_2 = "PATROLROUTE_03"
  l_17_0(l_17_1, l_17_2, l_17_3, 1)
  l_17_3 = {"WorldGraph_23", "WorldGraph_6"}
  l_17_0 = AI
  l_17_0 = l_17_0.SetPatrolFinalNode
  l_17_1 = "LE_WorldGraph"
  l_17_2 = "PATROLROUTE_04"
  l_17_0(l_17_1, l_17_2, l_17_3, 0)
  l_17_3 = {"WorldGraph_27", "WorldGraph_36"}
  l_17_0 = AI
  l_17_0 = l_17_0.SetPatrolFinalNode
  l_17_1 = "LE_WorldGraph"
  l_17_2 = "PATROLROUTE_04"
  l_17_0(l_17_1, l_17_2, l_17_3, 1)
  l_17_3 = {"WorldGraph_25", "WorldGraph_38"}
  l_17_0 = AI
  l_17_0 = l_17_0.SetPatrolFinalNode
  l_17_1 = "LE_WorldGraph"
  l_17_2 = "PATROLROUTE_05"
  l_17_0(l_17_1, l_17_2, l_17_3, 0)
  l_17_3 = {"WorldGraph_25", "WorldGraph_35", "WorldGraph_20"}
  l_17_0 = AI
  l_17_0 = l_17_0.SetPatrolFinalNode
  l_17_1 = "LE_WorldGraph"
  l_17_2 = "PATROLROUTE_05"
  l_17_0(l_17_1, l_17_2, l_17_3, 1)
  l_17_3 = {"WorldGraph_21", "WorldGraph_83"}
  l_17_0 = AI
  l_17_0 = l_17_0.SetPatrolFinalNode
  l_17_1 = "LE_WorldGraph"
  l_17_2 = "PATROLROUTE_05"
  l_17_0(l_17_1, l_17_2, l_17_3, 1)
  l_17_3 = {"WorldGraph_64", "WorldGraph_33"}
  l_17_0 = AI
  l_17_0 = l_17_0.SetPatrolFinalNode
  l_17_1 = "LE_WorldGraph"
  l_17_2 = "PATROLROUTE_06"
  l_17_0(l_17_1, l_17_2, l_17_3, 0)
  l_17_3 = {"WorldGraph_58", "WorldGraph_53"}
  l_17_0 = AI
  l_17_0 = l_17_0.SetPatrolFinalNode
  l_17_1 = "LE_WorldGraph"
  l_17_2 = "PATROLROUTE_06"
  l_17_0(l_17_1, l_17_2, l_17_3, 0)
  l_17_3 = {"WorldGraph_50"}
  l_17_0 = AI
  l_17_0 = l_17_0.SetPatrolFinalNode
  l_17_1 = "LE_WorldGraph"
  l_17_2 = "PATROLROUTE_06"
  l_17_0(l_17_1, l_17_2, l_17_3, 1)
  l_17_3 = {"WorldGraph_55", "WorldGraph_67"}
  l_17_0 = AI
  l_17_0 = l_17_0.SetPatrolFinalNode
  l_17_1 = "LE_WorldGraph"
  l_17_2 = "PATROLROUTE_07"
  l_17_0(l_17_1, l_17_2, l_17_3, 0)
  l_17_3 = {"WorldGraph_88"}
  l_17_0 = AI
  l_17_0 = l_17_0.SetPatrolFinalNode
  l_17_1 = "LE_WorldGraph"
  l_17_2 = "PATROLROUTE_07"
  l_17_0(l_17_1, l_17_2, l_17_3, 0)
  l_17_3 = {"WorldGraph_98", "WorldGraph_48"}
  l_17_0 = AI
  l_17_0 = l_17_0.SetPatrolFinalNode
  l_17_1 = "LE_WorldGraph"
  l_17_2 = "PATROLROUTE_07"
  l_17_0(l_17_1, l_17_2, l_17_3, 1)
  l_17_3 = {"WorldGraph_54", "WorldGraph_60"}
  l_17_0 = AI
  l_17_0 = l_17_0.SetPatrolFinalNode
  l_17_1 = "LE_WorldGraph"
  l_17_2 = "PATROLROUTE_08"
  l_17_0(l_17_1, l_17_2, l_17_3, 0)
  l_17_3 = {"WorldGraph_60", "WorldGraph_41"}
  l_17_0 = AI
  l_17_0 = l_17_0.SetPatrolFinalNode
  l_17_1 = "LE_WorldGraph"
  l_17_2 = "PATROLROUTE_08"
  l_17_0(l_17_1, l_17_2, l_17_3, 0)
  l_17_3 = {"WorldGraph_49", "WorldGraph_54"}
  l_17_0 = AI
  l_17_0 = l_17_0.SetPatrolFinalNode
  l_17_1 = "LE_WorldGraph"
  l_17_2 = "PATROLROUTE_08"
  l_17_0(l_17_1, l_17_2, l_17_3, 0)
  l_17_3 = {"WorldGraph_58", "WorldGraph_54"}
  l_17_0 = AI
  l_17_0 = l_17_0.SetPatrolFinalNode
  l_17_1 = "LE_WorldGraph"
  l_17_2 = "PATROLROUTE_08"
  l_17_0(l_17_1, l_17_2, l_17_3, 1)
  l_17_3 = {"WorldGraph_48", "WorldGraph_80"}
  l_17_0 = AI
  l_17_0 = l_17_0.SetPatrolFinalNode
  l_17_1 = "LE_WorldGraph"
  l_17_2 = "PATROLROUTE_08"
  l_17_0(l_17_1, l_17_2, l_17_3, 1)
  l_17_3 = {"WorldGraph_77", "WorldGraph_45"}
  l_17_0 = AI
  l_17_0 = l_17_0.SetPatrolFinalNode
  l_17_1 = "LE_WorldGraph"
  l_17_2 = "PATROLROUTE_09"
  l_17_0(l_17_1, l_17_2, l_17_3, 0)
  l_17_3 = {"WorldGraph_71", "WorldGraph_73"}
  l_17_0 = AI
  l_17_0 = l_17_0.SetPatrolFinalNode
  l_17_1 = "LE_WorldGraph"
  l_17_2 = "PATROLROUTE_09"
  l_17_0(l_17_1, l_17_2, l_17_3, 0)
  l_17_3 = {"WorldGraph_70", "WorldGraph_69"}
  l_17_0 = AI
  l_17_0 = l_17_0.SetPatrolFinalNode
  l_17_1 = "LE_WorldGraph"
  l_17_2 = "PATROLROUTE_09"
  l_17_0(l_17_1, l_17_2, l_17_3, 1)
  l_17_3 = {"WorldGraph_77"}
  l_17_0 = AI
  l_17_0 = l_17_0.SetPatrolFinalNode
  l_17_1 = "LE_WorldGraph"
  l_17_2 = "PATROLROUTE_09"
  l_17_0(l_17_1, l_17_2, l_17_3, 1)
  l_17_3 = {"WorldGraph_68", "WorldGraph_76"}
  l_17_0 = AI
  l_17_0 = l_17_0.SetPatrolFinalNode
  l_17_1 = "LE_WorldGraph"
  l_17_2 = "PATROLROUTE_10"
  l_17_0(l_17_1, l_17_2, l_17_3, 0)
  l_17_3 = {"WorldGraph_102"}
  l_17_0 = AI
  l_17_0 = l_17_0.SetPatrolFinalNode
  l_17_1 = "LE_WorldGraph"
  l_17_2 = "PATROLROUTE_10"
  l_17_0(l_17_1, l_17_2, l_17_3, 0)
  l_17_3 = {"WorldGraph_93", "WorldGraph_92"}
  l_17_0 = AI
  l_17_0 = l_17_0.SetPatrolFinalNode
  l_17_1 = "LE_WorldGraph"
  l_17_2 = "PATROLROUTE_10"
  l_17_0(l_17_1, l_17_2, l_17_3, 1)
  l_17_3 = {"WorldGraph_98", "WorldGraph_97"}
  l_17_0 = AI
  l_17_0 = l_17_0.SetPatrolFinalNode
  l_17_1 = "LE_WorldGraph"
  l_17_2 = "PATROLROUTE_10"
  l_17_0(l_17_1, l_17_2, l_17_3, 1)
  l_17_3 = {"WorldGraph_101", "WorldGraph_92"}
  l_17_0 = AI
  l_17_0 = l_17_0.SetPatrolFinalNode
  l_17_1 = "LE_WorldGraph"
  l_17_2 = "PATROLROUTE_10"
  l_17_0(l_17_1, l_17_2, l_17_3, 1)
  l_17_3 = {"WorldGraph_99", "WorldGraph_91", "WorldGraph_94"}
  l_17_0 = AI
  l_17_0 = l_17_0.SetPatrolFinalNode
  l_17_1 = "LE_WorldGraph"
  l_17_2 = "PATROLROUTE_11"
  l_17_0(l_17_1, l_17_2, l_17_3, 0)
  l_17_3 = {"WorldGraph_26", "WorldGraph_9"}
  l_17_0 = AI
  l_17_0 = l_17_0.SetPatrolFinalNode
  l_17_1 = "LE_WorldGraph"
  l_17_2 = "PATROLROUTE_11"
  l_17_0(l_17_1, l_17_2, l_17_3, 1)
  l_17_3 = {"WorldGraph_109", "WorldGraph_27"}
  l_17_0 = AI
  l_17_0 = l_17_0.SetPatrolFinalNode
  l_17_1 = "LE_WorldGraph"
  l_17_2 = "PATROLROUTE_12"
  l_17_0(l_17_1, l_17_2, l_17_3, 0)
  l_17_3 = {"WorldGraph_75"}
  l_17_0 = AI
  l_17_0 = l_17_0.SetPatrolFinalNode
  l_17_1 = "LE_WorldGraph"
  l_17_2 = "PATROLROUTE_12"
  l_17_0(l_17_1, l_17_2, l_17_3, 1)
  l_17_3 = {"WorldGraph_76", "WorldGraph_77"}
  l_17_0 = AI
  l_17_0 = l_17_0.SetPatrolFinalNode
  l_17_1 = "LE_WorldGraph"
  l_17_2 = "PATROLROUTE_13"
  l_17_0(l_17_1, l_17_2, l_17_3, 0)
  l_17_3 = {"WorldGraph_57", "WorldGraph_65"}
  l_17_0 = AI
  l_17_0 = l_17_0.SetPatrolFinalNode
  l_17_1 = "LE_WorldGraph"
  l_17_2 = "PATROLROUTE_13"
  l_17_0(l_17_1, l_17_2, l_17_3, 0)
  l_17_3 = {"WorldGraph_1", "WorldGraph_57"}
  l_17_0 = AI
  l_17_0 = l_17_0.SetPatrolFinalNode
  l_17_1 = "LE_WorldGraph"
  l_17_2 = "PATROLROUTE_13"
  l_17_0(l_17_1, l_17_2, l_17_3, 1)
  l_17_3 = {"WorldGraph_3", "WorldGraph_59"}
  l_17_0 = AI
  l_17_0 = l_17_0.SetPatrolFinalNode
  l_17_1 = "LE_WorldGraph"
  l_17_2 = "PATROLROUTE_13"
  l_17_0(l_17_1, l_17_2, l_17_3, 1)
  l_17_3 = {"WorldGraph_5", "WorldGraph_59"}
  l_17_0 = AI
  l_17_0 = l_17_0.SetPatrolFinalNode
  l_17_1 = "LE_WorldGraph"
  l_17_2 = "PATROLROUTE_14"
  l_17_0(l_17_1, l_17_2, l_17_3, 0)
  l_17_3 = {"WorldGraph_81", "WorldGraph_11"}
  l_17_0 = AI
  l_17_0 = l_17_0.SetPatrolFinalNode
  l_17_1 = "LE_WorldGraph"
  l_17_2 = "PATROLROUTE_14"
  l_17_0(l_17_1, l_17_2, l_17_3, 1)
  l_17_3 = {"WorldGraph_4", "WorldGraph_13"}
  l_17_0 = print
  l_17_1 = "s020_magma.PatrolRoutesFinalNodesAssignation(): Final Nodes Assignation OK"
  l_17_0(l_17_1)
end

l_0_4.PatrolRoutesFinalNodesAssignation = l_0_5
l_0_4 = s020_magma
l_0_5 = function(l_18_0)
  -- function num : 0_17
  -- DECOMPILER ERROR at PC10: Confused about usage of register: R1 in 'UnsetPending'

  if (Scenario.CheckEmmyAlive)(CurrentScenario.oEmmyEntity) then
    ((CurrentScenario.oEmmyEntity).AI).sCurrentPatrol = l_18_0
    print("EMMY: Assigned route " .. l_18_0)
  else
    print("EMMY: Not found, route " .. l_18_0 .. " not assigned")
  end
end

l_0_4.ChangePatrolEmmy = l_0_5
l_0_4 = s020_magma
l_0_5 = function(l_19_0, l_19_1)
  -- function num : 0_18
  local l_19_2 = (string.gsub)(l_19_0.sName, "TG_PATROLEMMYACTIVATOR_", "PATROLROUTE_")
  ;
  (s020_magma.ChangePatrolEmmy)(l_19_2)
end

l_0_4.OnEnter_PatrolEmmyActivator = l_0_5
l_0_4 = s020_magma
l_0_5 = function(l_20_0, l_20_1)
  -- function num : 0_19
end

l_0_4.OnExit_PatrolEmmyActivator = l_0_5
l_0_4 = s020_magma
l_0_4.tEmmyDoor = nil
l_0_4 = s020_magma
l_0_5 = function(l_21_0, l_21_1, l_21_2)
  -- function num : 0_20
  -- DECOMPILER ERROR at PC14: Unhandled construct in 'MakeBoolean' P1

  if (Scenario.CheckEmmyAlive)(CurrentScenario.oEmmyEntity) and l_21_1 and CurrentScenario.oEmmyEntity ~= nil then
    local l_21_3 = nil
    if l_21_2 then
      l_21_3 = (s020_magma.HardEmmyRelocationDoor)(l_21_0)
    else
      l_21_3 = (s020_magma.EmmyRelocationDoor)(l_21_0)
    end
    if l_21_3 ~= nil then
      local l_21_4 = (Game.GetActor)(l_21_3)
      print(l_21_4.sName)
      -- DECOMPILER ERROR at PC38: Confused about usage of register: R5 in 'UnsetPending'

      ;
      (CurrentScenario.oEmmyEntity).bEnabled = false
      -- DECOMPILER ERROR at PC42: Confused about usage of register: R5 in 'UnsetPending'

      ;
      (CurrentScenario.oEmmyEntity).vPos = l_21_4.vPos
      -- DECOMPILER ERROR at PC46: Confused about usage of register: R5 in 'UnsetPending'

      ;
      (CurrentScenario.oEmmyEntity).vAng = l_21_4.vAng
      -- DECOMPILER ERROR at PC49: Confused about usage of register: R5 in 'UnsetPending'

      ;
      (CurrentScenario.oEmmyEntity).bEnabled = true
    end
  end
  do
    -- DECOMPILER ERROR at PC53: Confused about usage of register: R3 in 'UnsetPending'

    ;
    (CurrentScenario.oEmmyEntity).bEnabled = false
  end
end

l_0_4.OnWalkThroughEmmyDoor = l_0_5
l_0_4 = s020_magma
l_0_5 = function(l_22_0)
  -- function num : 0_21
  print("Door: Hard " .. l_22_0.sName)
  if l_22_0.sName == "dooremmy" then
    local l_22_1 = s020_magma
    local l_22_2 = {}
    -- DECOMPILER ERROR at PC11: No list found for R2 , SetList fails

  else
    do
      -- DECOMPILER ERROR at PC20: Overwrote pending register: R3 in 'AssignReg'

      if l_22_0.sName == "dooremmy_001" then
        local l_22_3 = (Blackboard.GetProp)("s020_magma", "LM_EmmyEntrancePoint_025")
        if l_22_3 ~= nil then
          local l_22_4 = s020_magma
          local l_22_5 = {}
          -- DECOMPILER ERROR at PC27: No list found for R3 , SetList fails

        else
          do
            local l_22_6 = s020_magma
            do
              local l_22_7 = {}
              -- DECOMPILER ERROR at PC32: Overwrote pending register: R4 in 'AssignReg'

              -- DECOMPILER ERROR at PC33: No list found for R3 , SetList fails

              if l_22_0.sName == "dooremmy_002" then
                local l_22_8 = (Blackboard.GetProp)("s020_magma", "ev_tpiston_mg_001:ACTIVATABLE:Activated")
                if l_22_8 ~= nil then
                  local l_22_9 = s020_magma
                  local l_22_10 = {}
                  -- DECOMPILER ERROR at PC48: Overwrote pending register: R4 in 'AssignReg'

                  -- DECOMPILER ERROR at PC49: No list found for R3 , SetList fails

                else
                  do
                    local l_22_11 = s020_magma
                    do
                      local l_22_12 = {}
                      -- DECOMPILER ERROR at PC54: Overwrote pending register: R4 in 'AssignReg'

                      -- DECOMPILER ERROR at PC55: No list found for R3 , SetList fails

                      if l_22_0.sName == "dooremmy_003" then
                        local l_22_13 = s020_magma
                        local l_22_14 = {}
                        -- DECOMPILER ERROR at PC64: No list found for R2 , SetList fails

                      else
                        do
                          if l_22_0.sName == "dooremmy_004" then
                            local l_22_15 = s020_magma
                            local l_22_16 = {}
                            -- DECOMPILER ERROR at PC72: Overwrote pending register: R3 in 'AssignReg'

                            -- DECOMPILER ERROR at PC73: No list found for R2 , SetList fails

                          else
                            do
                              if l_22_0.sName == "dooremmy_005" then
                                local l_22_17 = s020_magma
                                local l_22_18 = {}
                                -- DECOMPILER ERROR at PC81: Overwrote pending register: R3 in 'AssignReg'

                                -- DECOMPILER ERROR at PC82: No list found for R2 , SetList fails

                              else
                                do
                                  if l_22_0.sName == "dooremmy_006" then
                                    local l_22_19 = s020_magma
                                    local l_22_20 = {}
                                    -- DECOMPILER ERROR at PC90: Overwrote pending register: R3 in 'AssignReg'

                                    -- DECOMPILER ERROR at PC91: No list found for R2 , SetList fails

                                  else
                                    do
                                      if l_22_0.sName == "dooremmy_007" then
                                        local l_22_21 = s020_magma
                                        local l_22_22 = {}
                                        -- DECOMPILER ERROR at PC99: Overwrote pending register: R3 in 'AssignReg'

                                        -- DECOMPILER ERROR at PC100: No list found for R2 , SetList fails

                                      else
                                        do
                                          if l_22_0.sName == "dooremmy_008" then
                                            local l_22_23 = s020_magma
                                            local l_22_24 = {}
                                            -- DECOMPILER ERROR at PC108: Overwrote pending register: R3 in 'AssignReg'

                                            -- DECOMPILER ERROR at PC109: No list found for R2 , SetList fails

                                          else
                                            do
                                              if l_22_0.sName == "dooremmy_009" then
                                                local l_22_25 = s020_magma
                                                local l_22_26 = {}
                                                -- DECOMPILER ERROR at PC117: Overwrote pending register: R3 in 'AssignReg'

                                                -- DECOMPILER ERROR at PC118: No list found for R2 , SetList fails

                                              else
                                                do
                                                  -- DECOMPILER ERROR at PC122: Confused about usage of register: R1 in 'UnsetPending'

                                                  -- DECOMPILER ERROR at PC131: Overwrote pending register: R3 in 'AssignReg'

                                                  -- DECOMPILER ERROR at PC133: Overwrote pending register: R4 in 'AssignReg'

                                                  if s020_magma.tEmmyDoor ~= nil then
                                                    return (s020_magma.tEmmyDoor)[(math.random)((("LM_EmmyEntrancePoint_003").maxn)(("LM_EmmyEntrancePoint_017").tEmmyDoor))]
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
      end
    end
  end
end

l_0_4.HardEmmyRelocationDoor = l_0_5
l_0_4 = s020_magma
l_0_5 = function(l_23_0)
  -- function num : 0_22
  if l_23_0.sName == "dooremmy" then
    local l_23_1 = s020_magma
    local l_23_2 = {}
    -- DECOMPILER ERROR at PC8: No list found for R2 , SetList fails

  else
    do
      -- DECOMPILER ERROR at PC17: Overwrote pending register: R3 in 'AssignReg'

      if l_23_0.sName == "dooremmy_001" then
        local l_23_3 = (Blackboard.GetProp)("s020_magma", "LM_EmmyEntrancePoint_005")
        if l_23_3 ~= nil then
          local l_23_4 = s020_magma
          local l_23_5 = {}
          -- DECOMPILER ERROR at PC23: Overwrote pending register: R4 in 'AssignReg'

          -- DECOMPILER ERROR at PC24: No list found for R3 , SetList fails

        else
          do
            local l_23_6 = s020_magma
            do
              local l_23_7 = {}
              -- DECOMPILER ERROR at PC29: Overwrote pending register: R4 in 'AssignReg'

              -- DECOMPILER ERROR at PC30: No list found for R3 , SetList fails

              if l_23_0.sName == "dooremmy_002" then
                local l_23_8 = (Blackboard.GetProp)("s020_magma", "ev_tpiston_mg_001:ACTIVATABLE:Activated")
                if l_23_8 ~= nil then
                  local l_23_9 = s020_magma
                  local l_23_10 = {}
                  -- DECOMPILER ERROR at PC45: Overwrote pending register: R4 in 'AssignReg'

                  -- DECOMPILER ERROR at PC46: Overwrote pending register: R5 in 'AssignReg'

                  -- DECOMPILER ERROR at PC48: No list found for R3 , SetList fails

                else
                  do
                    local l_23_11 = s020_magma
                    do
                      local l_23_12 = {}
                      -- DECOMPILER ERROR at PC53: Overwrote pending register: R4 in 'AssignReg'

                      -- DECOMPILER ERROR at PC54: Overwrote pending register: R5 in 'AssignReg'

                      -- DECOMPILER ERROR at PC55: Overwrote pending register: R6 in 'AssignReg'

                      -- DECOMPILER ERROR at PC56: No list found for R3 , SetList fails

                      if l_23_0.sName == "dooremmy_003" then
                        local l_23_13 = s020_magma
                        local l_23_14 = {}
                        -- DECOMPILER ERROR at PC65: Overwrote pending register: R4 in 'AssignReg'

                        -- DECOMPILER ERROR at PC66: No list found for R2 , SetList fails

                      else
                        do
                          if l_23_0.sName == "dooremmy_004" then
                            local l_23_15 = s020_magma
                            local l_23_16 = {}
                            -- DECOMPILER ERROR at PC74: Overwrote pending register: R3 in 'AssignReg'

                            -- DECOMPILER ERROR at PC75: Overwrote pending register: R4 in 'AssignReg'

                            -- DECOMPILER ERROR at PC76: Overwrote pending register: R5 in 'AssignReg'

                            -- DECOMPILER ERROR at PC77: No list found for R2 , SetList fails

                          else
                            do
                              if l_23_0.sName == "dooremmy_005" then
                                local l_23_17 = s020_magma
                                local l_23_18 = {}
                                -- DECOMPILER ERROR at PC85: Overwrote pending register: R3 in 'AssignReg'

                                -- DECOMPILER ERROR at PC86: No list found for R2 , SetList fails

                              else
                                do
                                  if l_23_0.sName == "dooremmy_006" then
                                    local l_23_19 = s020_magma
                                    local l_23_20 = {}
                                    -- DECOMPILER ERROR at PC94: Overwrote pending register: R3 in 'AssignReg'

                                    -- DECOMPILER ERROR at PC95: Overwrote pending register: R4 in 'AssignReg'

                                    -- DECOMPILER ERROR at PC96: No list found for R2 , SetList fails

                                  else
                                    do
                                      if l_23_0.sName == "dooremmy_007" then
                                        local l_23_21 = s020_magma
                                        local l_23_22 = {}
                                        -- DECOMPILER ERROR at PC104: Overwrote pending register: R3 in 'AssignReg'

                                        -- DECOMPILER ERROR at PC105: Overwrote pending register: R4 in 'AssignReg'

                                        -- DECOMPILER ERROR at PC106: Overwrote pending register: R5 in 'AssignReg'

                                        -- DECOMPILER ERROR at PC107: No list found for R2 , SetList fails

                                      else
                                        do
                                          if l_23_0.sName == "dooremmy_008" then
                                            local l_23_23 = s020_magma
                                            local l_23_24 = {}
                                            -- DECOMPILER ERROR at PC115: Overwrote pending register: R3 in 'AssignReg'

                                            -- DECOMPILER ERROR at PC116: No list found for R2 , SetList fails

                                          else
                                            do
                                              if l_23_0.sName == "dooremmy_009" then
                                                local l_23_25 = s020_magma
                                                local l_23_26 = {}
                                                -- DECOMPILER ERROR at PC124: Overwrote pending register: R3 in 'AssignReg'

                                                -- DECOMPILER ERROR at PC125: Overwrote pending register: R4 in 'AssignReg'

                                                -- DECOMPILER ERROR at PC126: Overwrote pending register: R5 in 'AssignReg'

                                                -- DECOMPILER ERROR at PC127: No list found for R2 , SetList fails

                                              else
                                                do
                                                  -- DECOMPILER ERROR at PC131: Confused about usage of register: R1 in 'UnsetPending'

                                                  -- DECOMPILER ERROR at PC140: Overwrote pending register: R3 in 'AssignReg'

                                                  -- DECOMPILER ERROR at PC142: Overwrote pending register: R4 in 'AssignReg'

                                                  if s020_magma.tEmmyDoor ~= nil then
                                                    return (s020_magma.tEmmyDoor)[(math.random)((("LM_EmmyEntrancePoint_002").maxn)(("LM_EmmyEntrancePoint_006").tEmmyDoor))]
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
      end
    end
  end
end

l_0_4.EmmyRelocationDoor = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_23
  (Game.SetCollisionCameraLocked)("collision_camera_000_B", true)
  print("OnEnter_ChangeCamera_000_B")
end

l_0_4.OnEnter_ChangeCamera_000_B = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_24
  (Game.SetCollisionCameraLocked)("collision_camera_000_B", false)
  print("OnExit_ChangeCamera_000_B")
end

l_0_4.OnExit_ChangeCamera_000_B = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_25
  (Game.SetCollisionCameraLocked)("collision_camera_009_B", true)
  print("OnEnter_ChangeCamera_009_B")
end

l_0_4.OnEnter_ChangeCamera_009_B = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_26
  (Game.SetCollisionCameraLocked)("collision_camera_009_B", false)
  print("OnExit_ChangeCamera_009_B")
end

l_0_4.OnExit_ChangeCamera_009_B = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_27
  (Game.SetCollisionCameraLocked)("collision_camera_009_C", true)
end

l_0_4.OnEnter_ChangeCamera_009_C = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_28
  (Game.SetCollisionCameraLocked)("collision_camera_009_C", false)
end

l_0_4.OnExit_ChangeCamera_009_C = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_29
  (Game.SetCollisionCameraLocked)("collision_camera_015_B", true)
  print("OnEnter_ChangeCamera_015_B")
end

l_0_4.OnEnter_ChangeCamera_015_B = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_30
  (Game.SetCollisionCameraLocked)("collision_camera_015_B", false)
  print("OnExit_ChangeCamera_015_B")
end

l_0_4.OnExit_ChangeCamera_015_B = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_31
  (Game.SetCollisionCameraLocked)("collision_camera_023_B", true)
  print("OnEnter_ChangeCamera_023_B")
end

l_0_4.OnEnter_ChangeCamera_023_B = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_32
  (Game.SetCollisionCameraLocked)("collision_camera_023_B", false)
  print("OnExit_ChangeCamera_023_B")
end

l_0_4.OnExit_ChangeCamera_023_B = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_33
  (Game.SetCollisionCameraLocked)("collision_camera_024_B", true)
  print("OnEnter_ChangeCamera_024_B")
end

l_0_4.OnEnter_ChangeCamera_024_B = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_34
  (Game.SetCollisionCameraLocked)("collision_camera_024_B", false)
  print("OnExit_ChangeCamera_024_B")
end

l_0_4.OnExit_ChangeCamera_024_B = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_35
  (Game.SetCollisionCameraLocked)("collision_camera_025_B", true)
  print("OnEnter_ChangeCamera_025_B")
end

l_0_4.OnEnter_ChangeCamera_025_B = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_36
  (Game.SetCollisionCameraLocked)("collision_camera_025_B", false)
  print("OnExit_ChangeCamera_025_B")
end

l_0_4.OnExit_ChangeCamera_025_B = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_37
  (Game.SetCollisionCameraLocked)("collision_camera_026_B", true)
  print("OnEnter_ChangeCamera_026_B")
end

l_0_4.OnEnter_ChangeCamera_026_B = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_38
  (Game.SetCollisionCameraLocked)("collision_camera_026_B", false)
  print("OnExit_ChangeCamera_026_B")
end

l_0_4.OnExit_ChangeCamera_026_B = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_39
  (Game.SetCollisionCameraLocked)("collision_camera_051_B", true)
  print("OnEnter_ChangeCamera_051_B")
end

l_0_4.OnEnter_ChangeCamera_051_B = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_40
  (Game.SetCollisionCameraLocked)("collision_camera_051_B", false)
  print("OnExit_ChangeCamera_051_B")
end

l_0_4.OnExit_ChangeCamera_051_B = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_41
  local l_42_0 = (Game.GetActor)("TG_ZoomOutQuit")
  -- DECOMPILER ERROR at PC7: Confused about usage of register: R1 in 'UnsetPending'

  if l_42_0 ~= nil then
    (l_42_0.TRIGGER).bWantsEnabled = true
  end
end

l_0_4.Enable_TG__ZoomOutQuit = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_42
  local l_43_0 = (Game.GetActor)("camerarailpath")
  if l_43_0 ~= nil then
    l_43_0.bEnabled = false
  end
end

l_0_4.Disable_MagnetRailCam = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_43
  local l_44_0 = (Game.GetActor)("CameraRail_PathToKraid")
  if l_44_0 ~= nil then
    l_44_0.bEnabled = false
  end
end

l_0_4.Disable_CamToKraid = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_44 , upvalues : l_0_2
  if l_0_2 == false then
    (Game.PushSetup)("Cooldown", true, true)
    ;
    (Scenario.WriteToBlackboard)((Scenario.LUAPropIDs).MAGMA_COOLDOWN_APPLIED, "b", true)
    l_0_2 = true
  end
end

l_0_4.Cooldown_Activation = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_45 , upvalues : l_0_2
  (Game.SetCooldownFlag)(false)
  ;
  (Scenario.WriteToBlackboard)((Scenario.LUAPropIDs).COOLDOWN_FINISHED, "b", true)
  ;
  (s020_magma.ThermalTrapChange)()
  ;
  (s020_magma.PistonDeactivation)()
  ;
  (Game.PushSetup)("PostCooldown", true, true)
  ;
  (Scenario.WriteToBlackboard)((Scenario.LUAPropIDs).MAGMA_COOLDOWN_APPLIED, "b", false)
  l_0_2 = false
end

l_0_4.Cooldown_Deactivation = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_46
  local l_47_0 = (Game.GetActor)("trap_thermal_horizontal_PRECOOL")
  local l_47_1 = (Game.GetActor)("trap_thermal_horizontal_POSTCOOL")
  if l_47_0 ~= nil and l_47_1 ~= nil then
    l_47_1.bEnabled = true
    l_47_0.bEnabled = false
  end
end

l_0_4.ThermalTrapChange = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_47
  (s020_magma.Enable_PistonOff)()
  local l_48_0 = (Game.GetActor)("ev_hpiston_mg_001")
  local l_48_1 = (Game.GetActor)("pistonmag01_001")
  local l_48_2 = (Game.GetActor)("shootactivatormag01_001")
  local l_48_3 = (Game.GetActor)("pistonmag01_off_post")
  local l_48_4 = (Game.GetActor)("shootactivatoroff_000_post")
  if l_48_0 ~= nil and l_48_1 ~= nil and l_48_2 ~= nil and l_48_3 ~= nil and l_48_4 ~= nil then
    l_48_0.bEnabled = false
    l_48_1.bEnabled = false
    l_48_2.bEnabled = false
    l_48_3.bEnabled = true
    l_48_4.bEnabled = true
  end
  local l_48_5 = (Game.GetActor)("fusiblebox_000")
  local l_48_6 = (Game.GetActor)("fusiblebox_broken_000")
  if l_48_5 ~= nil and l_48_6 ~= nil then
    l_48_6.bEnabled = true
    l_48_5.bEnabled = false
  end
end

l_0_4.PistonDeactivation = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_48
  local l_49_0 = (Game.GetActor)("ev_hpiston_mg_001_off")
  if l_49_0 ~= nil then
    l_49_0.bEnabled = true
  end
end

l_0_4.Enable_PistonOff = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_49
  print("FADE OUT COOLDOW-X")
  ;
  (Game.FadeOut)(0.60000002384186)
  -- DECOMPILER ERROR at PC11: Confused about usage of register: R0 in 'UnsetPending'

  s020_magma.fSFXVolume = (Game.GetSFXVolume)()
  ;
  (Game.SetSFXVolume)(0, 0.69999998807907)
  ;
  (Game.StopMusicWithFade)(0.60000002384186, true)
end

l_0_4.OnEnter_FadeOutCooldownX = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_50
  local l_51_0 = (Game.GetActor)("accesspoint")
  local l_51_1 = (Blackboard.GetProp)("GAME_PROGRESS", "ADAMDIALOGUE")
  if l_51_0 ~= nil then
    if l_51_1 == "DIAG_ADAM_CAVE_3" then
      (l_51_0.USABLE):ActiveDialogue("DIAG_ADAM_MAGMA_1")
      ;
      (Blackboard.SetProp)("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_MAGMA_1")
    else
      if l_51_1 == "DIAG_ADAM_CAVE_4" and (Game.GetCooldownFlag)() == false then
        local l_51_2 = (Blackboard.GetProp)("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK")
        if l_51_2 ~= nil and l_51_2 > 0 then
          (l_51_0.USABLE):ActiveDialogue("DIAG_ADAM_AQUA_3")
          ;
          (Blackboard.SetProp)("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_AQUA_3")
        end
      end
    end
  end
end

l_0_4.OnEnter_AP_03 = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_51
  local l_52_0 = (Game.GetActor)("accesspoint_000")
  local l_52_1 = (Blackboard.GetProp)("GAME_PROGRESS", "ADAMDIALOGUE")
  if l_52_0 ~= nil then
    if l_52_1 == "DIAG_ADAM_MAGMA_1" then
      (l_52_0.USABLE):ActiveDialogue("DIAG_ADAM_MAGMA_2")
      ;
      (Blackboard.SetProp)("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_MAGMA_2")
    else
      if l_52_1 == "DIAG_ADAM_CAVE_4" and (Game.GetCooldownFlag)() == false then
        local l_52_2 = (Blackboard.GetProp)("PLAYER_INVENTORY", "ITEM_SCREW_ATTACK")
        if l_52_2 ~= nil and l_52_2 > 0 then
          (l_52_0.USABLE):ActiveDialogue("DIAG_ADAM_AQUA_3")
          ;
          (Blackboard.SetProp)("GAME_PROGRESS", "ADAMDIALOGUE", "s", "DIAG_ADAM_AQUA_3")
        end
      end
    end
  end
end

l_0_4.OnEnter_AP_03B = l_0_5
l_0_4 = s020_magma
l_0_5 = function(l_53_0, l_53_1, l_53_2, l_53_3)
  -- function num : 0_52
  (Scenario.SubAreaChangeRequest)(l_53_0, l_53_1, l_53_2, l_53_3)
end

l_0_4.SubAreaChangeRequest = l_0_5
l_0_4 = s020_magma
l_0_5 = function(l_54_0, l_54_1, l_54_2, l_54_3, l_54_4)
  -- function num : 0_53 , upvalues : l_0_2
  if (s020_magma.IsKraidCombatBegin)(l_54_0, l_54_1, l_54_2, l_54_3, l_54_4) then
    (s020_magma.Kraid_InitCutscene)()
  end
  if l_54_0 == "collision_camera_009" and l_54_1 == "PostCooldown" then
    (Game.PopSetup)("Cooldown", true, true)
    ;
    (Game.PushSetup)("PostXRelease", true, true)
  else
    if l_0_2 == true and l_54_0 == "collision_camera_004" and l_54_2 == "collision_camera_009" then
      local l_54_5 = (Game.GetActor)("cutsceneplayer_78")
      if l_54_5 ~= nil then
        (l_54_5.CUTSCENE):TryLaunchCutscene()
      end
    else
      do
        if l_54_0 == "collision_camera_052" and l_54_2 == "collision_camera_020" then
          local l_54_6 = (Game.GetActor)("cutsceneplayer_38")
          if l_54_6 ~= nil then
            (l_54_6.CUTSCENE):TryLaunchCutscene()
          end
        else
          do
            if l_54_0 == "collision_camera_063" and l_54_2 == "collision_camera_044" then
              (Game.PlayCurrentEnvironmentMusic)()
            else
              if l_54_0 == "collision_camera_022" and l_54_2 == "collision_camera_030" then
                (Game.StopMusic)(true)
                ;
                (Game.PlayCurrentEnvironmentMusic)()
              end
            end
          end
        end
      end
    end
  end
end

l_0_4.OnSubAreaChange = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_54
  (Game.PushSetup)("Kraid_Stage_01", true, true)
  local l_55_0 = (Game.GetActor)("cutsceneplayer_59")
  if l_55_0 ~= nil then
    (l_55_0.CUTSCENE):TryLaunchCutscene()
  end
  local l_55_1 = (Game.GetActor)("block_slide_reg_002")
  if l_55_1 ~= nil then
    (l_55_1.ANIMATION):SetAction("closed", true)
  end
end

l_0_4.Kraid_InitCutscene = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_55
  (Game.SetActorVolumeOverride)("Samus", 0, 0, "ALL")
  local l_56_0 = 1
  if s020_magma.fSFXVolume ~= nil then
    l_56_0 = s020_magma.fSFXVolume
  end
  ;
  (Game.SetSFXVolume)(l_56_0, 0)
end

l_0_4.OnCutscene78Started = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_56
  (s020_magma.Cooldown_Deactivation)()
  ;
  (Blackboard.SetProp)("s010_cave", "SubareaSetupID[collision_camera_080]", "s", "Default>PostXRelease")
  ;
  (Game.SetPlayerInteractMovementState)()
end

l_0_4.OnCutscene81Ended = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_57
  local l_58_0 = (Game.GetActor)("fan_cooldown_000")
  if l_58_0 ~= nil then
    (l_58_0.ANIMATION):SetAction("relax", true)
    ;
    (l_58_0.TIMELINECOMPONENT):EndAction("dissolve_in_cut_scene")
    ;
    (l_58_0.TIMELINECOMPONENT):StartAction("dissolve_in_cut_scene_no_transition", -1, false)
  end
end

l_0_4.OnCutscene81Skipped = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_58
  ((CurrentScenario.oKraid).AI):SetBossCamera(true, true)
end

l_0_4.OnBeforeCutscene0059Started = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_59
end

l_0_4.OnCutscene0059Ended = l_0_5
l_0_4 = s020_magma
l_0_5 = function(l_61_0, l_61_1)
  -- function num : 0_60
  -- DECOMPILER ERROR at PC1: Confused about usage of register: R2 in 'UnsetPending'

  CurrentScenario.oKraid = l_61_1
  if CurrentScenario.oKraid ~= nil then
    ((CurrentScenario.oKraid).ANIMATION):SetAction("kraid_stage1", true)
    print("ANIMATION 1")
  end
end

l_0_4.OnKraidGenerated = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_61
  (Game.PushSetup)("Kraid_Stage_02", true, true)
  local l_62_0 = (Game.GetActor)("ev_kraid_platform")
  if l_62_0 ~= nil then
    (l_62_0.CHANGE_STAGE_NAVMESH_ITEM):RefreshNavMeshState()
  end
  local l_62_1 = (Game.GetActor)("ev_kraid_structure")
  if l_62_1 ~= nil then
    (l_62_1.CHANGE_STAGE_NAVMESH_ITEM):RefreshNavMeshState()
  end
  if CurrentScenario.oKraid ~= nil then
    ((CurrentScenario.oKraid).ANIMATION):SetAction("kraid_stage2", true)
    print("ANIMATION 2")
  end
end

l_0_4.OnEnter_Kraid_Activation_Stage_02 = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_62 , upvalues : l_0_1
  if l_0_1 == false then
    (Game.PushSetup)("Kraid_Stage_02B", true, true)
    l_0_1 = true
  else
    ;
    (Game.PopSetup)("Kraid_Stage_02B", true, true)
    l_0_1 = false
  end
end

l_0_4.OnEnter_Kraid_Activation_Stage_02B = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_63
  local l_64_0 = (Game.GetActor)("mblauncher_exit_gen_002")
  if l_64_0 ~= nil then
    (l_64_0.ANIMATION):SetAction("open", true)
  end
end

l_0_4.OpenKraidMorphBallLauncherExit = l_0_5
l_0_4 = s020_magma
l_0_5 = function(l_65_0, l_65_1)
  -- function num : 0_64
  (Game.AddSF)(0.10000000149012, "s020_magma.Delayed_Kraid_Activation_Stage_02", "")
  local l_65_2 = (Game.GetPlayer)()
  if l_65_2 ~= nil then
    (l_65_2.INPUT):IgnoreInput(true, false, "OnEnter_Kraid_Activation_Stage_02")
  end
end

l_0_4.OnEnter_Kraid_Activation_Stage_02 = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_65
  (GUI.ShowMessage)("#KRAID_STAGE_2", true, "s020_magma.Kraid_Activation_Stage_02_MessageSkipped")
  local l_66_0 = (Game.GetPlayer)()
  if l_66_0 ~= nil then
    (l_66_0.INPUT):IgnoreInput(false, false, "OnEnter_Kraid_Activation_Stage_02")
  end
end

l_0_4.Delayed_Kraid_Activation_Stage_02 = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_66
  ((Game.GetPlayer)()).vPos = V3D(-16900, -6900, 0)
  ;
  (Game.PushSetup)("Kraid_Stage_02", true, true)
  local l_67_0 = (Game.GetActor)("ev_kraid_platform")
  if l_67_0 ~= nil then
    (l_67_0.CHANGE_STAGE_NAVMESH_ITEM):RefreshNavMeshState()
  end
  local l_67_1 = (Game.GetActor)("ev_kraid_structure")
  if l_67_1 ~= nil then
    (l_67_1.CHANGE_STAGE_NAVMESH_ITEM):RefreshNavMeshState()
  end
  if CurrentScenario.oKraid ~= nil then
    ((CurrentScenario.oKraid).AI):ChangeKraidAnimToStage2()
  end
end

l_0_4.Kraid_Activation_Stage_02_MessageSkipped = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_67
  (Game.PushSetup)("Kraid_Stage_02", true, true)
  local l_68_0 = (Game.GetActor)("ev_kraid_platform")
  if l_68_0 ~= nil then
    (l_68_0.CHANGE_STAGE_NAVMESH_ITEM):RefreshNavMeshState()
  end
  local l_68_1 = (Game.GetActor)("ev_kraid_structure")
  if l_68_1 ~= nil then
    (l_68_1.CHANGE_STAGE_NAVMESH_ITEM):RefreshNavMeshState()
  end
end

l_0_4.Kraid_Activation_Stage_02_With_Cut_Scene = l_0_5
l_0_4 = s020_magma
l_0_5 = function(l_69_0, l_69_1)
  -- function num : 0_68
  (GUI.ShowMessage)("#KRAID_STAGE_3", true, "s020_magma.Kraid_Activation_Stage_03_MessageSkipped")
end

l_0_4.OnEnter_Kraid_Activation_Stage_03 = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_69
  (s020_magma.Kraid_Activation_Stage_03_CutsceneStart)()
  ;
  (s020_magma.Kraid_Activation_Stage_03_CutsceneEnd)()
end

l_0_4.Kraid_Activation_Stage_03_MessageSkipped = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_70
  local l_71_0 = (Game.GetActor)("TG_KraidRoars_Ambient")
  if l_71_0 ~= nil then
    l_71_0.bEnabled = false
  end
  ;
  (Game.DeleteEntity)("SP_Kraid_kraid")
  ;
  (Game.PushSetup)("Kraid_Stage_03", true, true)
end

l_0_4.Kraid_Activation_Stage_03_CutsceneStart = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_71
  (Game.SaveGame)("checkpoint", "KraidDead", "SP_Checkpoint_Dead_Kraid", true)
end

l_0_4.Kraid_Activation_Stage_03_CutsceneEnd = l_0_5
l_0_4 = s020_magma
l_0_5 = function(l_73_0, l_73_1, l_73_2, l_73_3, l_73_4)
  -- function num : 0_72
  if l_73_0 == "collision_camera_024" and l_73_1 == "Default" and l_73_2 == "collision_camera_063" and l_73_3 == "Default" then
    return true
  else
    return false
  end
end

l_0_4.IsKraidCombatBegin = l_0_5
l_0_4 = s020_magma
l_0_5 = function(l_74_0, l_74_1)
  -- function num : 0_73
  if l_74_0 == "shootactivatormag01_000" and l_74_1 then
    (Game.PushSetup)("LavaDrained_Right", true, true)
  else
    if l_74_0 == "shootactivatormag01" and l_74_1 then
      (Game.PushSetup)("LavaDrained_Left", true, true)
    end
  end
end

l_0_4.OnShootActivationCompleted = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_74
  (Game.PlayCameraFXPreset)("KRAID_ROAR_WEAK")
  ;
  (Game.PlayPresetSound)("events/kraidscream")
  ;
  (Game.PlayVibration)("levels/magma/kraid_outscream_01.bnvib", false)
end

l_0_4.OnEnter_KraidZone_CameraShake = l_0_5
l_0_4 = s020_magma
l_0_5 = function(l_76_0, l_76_1)
  -- function num : 0_75
  local l_76_2 = (Game.GetActor)("SG_PostEmmy_007")
  local l_76_3 = (Game.GetActor)("SG_PostEmmy_008")
  local l_76_4 = (Game.GetActor)("SG_PostEmmy_Caterzilla")
  local l_76_5 = (Game.GetActor)("SG_PostEmmy_Poisonfly")
  local l_76_6 = (Game.GetActor)("SG_PostEmmy_Vulkran")
  if l_76_2 ~= nil then
    (l_76_2.SPAWNGROUP):EnableSpawnGroup()
  end
  if l_76_3 ~= nil then
    (l_76_3.SPAWNGROUP):EnableSpawnGroup()
  end
  if l_76_4 ~= nil then
    (l_76_4.SPAWNGROUP):EnableSpawnGroup()
  end
  if l_76_5 ~= nil then
    (l_76_5.SPAWNGROUP):EnableSpawnGroup()
  end
  if l_76_6 ~= nil then
    (l_76_6.SPAWNGROUP):EnableSpawnGroup()
  end
  l_76_0.bEnabled = false
end

l_0_4.OnEnter_ActivatePostEmmyEnemies = l_0_5
l_0_4 = s020_magma
l_0_5 = function(l_77_0, l_77_1)
  -- function num : 0_76
  local l_77_2 = (Game.GetActor)("SG_Sclawk_000")
  local l_77_3 = (Game.GetActor)("SG_Sclawk_001")
  local l_77_4 = (Game.GetActor)("SG_Poisonfly_003A")
  local l_77_5 = (Game.GetActor)("SG_Poisonfly_003B")
  local l_77_6 = (Game.GetActor)("spawngroup_026")
  if l_77_2 ~= nil then
    (l_77_2.SPAWNGROUP):EnableSpawnGroup()
  end
  if l_77_3 ~= nil then
    (l_77_3.SPAWNGROUP):EnableSpawnGroup()
  end
  if l_77_4 ~= nil then
    (l_77_4.SPAWNGROUP):DisableSpawnGroup()
  end
  if l_77_5 ~= nil then
    (l_77_5.SPAWNGROUP):EnableSpawnGroup()
  end
  if l_77_6 ~= nil then
    (l_77_6.SPAWNGROUP):EnableSpawnGroup()
  end
  l_77_0.bEnabled = false
end

l_0_4.OnEnter_EnableEnemiesPistonLeft = l_0_5
l_0_4 = s020_magma
l_0_5 = function(l_78_0, l_78_1)
  -- function num : 0_77
  local l_78_2 = (Game.GetActor)("spawngroup_007")
  local l_78_3 = (Game.GetActor)("SG_Poisonfly_044")
  if l_78_2 ~= nil then
    (l_78_2.SPAWNGROUP):EnableSpawnGroup()
  end
  if l_78_3 ~= nil then
    (l_78_3.SPAWNGROUP):EnableSpawnGroup()
  end
  l_78_0.bEnabled = false
end

l_0_4.OnEnter_EnableEnemiesPistonRight = l_0_5
l_0_4 = s020_magma
l_0_5 = function(l_79_0, l_79_1)
  -- function num : 0_78
  (Game.PushSetup)("heat_zone_protected", true, false)
end

l_0_4.OnEnter_PistonLeftMusicChange = l_0_5
l_0_4 = s020_magma
l_0_5 = function(l_80_0, l_80_1)
  -- function num : 0_79
  (Game.PopSetup)("heat_zone_protected", true, false)
  if not (Game.IsPlayingPreset)("s_magma_001") then
    (Game.StopStream)("streams/music/s_magma_001.wav")
  end
end

l_0_4.OnExit_PistonLeftMusicChange = l_0_5
l_0_4 = s020_magma
l_0_5 = function(l_81_0, l_81_1)
  -- function num : 0_80
  (Game.PushSetup)("heat_zone_protected_043", true, false)
end

l_0_4.OnEnter_SubArea_043_MusicChange = l_0_5
l_0_4 = s020_magma
l_0_5 = function(l_82_0, l_82_1)
  -- function num : 0_81
  (Game.PopSetup)("heat_zone_protected_043", true, false)
end

l_0_4.OnExit_SubArea_043_MusicChange = l_0_5
l_0_4 = s020_magma
l_0_5 = function(l_83_0, l_83_1)
  -- function num : 0_82
  (Game.PushSetup)("heat_zone_protected_piston_right", true, false)
end

l_0_4.OnEnter_PistonRight_MusicChange = l_0_5
l_0_4 = s020_magma
l_0_5 = function(l_84_0, l_84_1)
  -- function num : 0_83
  (Game.PopSetup)("heat_zone_protected_piston_right", true, false)
end

l_0_4.OnExit_PistonRight_MusicChange = l_0_5
l_0_4 = s020_magma
l_0_5 = function(l_85_0, l_85_1)
  -- function num : 0_84
  (Game.PushSetup)("difussion_statueroom", true, false)
end

l_0_4.OnEnter_Diffusion_MusicChange = l_0_5
l_0_4 = s020_magma
l_0_5 = function(l_86_0, l_86_1)
  -- function num : 0_85
  (Game.PopSetup)("difussion_statueroom", true, false)
end

l_0_4.OnExit_Diffusion_MusicChange = l_0_5
l_0_4 = s020_magma
l_0_5 = function(l_87_0, l_87_1)
  -- function num : 0_86
  (Game.PushSetup)("InsideTunnel_011", true, false)
end

l_0_4.OnEnter_InsideTunnel_011 = l_0_5
l_0_4 = s020_magma
l_0_5 = function(l_88_0, l_88_1)
  -- function num : 0_87
  (Game.PopSetup)("InsideTunnel_011", true, false)
end

l_0_4.OnExit_InsideTunnel_011 = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_88
  (AI.SetWorldGraphNodeEnabled)("LE_WorldGraph", "WorldGraph_119", true)
end

l_0_4.DeviceHeatCameraFar000OnSetupInitialState = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_89
  (AI.SetWorldGraphNodeEnabled)("LE_WorldGraph", "WorldGraph_119", false)
end

l_0_4.DeviceHeatCameraFar000OnSetupUseState = l_0_5
l_0_4 = s020_magma
l_0_5 = function(l_91_0)
  -- function num : 0_90
  local l_91_1 = (Game.GetActor)("TG_TutoOC_Exit")
  if l_91_1 ~= nil and l_91_1.bEnabled then
    ((Game.GetActor)("TG_TutoOC_Enter")).bEnabled = false
  end
end

l_0_4.OnEmmyGrabStart = l_0_5
l_0_4 = s020_magma
l_0_5 = function(l_92_0)
  -- function num : 0_91
  local l_92_1 = (Game.GetActor)("TG_TutoOC_Exit")
  if l_92_1 ~= nil and l_92_1.bEnabled then
    ((Game.GetActor)("TG_TutoOC_Enter")).bEnabled = true
  end
end

l_0_4.OnEmmyGrabEnd = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_92
  (s020_magma.RelocateEmmy_AfterPresentation)()
  local l_93_0 = (Game.GetActor)("emmyvalve_reg_gen_001")
  if l_93_0 ~= nil then
    (l_93_0.EMMYVALVE):CleanForceStateFlag()
  end
end

l_0_4.OnCutscene38End = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_93
  (Game.PushSetup)("Kraid_Stage_02", true, true)
end

l_0_4.cutsceneplayer_61 = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_94
  local l_95_0 = (Game.GetActor)("cutsceneplayer_61_zipline_mb")
  do
    if l_95_0 ~= nil then
      local l_95_1 = (Game.GetActor)("cutsceneplayer_61")
      if l_95_1 ~= nil then
        (l_95_0.CUTSCENE):QueueCutscenePlayer(l_95_1)
      end
    end
    ;
    (Game.PushSetup)("Kraid_Stage_02", true, true)
  end
end

l_0_4.cutsceneplayer_61_zipline_mb = l_0_5
l_0_4 = s020_magma
l_0_5 = function()
  -- function num : 0_95
  local l_96_0 = (Game.GetActor)("cutsceneplayer_80_grab")
  if l_96_0 ~= nil then
    local l_96_1 = (Game.GetActor)("cutsceneplayer_81")
    if l_96_1 ~= nil then
      (l_96_0.CUTSCENE):QueueCutscenePlayer(l_96_1)
    end
  end
end

l_0_4.cutsceneplayer_80_grab = l_0_5

