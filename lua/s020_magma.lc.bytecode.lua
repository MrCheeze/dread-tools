local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = s020_magma
function L1_1()
  local L0_2, L1_2
  L0_2 = s020_magma
  L0_2 = L0_2.PatrolRoutesGeneration
  L0_2()
  L0_2 = s020_magma
  L0_2 = L0_2.PatrolRoutesFinalNodesAssignation
  L0_2()
end
L0_1.main = L1_1
L0_1 = s020_magma
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_CURRENT_SPECIAL_ENERGY"
  L3_2 = "f"
  L4_2 = 1000
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAX_SPECIAL_ENERGY"
  L3_2 = "f"
  L4_2 = 1000
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPECIAL_ENERGY"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_CURRENT_LIFE"
  L3_2 = "f"
  L4_2 = 199
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAX_LIFE"
  L3_2 = "f"
  L4_2 = 199
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_MISSILE_MAX"
  L3_2 = "f"
  L4_2 = 20
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_MISSILE_CURRENT"
  L3_2 = "f"
  L4_2 = 20
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_SUPER_MISSILE"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_ICE_MISSILE"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB_MAX"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB_CURRENT"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_VARIA_SUIT"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_GRAVITY_SUIT"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_DOUBLE_JUMP"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPACE_JUMP"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SCREW_ATTACK"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_FLOOR_SLIDE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MORPH_BALL"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_BOMB"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_LINE_BOMB"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_CHARGE_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_WIDE_BEAM"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_DIFFUSION_BEAM"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_GRAPPLE_BEAM"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_PLASMA_BEAM"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_WAVE_BEAM"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAGNET_GLOVE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPEED_BOOSTER"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_OPTIC_CAMOUFLAGE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_GHOST_AURA"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SONAR"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_METROIDNIZATION"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
L0_1.SetupDebugGameBlackboard = L1_1
L0_1 = Blackboard
L0_1 = L0_1.GetProp
L1_1 = "GAME_PROGRESS"
L2_1 = "QUARENTINE_OPENED"
L0_1 = L0_1(L1_1, L2_1)
L1_1 = false
L2_1 = false
L3_1 = false
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = Game
  L0_2 = L0_2.ReinitPlayerFromBlackboard
  L0_2()
  L0_2 = Scenario
  L0_2 = L0_2.ReadFromBlackboard
  L1_2 = Scenario
  L1_2 = L1_2.LUAPropIDs
  L1_2 = L1_2.MAGMA_COOLDOWN_APPLIED
  L2_2 = false
  L0_2 = L0_2(L1_2, L2_2)
  L2_1 = L0_2
  L0_2 = Scenario
  L0_2 = L0_2.ReadFromBlackboard
  L1_2 = Scenario
  L1_2 = L1_2.LUAPropIDs
  L1_2 = L1_2.MAGMA_POSTXRELEASE_APPLIED
  L2_2 = false
  L0_2 = L0_2(L1_2, L2_2)
  L3_1 = L0_2
  L0_2 = Blackboard
  L0_2 = L0_2.GetProp
  L1_2 = "GAME_PROGRESS"
  L2_2 = "QUARENTINE_OPENED"
  L0_2 = L0_2(L1_2, L2_2)
  L0_1 = L0_2
  L0_2 = L0_1
  if L0_2 == true then
    L0_2 = s020_magma
    L0_2 = L0_2.Activate_Setup_PostXRelease
    L0_2()
  end
  L0_2 = Game
  L0_2 = L0_2.GetCooldownFlag
  L0_2 = L0_2()
  if L0_2 == true then
    L0_2 = s020_magma
    L0_2 = L0_2.Enable_PistonOff
    L0_2()
    L0_2 = s020_magma
    L0_2 = L0_2.Cooldown_Activation
    L0_2()
  end
  L0_2 = Scenario
  L0_2 = L0_2.ReadFromBlackboard
  L1_2 = Scenario
  L1_2 = L1_2.LUAPropIDs
  L1_2 = L1_2.COOLDOWN_FINISHED
  L2_2 = false
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    L0_2 = s020_magma
    L0_2 = L0_2.ThermalTrapChange
    L0_2()
    L0_2 = s020_magma
    L0_2 = L0_2.PistonDeactivation
    L0_2()
  end
  L0_2 = L0_1
  if L0_2 ~= true then
    L0_2 = Game
    L0_2 = L0_2.GetActor
    L1_2 = "ev_lavapump_mg_001"
    L0_2 = L0_2(L1_2)
    if L0_2 ~= nil then
      L1_2 = L0_2.MODELUPDATER
      L2_2 = L1_2
      L1_2 = L1_2.SetMeshVisible
      L3_2 = "Slime_MESH"
      L4_2 = false
      L1_2(L2_2, L3_2, L4_2)
    end
    L1_2 = Game
    L1_2 = L1_2.GetActor
    L2_2 = "fan_cooldown_000"
    L1_2 = L1_2(L2_2)
    if L1_2 ~= nil then
      L2_2 = L1_2.MODELUPDATER
      L3_2 = L2_2
      L2_2 = L2_2.SetMeshVisible
      L4_2 = "Slime_MESH"
      L5_2 = false
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L4_1.InitFromBlackboard = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L3_1
  if L0_2 == false then
    L0_2 = Game
    L0_2 = L0_2.PushSetup
    L1_2 = "PostXRelease"
    L2_2 = true
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = Scenario
    L0_2 = L0_2.WriteToBlackboard
    L1_2 = Scenario
    L1_2 = L1_2.LUAPropIDs
    L1_2 = L1_2.MAGMA_POSTXRELEASE_APPLIED
    L2_2 = "b"
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = true
    L3_1 = L0_2
  end
end
L4_1.Activate_Setup_PostXRelease = L5_1
L4_1 = s020_magma
L5_1 = {}
L5_1.ShowDeath = true
L5_1.GoToMainMenu = false
L4_1.tGetOnDeathOverrides = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2
  L0_2 = s020_magma
  L0_2 = L0_2.tGetOnDeathOverrides
  return L0_2
end
L4_1.GetOnDeathOverrides = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2
end
L4_1.OnBeforeGenerate = L5_1
L4_1 = s020_magma
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CurrentScenario
  L2_2.oEmmyEntity = A1_2
  L2_2 = AI
  L2_2 = L2_2.SetWorldGraphToEmmy
  L3_2 = "LE_WorldGraph"
  L4_2 = A1_2.sName
  L2_2(L3_2, L4_2)
  L2_2 = s020_magma
  L2_2 = L2_2.ChangePatrolEmmy
  L3_2 = "PATROLROUTE_01"
  L2_2(L3_2)
  L2_2 = print
  L3_2 = "EMMY: Generation OK. Starting patrol: "
  L4_2 = A1_2.AI
  L4_2 = L4_2.sCurrentPatrol
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
end
L4_1.OnEmmyMagmaGenerated = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = Scenario
  L0_2 = L0_2.CheckEmmyAlive
  L1_2 = CurrentScenario
  L1_2 = L1_2.oEmmyEntity
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = Game
    L0_2 = L0_2.GetActor
    L1_2 = "LM_EmmyEntrancePoint_024"
    L0_2 = L0_2(L1_2)
    L1_2 = CurrentScenario
    L1_2 = L1_2.oEmmyEntity
    L1_2.bEnabled = false
    L1_2 = CurrentScenario
    L1_2 = L1_2.oEmmyEntity
    L2_2 = L0_2.vPos
    L1_2.vPos = L2_2
    L1_2 = CurrentScenario
    L1_2 = L1_2.oEmmyEntity
    L2_2 = L0_2.vAng
    L1_2.vAng = L2_2
    L1_2 = CurrentScenario
    L1_2 = L1_2.oEmmyEntity
    L1_2.bEnabled = true
  end
  L0_2 = GUI
  L0_2 = L0_2.AddEmmyMissionLogEntry
  L1_2 = "#MLOG_ENCOUNTER_EMMY_MAGMA"
  L0_2(L1_2)
end
L4_1.RelocateEmmy_AfterPresentation = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.PushSetup
  L1_2 = "PostEmmy"
  L2_2 = true
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
end
L4_1.OnEmmyMagmaDead = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "centralunitmagmacontroller"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.CENTRALUNIT
    L2_2 = L1_2
    L1_2 = L1_2.OnEmmyAbilityObtainedFadeOutCompleted
    L1_2(L2_2)
  end
end
L4_1.OnEmmyAbilityObtainedFadeOutCompleted = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = GUI
  L0_2 = L0_2.ShowMessage
  L1_2 = "#PLACEHOLDER_EMMYMAGMA_KILLED"
  L2_2 = true
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = Game
  L0_2 = L0_2.GetPlayer
  L0_2 = L0_2()
  if L0_2 ~= nil then
    L1_2 = L0_2.INPUT
    L2_2 = L1_2
    L1_2 = L1_2.IgnoreInput
    L3_2 = false
    L4_2 = false
    L5_2 = "OnEmmyMagmaDead"
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L4_1.DelayedOnEmmyMagmaDead = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2
end
L4_1.OnEmmyDeathMessageSkipped = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "centralunitmagmacontroller"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.CENTRALUNIT
    L2_2 = L1_2
    L1_2 = L1_2.UnlockDoors
    L1_2(L2_2)
  else
    L1_2 = print
    L2_2 = "CENTRAL_UNIT: centralunitmagmacontroller not found"
    L1_2(L2_2)
  end
end
L4_1.OnUnlockEmmyDoors = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "centralunitmagmacontroller"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.CENTRALUNIT
    L2_2 = L1_2
    L1_2 = L1_2.LockDoors
    L1_2(L2_2)
  else
    L1_2 = print
    L2_2 = "CENTRAL_UNIT: centralunitmagmacontroller not found"
    L1_2(L2_2)
  end
end
L4_1.OnLockEmmyDoors = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2
  L0_2 = s020_magma
  L0_2 = L0_2.OnLockEmmyDoors
  L0_2()
end
L4_1.OnCheckpoint_MorphBall = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "SP_Emmy"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.SPAWNPOINT
    L2_2 = L1_2
    L1_2 = L1_2.AddPatrolShape
    L3_2 = "LS_PATROLEMMY_01"
    L1_2(L2_2, L3_2)
    L1_2 = L0_2.SPAWNPOINT
    L2_2 = L1_2
    L1_2 = L1_2.AddPatrolShape
    L3_2 = "LS_PATROLEMMY_02"
    L1_2(L2_2, L3_2)
    L1_2 = L0_2.SPAWNPOINT
    L2_2 = L1_2
    L1_2 = L1_2.AddPatrolShape
    L3_2 = "LS_PATROLEMMY_03"
    L1_2(L2_2, L3_2)
    L1_2 = L0_2.SPAWNPOINT
    L2_2 = L1_2
    L1_2 = L1_2.AddPatrolShape
    L3_2 = "LS_PATROLEMMY_04"
    L1_2(L2_2, L3_2)
    L1_2 = L0_2.SPAWNPOINT
    L2_2 = L1_2
    L1_2 = L1_2.AddPatrolShape
    L3_2 = "LS_PATROLEMMY_05"
    L1_2(L2_2, L3_2)
    L1_2 = L0_2.SPAWNPOINT
    L2_2 = L1_2
    L1_2 = L1_2.AddPatrolShape
    L3_2 = "LS_PATROLEMMY_06"
    L1_2(L2_2, L3_2)
    L1_2 = L0_2.SPAWNPOINT
    L2_2 = L1_2
    L1_2 = L1_2.AddPatrolShape
    L3_2 = "LS_PATROLEMMY_07"
    L1_2(L2_2, L3_2)
    L1_2 = L0_2.SPAWNPOINT
    L2_2 = L1_2
    L1_2 = L1_2.AddPatrolShape
    L3_2 = "LS_PATROLEMMY_08"
    L1_2(L2_2, L3_2)
    L1_2 = L0_2.SPAWNPOINT
    L2_2 = L1_2
    L1_2 = L1_2.AddPatrolShape
    L3_2 = "LS_PATROLEMMY_09"
    L1_2(L2_2, L3_2)
    L1_2 = L0_2.SPAWNPOINT
    L2_2 = L1_2
    L1_2 = L1_2.AddPatrolShape
    L3_2 = "LS_PATROLEMMY_10"
    L1_2(L2_2, L3_2)
    L1_2 = L0_2.SPAWNPOINT
    L2_2 = L1_2
    L1_2 = L1_2.AddPatrolShape
    L3_2 = "LS_PATROLEMMY_11"
    L1_2(L2_2, L3_2)
    L1_2 = L0_2.SPAWNPOINT
    L2_2 = L1_2
    L1_2 = L1_2.AddPatrolShape
    L3_2 = "LS_PATROLEMMY_12"
    L1_2(L2_2, L3_2)
    L1_2 = L0_2.SPAWNPOINT
    L2_2 = L1_2
    L1_2 = L1_2.AddPatrolShape
    L3_2 = "LS_PATROLEMMY_13"
    L1_2(L2_2, L3_2)
    L1_2 = L0_2.SPAWNPOINT
    L2_2 = L1_2
    L1_2 = L1_2.AddPatrolShape
    L3_2 = "LS_PATROLEMMY_14"
    L1_2(L2_2, L3_2)
  end
  L1_2 = AI
  L1_2 = L1_2.AddPatrol
  L2_2 = "LE_WorldGraph"
  L3_2 = "PATROLROUTE_01"
  L4_2 = "LS_PATROLEMMY_01"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = AI
  L1_2 = L1_2.AddPatrol
  L2_2 = "LE_WorldGraph"
  L3_2 = "PATROLROUTE_02"
  L4_2 = "LS_PATROLEMMY_02"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = AI
  L1_2 = L1_2.AddPatrol
  L2_2 = "LE_WorldGraph"
  L3_2 = "PATROLROUTE_03"
  L4_2 = "LS_PATROLEMMY_03"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = AI
  L1_2 = L1_2.AddPatrol
  L2_2 = "LE_WorldGraph"
  L3_2 = "PATROLROUTE_04"
  L4_2 = "LS_PATROLEMMY_04"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = AI
  L1_2 = L1_2.AddPatrol
  L2_2 = "LE_WorldGraph"
  L3_2 = "PATROLROUTE_05"
  L4_2 = "LS_PATROLEMMY_05"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = AI
  L1_2 = L1_2.AddPatrol
  L2_2 = "LE_WorldGraph"
  L3_2 = "PATROLROUTE_06"
  L4_2 = "LS_PATROLEMMY_06"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = AI
  L1_2 = L1_2.AddPatrol
  L2_2 = "LE_WorldGraph"
  L3_2 = "PATROLROUTE_07"
  L4_2 = "LS_PATROLEMMY_07"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = AI
  L1_2 = L1_2.AddPatrol
  L2_2 = "LE_WorldGraph"
  L3_2 = "PATROLROUTE_08"
  L4_2 = "LS_PATROLEMMY_08"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = AI
  L1_2 = L1_2.AddPatrol
  L2_2 = "LE_WorldGraph"
  L3_2 = "PATROLROUTE_09"
  L4_2 = "LS_PATROLEMMY_09"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = AI
  L1_2 = L1_2.AddPatrol
  L2_2 = "LE_WorldGraph"
  L3_2 = "PATROLROUTE_10"
  L4_2 = "LS_PATROLEMMY_10"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = AI
  L1_2 = L1_2.AddPatrol
  L2_2 = "LE_WorldGraph"
  L3_2 = "PATROLROUTE_11"
  L4_2 = "LS_PATROLEMMY_11"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = AI
  L1_2 = L1_2.AddPatrol
  L2_2 = "LE_WorldGraph"
  L3_2 = "PATROLROUTE_12"
  L4_2 = "LS_PATROLEMMY_12"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = AI
  L1_2 = L1_2.AddPatrol
  L2_2 = "LE_WorldGraph"
  L3_2 = "PATROLROUTE_13"
  L4_2 = "LS_PATROLEMMY_13"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = AI
  L1_2 = L1_2.AddPatrol
  L2_2 = "LE_WorldGraph"
  L3_2 = "PATROLROUTE_14"
  L4_2 = "LS_PATROLEMMY_14"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = print
  L2_2 = "s020_magma.PatrolRoutesGeneration(): Patrol designation OK"
  L1_2(L2_2)
end
L4_1.PatrolRoutesGeneration = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_01"
  L3_2 = {}
  L4_2 = "WorldGraph_41"
  L3_2[1] = L4_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_01"
  L3_2 = {}
  L4_2 = "WorldGraph_38"
  L3_2[1] = L4_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_02"
  L3_2 = {}
  L4_2 = "WorldGraph_4"
  L5_2 = "WorldGraph_36"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_02"
  L3_2 = {}
  L4_2 = "WorldGraph_62"
  L5_2 = "WorldGraph_81"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_02"
  L3_2 = {}
  L4_2 = "WorldGraph_0"
  L5_2 = "WorldGraph_13"
  L6_2 = "WorldGraph_12"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_02"
  L3_2 = {}
  L4_2 = "WorldGraph_11"
  L5_2 = "WorldGraph_59"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_03"
  L3_2 = {}
  L4_2 = "WorldGraph_35"
  L5_2 = "WorldGraph_31"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_03"
  L3_2 = {}
  L4_2 = "WorldGraph_26"
  L5_2 = "WorldGraph_36"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_03"
  L3_2 = {}
  L4_2 = "WorldGraph_83"
  L5_2 = "WorldGraph_64"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_03"
  L3_2 = {}
  L4_2 = "WorldGraph_23"
  L5_2 = "WorldGraph_6"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_04"
  L3_2 = {}
  L4_2 = "WorldGraph_27"
  L5_2 = "WorldGraph_36"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_04"
  L3_2 = {}
  L4_2 = "WorldGraph_25"
  L5_2 = "WorldGraph_38"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_05"
  L3_2 = {}
  L4_2 = "WorldGraph_25"
  L5_2 = "WorldGraph_35"
  L6_2 = "WorldGraph_20"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_05"
  L3_2 = {}
  L4_2 = "WorldGraph_21"
  L5_2 = "WorldGraph_83"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_05"
  L3_2 = {}
  L4_2 = "WorldGraph_64"
  L5_2 = "WorldGraph_33"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_06"
  L3_2 = {}
  L4_2 = "WorldGraph_58"
  L5_2 = "WorldGraph_53"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_06"
  L3_2 = {}
  L4_2 = "WorldGraph_50"
  L3_2[1] = L4_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_06"
  L3_2 = {}
  L4_2 = "WorldGraph_55"
  L5_2 = "WorldGraph_67"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_07"
  L3_2 = {}
  L4_2 = "WorldGraph_88"
  L3_2[1] = L4_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_07"
  L3_2 = {}
  L4_2 = "WorldGraph_98"
  L5_2 = "WorldGraph_48"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_07"
  L3_2 = {}
  L4_2 = "WorldGraph_54"
  L5_2 = "WorldGraph_60"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_08"
  L3_2 = {}
  L4_2 = "WorldGraph_60"
  L5_2 = "WorldGraph_41"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_08"
  L3_2 = {}
  L4_2 = "WorldGraph_49"
  L5_2 = "WorldGraph_54"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_08"
  L3_2 = {}
  L4_2 = "WorldGraph_58"
  L5_2 = "WorldGraph_54"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_08"
  L3_2 = {}
  L4_2 = "WorldGraph_48"
  L5_2 = "WorldGraph_80"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_08"
  L3_2 = {}
  L4_2 = "WorldGraph_77"
  L5_2 = "WorldGraph_45"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_09"
  L3_2 = {}
  L4_2 = "WorldGraph_71"
  L5_2 = "WorldGraph_73"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_09"
  L3_2 = {}
  L4_2 = "WorldGraph_70"
  L5_2 = "WorldGraph_69"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_09"
  L3_2 = {}
  L4_2 = "WorldGraph_77"
  L3_2[1] = L4_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_09"
  L3_2 = {}
  L4_2 = "WorldGraph_68"
  L5_2 = "WorldGraph_76"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_10"
  L3_2 = {}
  L4_2 = "WorldGraph_102"
  L3_2[1] = L4_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_10"
  L3_2 = {}
  L4_2 = "WorldGraph_93"
  L5_2 = "WorldGraph_92"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_10"
  L3_2 = {}
  L4_2 = "WorldGraph_98"
  L5_2 = "WorldGraph_97"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_10"
  L3_2 = {}
  L4_2 = "WorldGraph_101"
  L5_2 = "WorldGraph_92"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_10"
  L3_2 = {}
  L4_2 = "WorldGraph_99"
  L5_2 = "WorldGraph_91"
  L6_2 = "WorldGraph_94"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_11"
  L3_2 = {}
  L4_2 = "WorldGraph_26"
  L5_2 = "WorldGraph_9"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_11"
  L3_2 = {}
  L4_2 = "WorldGraph_109"
  L5_2 = "WorldGraph_27"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_12"
  L3_2 = {}
  L4_2 = "WorldGraph_75"
  L3_2[1] = L4_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_12"
  L3_2 = {}
  L4_2 = "WorldGraph_76"
  L5_2 = "WorldGraph_77"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_13"
  L3_2 = {}
  L4_2 = "WorldGraph_57"
  L5_2 = "WorldGraph_65"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_13"
  L3_2 = {}
  L4_2 = "WorldGraph_1"
  L5_2 = "WorldGraph_57"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_13"
  L3_2 = {}
  L4_2 = "WorldGraph_3"
  L5_2 = "WorldGraph_59"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_13"
  L3_2 = {}
  L4_2 = "WorldGraph_5"
  L5_2 = "WorldGraph_59"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_14"
  L3_2 = {}
  L4_2 = "WorldGraph_81"
  L5_2 = "WorldGraph_11"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_14"
  L3_2 = {}
  L4_2 = "WorldGraph_4"
  L5_2 = "WorldGraph_13"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = print
  L1_2 = "s020_magma.PatrolRoutesFinalNodesAssignation(): Final Nodes Assignation OK"
  L0_2(L1_2)
end
L4_1.PatrolRoutesFinalNodesAssignation = L5_1
L4_1 = s020_magma
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Scenario
  L1_2 = L1_2.CheckEmmyAlive
  L2_2 = CurrentScenario
  L2_2 = L2_2.oEmmyEntity
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = CurrentScenario
    L1_2 = L1_2.oEmmyEntity
    L1_2 = L1_2.AI
    L1_2.sCurrentPatrol = A0_2
    L1_2 = print
    L2_2 = "EMMY: Assigned route "
    L3_2 = A0_2
    L2_2 = L2_2 .. L3_2
    L1_2(L2_2)
  else
    L1_2 = print
    L2_2 = "EMMY: Not found, route "
    L3_2 = A0_2
    L4_2 = " not assigned"
    L2_2 = L2_2 .. L3_2 .. L4_2
    L1_2(L2_2)
  end
end
L4_1.ChangePatrolEmmy = L5_1
L4_1 = s020_magma
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = string
  L2_2 = L2_2.gsub
  L3_2 = A0_2.sName
  L4_2 = "TG_PATROLEMMYACTIVATOR_"
  L5_2 = "PATROLROUTE_"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = s020_magma
  L3_2 = L3_2.ChangePatrolEmmy
  L4_2 = L2_2
  L3_2(L4_2)
end
L4_1.OnEnter_PatrolEmmyActivator = L5_1
L4_1 = s020_magma
function L5_1(A0_2, A1_2)
end
L4_1.OnExit_PatrolEmmyActivator = L5_1
L4_1 = s020_magma
L4_1.tEmmyDoor = nil
L4_1 = s020_magma
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = Scenario
  L3_2 = L3_2.CheckEmmyAlive
  L4_2 = CurrentScenario
  L4_2 = L4_2.oEmmyEntity
  L3_2 = L3_2(L4_2)
  if L3_2 then
    if A1_2 then
      L3_2 = CurrentScenario
      L3_2 = L3_2.oEmmyEntity
      if L3_2 ~= nil then
        L3_2 = nil
        if A2_2 then
          L4_2 = s020_magma
          L4_2 = L4_2.HardEmmyRelocationDoor
          L5_2 = A0_2
          L4_2 = L4_2(L5_2)
          L3_2 = L4_2
        else
          L4_2 = s020_magma
          L4_2 = L4_2.EmmyRelocationDoor
          L5_2 = A0_2
          L4_2 = L4_2(L5_2)
          L3_2 = L4_2
        end
        if L3_2 ~= nil then
          L4_2 = Game
          L4_2 = L4_2.GetActor
          L5_2 = L3_2
          L4_2 = L4_2(L5_2)
          L5_2 = print
          L6_2 = L4_2.sName
          L5_2(L6_2)
          L5_2 = CurrentScenario
          L5_2 = L5_2.oEmmyEntity
          L5_2.bEnabled = false
          L5_2 = CurrentScenario
          L5_2 = L5_2.oEmmyEntity
          L6_2 = L4_2.vPos
          L5_2.vPos = L6_2
          L5_2 = CurrentScenario
          L5_2 = L5_2.oEmmyEntity
          L6_2 = L4_2.vAng
          L5_2.vAng = L6_2
          L5_2 = CurrentScenario
          L5_2 = L5_2.oEmmyEntity
          L5_2.bEnabled = true
        end
      end
    else
      L3_2 = CurrentScenario
      L3_2 = L3_2.oEmmyEntity
      L3_2.bEnabled = false
    end
  end
end
L4_1.OnWalkThroughEmmyDoor = L5_1
L4_1 = s020_magma
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = print
  L2_2 = "Door: Hard "
  L3_2 = A0_2.sName
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = A0_2.sName
  if L1_2 == "dooremmy" then
    L1_2 = s020_magma
    L2_2 = {}
    L3_2 = "LM_EmmyEntrancePoint_025"
    L2_2[1] = L3_2
    L1_2.tEmmyDoor = L2_2
  else
    L1_2 = A0_2.sName
    if L1_2 == "dooremmy_001" then
      L1_2 = Blackboard
      L1_2 = L1_2.GetProp
      L2_2 = "s020_magma"
      L3_2 = "ev_dspiston_mg_001:ACTIVATABLE:Activated"
      L1_2 = L1_2(L2_2, L3_2)
      if L1_2 ~= nil then
        L2_2 = s020_magma
        L3_2 = {}
        L4_2 = "LM_EmmyEntrancePoint_017"
        L3_2[1] = L4_2
        L2_2.tEmmyDoor = L3_2
      else
        L2_2 = s020_magma
        L3_2 = {}
        L4_2 = "LM_EmmyEntrancePoint_004"
        L3_2[1] = L4_2
        L2_2.tEmmyDoor = L3_2
      end
    else
      L1_2 = A0_2.sName
      if L1_2 == "dooremmy_002" then
        L1_2 = Blackboard
        L1_2 = L1_2.GetProp
        L2_2 = "s020_magma"
        L3_2 = "ev_tpiston_mg_001:ACTIVATABLE:Activated"
        L1_2 = L1_2(L2_2, L3_2)
        if L1_2 ~= nil then
          L2_2 = s020_magma
          L3_2 = {}
          L4_2 = "LM_EmmyEntrancePoint_021"
          L3_2[1] = L4_2
          L2_2.tEmmyDoor = L3_2
        else
          L2_2 = s020_magma
          L3_2 = {}
          L4_2 = "LM_EmmyEntrancePoint_006"
          L3_2[1] = L4_2
          L2_2.tEmmyDoor = L3_2
        end
      else
        L1_2 = A0_2.sName
        if L1_2 == "dooremmy_003" then
          L1_2 = s020_magma
          L2_2 = {}
          L3_2 = "LM_EmmyEntrancePoint_003"
          L2_2[1] = L3_2
          L1_2.tEmmyDoor = L2_2
        else
          L1_2 = A0_2.sName
          if L1_2 == "dooremmy_004" then
            L1_2 = s020_magma
            L2_2 = {}
            L3_2 = "LM_EmmyEntrancePoint_012"
            L2_2[1] = L3_2
            L1_2.tEmmyDoor = L2_2
          else
            L1_2 = A0_2.sName
            if L1_2 == "dooremmy_005" then
              L1_2 = s020_magma
              L2_2 = {}
              L3_2 = "LM_EmmyEntrancePoint_014"
              L2_2[1] = L3_2
              L1_2.tEmmyDoor = L2_2
            else
              L1_2 = A0_2.sName
              if L1_2 == "dooremmy_006" then
                L1_2 = s020_magma
                L2_2 = {}
                L3_2 = "LM_EmmyEntrancePoint_015"
                L2_2[1] = L3_2
                L1_2.tEmmyDoor = L2_2
              else
                L1_2 = A0_2.sName
                if L1_2 == "dooremmy_007" then
                  L1_2 = s020_magma
                  L2_2 = {}
                  L3_2 = "LM_EmmyEntrancePoint_013"
                  L2_2[1] = L3_2
                  L1_2.tEmmyDoor = L2_2
                else
                  L1_2 = A0_2.sName
                  if L1_2 == "dooremmy_008" then
                    L1_2 = s020_magma
                    L2_2 = {}
                    L3_2 = "LM_EmmyEntrancePoint_012"
                    L2_2[1] = L3_2
                    L1_2.tEmmyDoor = L2_2
                  else
                    L1_2 = A0_2.sName
                    if L1_2 == "dooremmy_009" then
                      L1_2 = s020_magma
                      L2_2 = {}
                      L3_2 = "LM_EmmyEntrancePoint_008"
                      L2_2[1] = L3_2
                      L1_2.tEmmyDoor = L2_2
                    else
                      L1_2 = s020_magma
                      L1_2.tEmmyDoor = nil
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
  L1_2 = s020_magma
  L1_2 = L1_2.tEmmyDoor
  if L1_2 ~= nil then
    L1_2 = s020_magma
    L1_2 = L1_2.tEmmyDoor
    L2_2 = math
    L2_2 = L2_2.random
    L3_2 = table
    L3_2 = L3_2.maxn
    L4_2 = s020_magma
    L4_2 = L4_2.tEmmyDoor
    L3_2, L4_2 = L3_2(L4_2)
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L1_2[L2_2]
    return L1_2
  else
    L1_2 = nil
    return L1_2
  end
end
L4_1.HardEmmyRelocationDoor = L5_1
L4_1 = s020_magma
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.sName
  if L1_2 == "dooremmy" then
    L1_2 = s020_magma
    L2_2 = {}
    L3_2 = "LM_EmmyEntrancePoint_005"
    L4_2 = "LM_EmmyEntrancePoint_006"
    L5_2 = "LM_EmmyEntrancePoint_025"
    L2_2[1] = L3_2
    L2_2[2] = L4_2
    L2_2[3] = L5_2
    L1_2.tEmmyDoor = L2_2
  else
    L1_2 = A0_2.sName
    if L1_2 == "dooremmy_001" then
      L1_2 = Blackboard
      L1_2 = L1_2.GetProp
      L2_2 = "s020_magma"
      L3_2 = "ev_dspiston_mg_001:ACTIVATABLE:Activated"
      L1_2 = L1_2(L2_2, L3_2)
      if L1_2 ~= nil then
        L2_2 = s020_magma
        L3_2 = {}
        L4_2 = "LM_EmmyEntrancePoint_017"
        L3_2[1] = L4_2
        L2_2.tEmmyDoor = L3_2
      else
        L2_2 = s020_magma
        L3_2 = {}
        L4_2 = "LM_EmmyEntrancePoint_004"
        L3_2[1] = L4_2
        L2_2.tEmmyDoor = L3_2
      end
    else
      L1_2 = A0_2.sName
      if L1_2 == "dooremmy_002" then
        L1_2 = Blackboard
        L1_2 = L1_2.GetProp
        L2_2 = "s020_magma"
        L3_2 = "ev_tpiston_mg_001:ACTIVATABLE:Activated"
        L1_2 = L1_2(L2_2, L3_2)
        if L1_2 ~= nil then
          L2_2 = s020_magma
          L3_2 = {}
          L4_2 = "LM_EmmyEntrancePoint_020"
          L5_2 = "LM_EmmyEntrancePoint_021"
          L6_2 = "LM_EmmyEntrancePoint_024"
          L3_2[1] = L4_2
          L3_2[2] = L5_2
          L3_2[3] = L6_2
          L2_2.tEmmyDoor = L3_2
        else
          L2_2 = s020_magma
          L3_2 = {}
          L4_2 = "LM_EmmyEntrancePoint_017"
          L5_2 = "LM_EmmyEntrancePoint_024"
          L6_2 = "LM_EmmyEntrancePoint_006"
          L3_2[1] = L4_2
          L3_2[2] = L5_2
          L3_2[3] = L6_2
          L2_2.tEmmyDoor = L3_2
        end
      else
        L1_2 = A0_2.sName
        if L1_2 == "dooremmy_003" then
          L1_2 = s020_magma
          L2_2 = {}
          L3_2 = "LM_EmmyEntrancePoint_002"
          L4_2 = "LM_EmmyEntrancePoint_003"
          L2_2[1] = L3_2
          L2_2[2] = L4_2
          L1_2.tEmmyDoor = L2_2
        else
          L1_2 = A0_2.sName
          if L1_2 == "dooremmy_004" then
            L1_2 = s020_magma
            L2_2 = {}
            L3_2 = "LM_EmmyEntrancePoint_000"
            L4_2 = "LM_EmmyEntrancePoint_012"
            L5_2 = "LM_EmmyEntrancePoint_015"
            L2_2[1] = L3_2
            L2_2[2] = L4_2
            L2_2[3] = L5_2
            L1_2.tEmmyDoor = L2_2
          else
            L1_2 = A0_2.sName
            if L1_2 == "dooremmy_005" then
              L1_2 = s020_magma
              L2_2 = {}
              L3_2 = "LM_EmmyEntrancePoint_014"
              L2_2[1] = L3_2
              L1_2.tEmmyDoor = L2_2
            else
              L1_2 = A0_2.sName
              if L1_2 == "dooremmy_006" then
                L1_2 = s020_magma
                L2_2 = {}
                L3_2 = "LM_EmmyEntrancePoint_015"
                L4_2 = "LM_EmmyEntrancePoint_014"
                L2_2[1] = L3_2
                L2_2[2] = L4_2
                L1_2.tEmmyDoor = L2_2
              else
                L1_2 = A0_2.sName
                if L1_2 == "dooremmy_007" then
                  L1_2 = s020_magma
                  L2_2 = {}
                  L3_2 = "LM_EmmyEntrancePoint_010"
                  L4_2 = "LM_EmmyEntrancePoint_009"
                  L5_2 = "LM_EmmyEntrancePoint_013"
                  L2_2[1] = L3_2
                  L2_2[2] = L4_2
                  L2_2[3] = L5_2
                  L1_2.tEmmyDoor = L2_2
                else
                  L1_2 = A0_2.sName
                  if L1_2 == "dooremmy_008" then
                    L1_2 = s020_magma
                    L2_2 = {}
                    L3_2 = "LM_EmmyEntrancePoint_012"
                    L2_2[1] = L3_2
                    L1_2.tEmmyDoor = L2_2
                  else
                    L1_2 = A0_2.sName
                    if L1_2 == "dooremmy_009" then
                      L1_2 = s020_magma
                      L2_2 = {}
                      L3_2 = "LM_EmmyEntrancePoint_007"
                      L4_2 = "LM_EmmyEntrancePoint_008"
                      L5_2 = "LM_EmmyEntrancePoint_009"
                      L2_2[1] = L3_2
                      L2_2[2] = L4_2
                      L2_2[3] = L5_2
                      L1_2.tEmmyDoor = L2_2
                    else
                      L1_2 = s020_magma
                      L1_2.tEmmyDoor = nil
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
  L1_2 = s020_magma
  L1_2 = L1_2.tEmmyDoor
  if L1_2 ~= nil then
    L1_2 = s020_magma
    L1_2 = L1_2.tEmmyDoor
    L2_2 = math
    L2_2 = L2_2.random
    L3_2 = table
    L3_2 = L3_2.maxn
    L4_2 = s020_magma
    L4_2 = L4_2.tEmmyDoor
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    L1_2 = L1_2[L2_2]
    return L1_2
  else
    L1_2 = nil
    return L1_2
  end
end
L4_1.EmmyRelocationDoor = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_000_B"
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = print
  L1_2 = "OnEnter_ChangeCamera_000_B"
  L0_2(L1_2)
end
L4_1.OnEnter_ChangeCamera_000_B = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_000_B"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = print
  L1_2 = "OnExit_ChangeCamera_000_B"
  L0_2(L1_2)
end
L4_1.OnExit_ChangeCamera_000_B = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_009_B"
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = print
  L1_2 = "OnEnter_ChangeCamera_009_B"
  L0_2(L1_2)
end
L4_1.OnEnter_ChangeCamera_009_B = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_009_B"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = print
  L1_2 = "OnExit_ChangeCamera_009_B"
  L0_2(L1_2)
end
L4_1.OnExit_ChangeCamera_009_B = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_009_C"
  L2_2 = true
  L0_2(L1_2, L2_2)
end
L4_1.OnEnter_ChangeCamera_009_C = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_009_C"
  L2_2 = false
  L0_2(L1_2, L2_2)
end
L4_1.OnExit_ChangeCamera_009_C = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_015_B"
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = print
  L1_2 = "OnEnter_ChangeCamera_015_B"
  L0_2(L1_2)
end
L4_1.OnEnter_ChangeCamera_015_B = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_015_B"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = print
  L1_2 = "OnExit_ChangeCamera_015_B"
  L0_2(L1_2)
end
L4_1.OnExit_ChangeCamera_015_B = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_023_B"
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = print
  L1_2 = "OnEnter_ChangeCamera_023_B"
  L0_2(L1_2)
end
L4_1.OnEnter_ChangeCamera_023_B = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_023_B"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = print
  L1_2 = "OnExit_ChangeCamera_023_B"
  L0_2(L1_2)
end
L4_1.OnExit_ChangeCamera_023_B = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_024_B"
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = print
  L1_2 = "OnEnter_ChangeCamera_024_B"
  L0_2(L1_2)
end
L4_1.OnEnter_ChangeCamera_024_B = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_024_B"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = print
  L1_2 = "OnExit_ChangeCamera_024_B"
  L0_2(L1_2)
end
L4_1.OnExit_ChangeCamera_024_B = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_025_B"
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = print
  L1_2 = "OnEnter_ChangeCamera_025_B"
  L0_2(L1_2)
end
L4_1.OnEnter_ChangeCamera_025_B = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_025_B"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = print
  L1_2 = "OnExit_ChangeCamera_025_B"
  L0_2(L1_2)
end
L4_1.OnExit_ChangeCamera_025_B = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_026_B"
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = print
  L1_2 = "OnEnter_ChangeCamera_026_B"
  L0_2(L1_2)
end
L4_1.OnEnter_ChangeCamera_026_B = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_026_B"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = print
  L1_2 = "OnExit_ChangeCamera_026_B"
  L0_2(L1_2)
end
L4_1.OnExit_ChangeCamera_026_B = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_051_B"
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = print
  L1_2 = "OnEnter_ChangeCamera_051_B"
  L0_2(L1_2)
end
L4_1.OnEnter_ChangeCamera_051_B = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_051_B"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = print
  L1_2 = "OnExit_ChangeCamera_051_B"
  L0_2(L1_2)
end
L4_1.OnExit_ChangeCamera_051_B = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "TG_ZoomOutQuit"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.TRIGGER
    L1_2.bWantsEnabled = true
  end
end
L4_1.Enable_TG__ZoomOutQuit = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "camerarailpath"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L0_2.bEnabled = false
  end
end
L4_1.Disable_MagnetRailCam = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "CameraRail_PathToKraid"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L0_2.bEnabled = false
  end
end
L4_1.Disable_CamToKraid = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L2_1
  if L0_2 == false then
    L0_2 = Game
    L0_2 = L0_2.PushSetup
    L1_2 = "Cooldown"
    L2_2 = true
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = Scenario
    L0_2 = L0_2.WriteToBlackboard
    L1_2 = Scenario
    L1_2 = L1_2.LUAPropIDs
    L1_2 = L1_2.MAGMA_COOLDOWN_APPLIED
    L2_2 = "b"
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = true
    L2_1 = L0_2
  end
end
L4_1.Cooldown_Activation = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.SetCooldownFlag
  L1_2 = false
  L0_2(L1_2)
  L0_2 = Scenario
  L0_2 = L0_2.WriteToBlackboard
  L1_2 = Scenario
  L1_2 = L1_2.LUAPropIDs
  L1_2 = L1_2.COOLDOWN_FINISHED
  L2_2 = "b"
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = s020_magma
  L0_2 = L0_2.ThermalTrapChange
  L0_2()
  L0_2 = s020_magma
  L0_2 = L0_2.PistonDeactivation
  L0_2()
  L0_2 = Game
  L0_2 = L0_2.PushSetup
  L1_2 = "PostCooldown"
  L2_2 = true
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = Scenario
  L0_2 = L0_2.WriteToBlackboard
  L1_2 = Scenario
  L1_2 = L1_2.LUAPropIDs
  L1_2 = L1_2.MAGMA_COOLDOWN_APPLIED
  L2_2 = "b"
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = false
  L2_1 = L0_2
end
L4_1.Cooldown_Deactivation = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "trap_thermal_horizontal_PRECOOL"
  L0_2 = L0_2(L1_2)
  L1_2 = Game
  L1_2 = L1_2.GetActor
  L2_2 = "trap_thermal_horizontal_POSTCOOL"
  L1_2 = L1_2(L2_2)
  if L0_2 ~= nil and L1_2 ~= nil then
    L1_2.bEnabled = true
    L0_2.bEnabled = false
  end
end
L4_1.ThermalTrapChange = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = s020_magma
  L0_2 = L0_2.Enable_PistonOff
  L0_2()
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "ev_hpiston_mg_001"
  L0_2 = L0_2(L1_2)
  L1_2 = Game
  L1_2 = L1_2.GetActor
  L2_2 = "pistonmag01_001"
  L1_2 = L1_2(L2_2)
  L2_2 = Game
  L2_2 = L2_2.GetActor
  L3_2 = "shootactivatormag01_001"
  L2_2 = L2_2(L3_2)
  L3_2 = Game
  L3_2 = L3_2.GetActor
  L4_2 = "pistonmag01_off_post"
  L3_2 = L3_2(L4_2)
  L4_2 = Game
  L4_2 = L4_2.GetActor
  L5_2 = "shootactivatoroff_000_post"
  L4_2 = L4_2(L5_2)
  if L0_2 ~= nil and L1_2 ~= nil and L2_2 ~= nil and L3_2 ~= nil and L4_2 ~= nil then
    L0_2.bEnabled = false
    L1_2.bEnabled = false
    L2_2.bEnabled = false
    L3_2.bEnabled = true
    L4_2.bEnabled = true
  end
  L5_2 = Game
  L5_2 = L5_2.GetActor
  L6_2 = "fusiblebox_000"
  L5_2 = L5_2(L6_2)
  L6_2 = Game
  L6_2 = L6_2.GetActor
  L7_2 = "fusiblebox_broken_000"
  L6_2 = L6_2(L7_2)
  if L5_2 ~= nil and L6_2 ~= nil then
    L6_2.bEnabled = true
    L5_2.bEnabled = false
  end
end
L4_1.PistonDeactivation = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "ev_hpiston_mg_001_off"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L0_2.bEnabled = true
  end
end
L4_1.Enable_PistonOff = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = print
  L1_2 = "FADE OUT COOLDOW-X"
  L0_2(L1_2)
  L0_2 = Game
  L0_2 = L0_2.FadeOut
  L1_2 = 0.6
  L0_2(L1_2)
  L0_2 = s020_magma
  L1_2 = Game
  L1_2 = L1_2.GetSFXVolume
  L1_2 = L1_2()
  L0_2.fSFXVolume = L1_2
  L0_2 = Game
  L0_2 = L0_2.SetSFXVolume
  L1_2 = 0
  L2_2 = 0.7
  L0_2(L1_2, L2_2)
  L0_2 = Game
  L0_2 = L0_2.StopMusicWithFade
  L1_2 = 0.6
  L2_2 = true
  L0_2(L1_2, L2_2)
end
L4_1.OnEnter_FadeOutCooldownX = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "accesspoint"
  L0_2 = L0_2(L1_2)
  L1_2 = Blackboard
  L1_2 = L1_2.GetProp
  L2_2 = "GAME_PROGRESS"
  L3_2 = "ADAMDIALOGUE"
  L1_2 = L1_2(L2_2, L3_2)
  if L0_2 ~= nil then
    if L1_2 == "DIAG_ADAM_CAVE_3" then
      L2_2 = L0_2.USABLE
      L3_2 = L2_2
      L2_2 = L2_2.ActiveDialogue
      L4_2 = "DIAG_ADAM_MAGMA_1"
      L2_2(L3_2, L4_2)
      L2_2 = Blackboard
      L2_2 = L2_2.SetProp
      L3_2 = "GAME_PROGRESS"
      L4_2 = "ADAMDIALOGUE"
      L5_2 = "s"
      L6_2 = "DIAG_ADAM_MAGMA_1"
      L2_2(L3_2, L4_2, L5_2, L6_2)
    elseif L1_2 == "DIAG_ADAM_CAVE_4" then
      L2_2 = Game
      L2_2 = L2_2.GetCooldownFlag
      L2_2 = L2_2()
      if L2_2 == false then
        L2_2 = Blackboard
        L2_2 = L2_2.GetProp
        L3_2 = "PLAYER_INVENTORY"
        L4_2 = "ITEM_SCREW_ATTACK"
        L2_2 = L2_2(L3_2, L4_2)
        if L2_2 ~= nil and 0 < L2_2 then
          L3_2 = L0_2.USABLE
          L4_2 = L3_2
          L3_2 = L3_2.ActiveDialogue
          L5_2 = "DIAG_ADAM_AQUA_3"
          L3_2(L4_2, L5_2)
          L3_2 = Blackboard
          L3_2 = L3_2.SetProp
          L4_2 = "GAME_PROGRESS"
          L5_2 = "ADAMDIALOGUE"
          L6_2 = "s"
          L7_2 = "DIAG_ADAM_AQUA_3"
          L3_2(L4_2, L5_2, L6_2, L7_2)
        end
      end
    end
  end
end
L4_1.OnEnter_AP_03 = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "accesspoint_000"
  L0_2 = L0_2(L1_2)
  L1_2 = Blackboard
  L1_2 = L1_2.GetProp
  L2_2 = "GAME_PROGRESS"
  L3_2 = "ADAMDIALOGUE"
  L1_2 = L1_2(L2_2, L3_2)
  if L0_2 ~= nil then
    if L1_2 == "DIAG_ADAM_MAGMA_1" then
      L2_2 = L0_2.USABLE
      L3_2 = L2_2
      L2_2 = L2_2.ActiveDialogue
      L4_2 = "DIAG_ADAM_MAGMA_2"
      L2_2(L3_2, L4_2)
      L2_2 = Blackboard
      L2_2 = L2_2.SetProp
      L3_2 = "GAME_PROGRESS"
      L4_2 = "ADAMDIALOGUE"
      L5_2 = "s"
      L6_2 = "DIAG_ADAM_MAGMA_2"
      L2_2(L3_2, L4_2, L5_2, L6_2)
    elseif L1_2 == "DIAG_ADAM_CAVE_4" then
      L2_2 = Game
      L2_2 = L2_2.GetCooldownFlag
      L2_2 = L2_2()
      if L2_2 == false then
        L2_2 = Blackboard
        L2_2 = L2_2.GetProp
        L3_2 = "PLAYER_INVENTORY"
        L4_2 = "ITEM_SCREW_ATTACK"
        L2_2 = L2_2(L3_2, L4_2)
        if L2_2 ~= nil and 0 < L2_2 then
          L3_2 = L0_2.USABLE
          L4_2 = L3_2
          L3_2 = L3_2.ActiveDialogue
          L5_2 = "DIAG_ADAM_AQUA_3"
          L3_2(L4_2, L5_2)
          L3_2 = Blackboard
          L3_2 = L3_2.SetProp
          L4_2 = "GAME_PROGRESS"
          L5_2 = "ADAMDIALOGUE"
          L6_2 = "s"
          L7_2 = "DIAG_ADAM_AQUA_3"
          L3_2(L4_2, L5_2, L6_2, L7_2)
        end
      end
    end
  end
end
L4_1.OnEnter_AP_03B = L5_1
L4_1 = s020_magma
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = Scenario
  L4_2 = L4_2.SubAreaChangeRequest
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L4_1.SubAreaChangeRequest = L5_1
L4_1 = s020_magma
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = s020_magma
  L5_2 = L5_2.IsKraidCombatBegin
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = A3_2
  L10_2 = A4_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  if L5_2 then
    L5_2 = s020_magma
    L5_2 = L5_2.Kraid_InitCutscene
    L5_2()
  end
  if A0_2 == "collision_camera_009" and A1_2 == "PostCooldown" then
    L5_2 = Game
    L5_2 = L5_2.PopSetup
    L6_2 = "Cooldown"
    L7_2 = true
    L8_2 = true
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = Game
    L5_2 = L5_2.PushSetup
    L6_2 = "PostXRelease"
    L7_2 = true
    L8_2 = true
    L5_2(L6_2, L7_2, L8_2)
  else
    L5_2 = L2_1
    if L5_2 == true and A0_2 == "collision_camera_004" and A2_2 == "collision_camera_009" then
      L5_2 = Game
      L5_2 = L5_2.GetActor
      L6_2 = "cutsceneplayer_78"
      L5_2 = L5_2(L6_2)
      if L5_2 ~= nil then
        L6_2 = L5_2.CUTSCENE
        L7_2 = L6_2
        L6_2 = L6_2.TryLaunchCutscene
        L6_2(L7_2)
      end
    elseif A0_2 == "collision_camera_052" and A2_2 == "collision_camera_020" then
      L5_2 = Game
      L5_2 = L5_2.GetActor
      L6_2 = "cutsceneplayer_38"
      L5_2 = L5_2(L6_2)
      if L5_2 ~= nil then
        L6_2 = L5_2.CUTSCENE
        L7_2 = L6_2
        L6_2 = L6_2.TryLaunchCutscene
        L6_2(L7_2)
      end
    elseif A0_2 == "collision_camera_063" and A2_2 == "collision_camera_044" then
      L5_2 = Game
      L5_2 = L5_2.PlayCurrentEnvironmentMusic
      L5_2()
    elseif A0_2 == "collision_camera_022" and A2_2 == "collision_camera_030" then
      L5_2 = Game
      L5_2 = L5_2.StopMusic
      L6_2 = true
      L5_2(L6_2)
      L5_2 = Game
      L5_2 = L5_2.PlayCurrentEnvironmentMusic
      L5_2()
    end
  end
end
L4_1.OnSubAreaChange = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = Game
  L0_2 = L0_2.PushSetup
  L1_2 = "Kraid_Stage_01"
  L2_2 = true
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "cutsceneplayer_59"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.CUTSCENE
    L2_2 = L1_2
    L1_2 = L1_2.TryLaunchCutscene
    L1_2(L2_2)
  end
  L1_2 = Game
  L1_2 = L1_2.GetActor
  L2_2 = "block_slide_reg_002"
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.ANIMATION
    L3_2 = L2_2
    L2_2 = L2_2.SetAction
    L4_2 = "closed"
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
  end
end
L4_1.Kraid_InitCutscene = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Game
  L0_2 = L0_2.SetActorVolumeOverride
  L1_2 = "Samus"
  L2_2 = 0
  L3_2 = 0
  L4_2 = "ALL"
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = 1
  L1_2 = s020_magma
  L1_2 = L1_2.fSFXVolume
  if L1_2 ~= nil then
    L1_2 = s020_magma
    L0_2 = L1_2.fSFXVolume
  end
  L1_2 = Game
  L1_2 = L1_2.SetSFXVolume
  L2_2 = L0_2
  L3_2 = 0
  L1_2(L2_2, L3_2)
end
L4_1.OnCutscene78Started = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = s020_magma
  L0_2 = L0_2.Cooldown_Deactivation
  L0_2()
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "s010_cave"
  L2_2 = "SubareaSetupID[collision_camera_080]"
  L3_2 = "s"
  L4_2 = "Default>PostXRelease"
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Game
  L0_2 = L0_2.SetPlayerInteractMovementState
  L0_2()
end
L4_1.OnCutscene81Ended = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "fan_cooldown_000"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.ANIMATION
    L2_2 = L1_2
    L1_2 = L1_2.SetAction
    L3_2 = "relax"
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = L0_2.TIMELINECOMPONENT
    L2_2 = L1_2
    L1_2 = L1_2.EndAction
    L3_2 = "dissolve_in_cut_scene"
    L1_2(L2_2, L3_2)
    L1_2 = L0_2.TIMELINECOMPONENT
    L2_2 = L1_2
    L1_2 = L1_2.StartAction
    L3_2 = "dissolve_in_cut_scene_no_transition"
    L4_2 = -1
    L5_2 = false
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L4_1.OnCutscene81Skipped = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = CurrentScenario
  L0_2 = L0_2.oKraid
  L0_2 = L0_2.AI
  L1_2 = L0_2
  L0_2 = L0_2.SetBossCamera
  L2_2 = true
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
end
L4_1.OnBeforeCutscene0059Started = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2
end
L4_1.OnCutscene0059Ended = L5_1
L4_1 = s020_magma
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CurrentScenario
  L2_2.oKraid = A1_2
  L2_2 = CurrentScenario
  L2_2 = L2_2.oKraid
  if L2_2 ~= nil then
    L2_2 = CurrentScenario
    L2_2 = L2_2.oKraid
    L2_2 = L2_2.ANIMATION
    L3_2 = L2_2
    L2_2 = L2_2.SetAction
    L4_2 = "kraid_stage1"
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = print
    L3_2 = "ANIMATION 1"
    L2_2(L3_2)
  end
end
L4_1.OnKraidGenerated = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = Game
  L0_2 = L0_2.PushSetup
  L1_2 = "Kraid_Stage_02"
  L2_2 = true
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "ev_kraid_platform"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.CHANGE_STAGE_NAVMESH_ITEM
    L2_2 = L1_2
    L1_2 = L1_2.RefreshNavMeshState
    L1_2(L2_2)
  end
  L1_2 = Game
  L1_2 = L1_2.GetActor
  L2_2 = "ev_kraid_structure"
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.CHANGE_STAGE_NAVMESH_ITEM
    L3_2 = L2_2
    L2_2 = L2_2.RefreshNavMeshState
    L2_2(L3_2)
  end
  L2_2 = CurrentScenario
  L2_2 = L2_2.oKraid
  if L2_2 ~= nil then
    L2_2 = CurrentScenario
    L2_2 = L2_2.oKraid
    L2_2 = L2_2.ANIMATION
    L3_2 = L2_2
    L2_2 = L2_2.SetAction
    L4_2 = "kraid_stage2"
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = print
    L3_2 = "ANIMATION 2"
    L2_2(L3_2)
  end
end
L4_1.OnEnter_Kraid_Activation_Stage_02 = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L1_1
  if L0_2 == false then
    L0_2 = Game
    L0_2 = L0_2.PushSetup
    L1_2 = "Kraid_Stage_02B"
    L2_2 = true
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = true
    L1_1 = L0_2
  else
    L0_2 = Game
    L0_2 = L0_2.PopSetup
    L1_2 = "Kraid_Stage_02B"
    L2_2 = true
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = false
    L1_1 = L0_2
  end
end
L4_1.OnEnter_Kraid_Activation_Stage_02B = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "mblauncher_exit_gen_002"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.ANIMATION
    L2_2 = L1_2
    L1_2 = L1_2.SetAction
    L3_2 = "open"
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
  end
end
L4_1.OpenKraidMorphBallLauncherExit = L5_1
L4_1 = s020_magma
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = Game
  L2_2 = L2_2.AddSF
  L3_2 = 0.1
  L4_2 = "s020_magma.Delayed_Kraid_Activation_Stage_02"
  L5_2 = ""
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = Game
  L2_2 = L2_2.GetPlayer
  L2_2 = L2_2()
  if L2_2 ~= nil then
    L3_2 = L2_2.INPUT
    L4_2 = L3_2
    L3_2 = L3_2.IgnoreInput
    L5_2 = true
    L6_2 = false
    L7_2 = "OnEnter_Kraid_Activation_Stage_02"
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end
L4_1.OnEnter_Kraid_Activation_Stage_02 = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = GUI
  L0_2 = L0_2.ShowMessage
  L1_2 = "#KRAID_STAGE_2"
  L2_2 = true
  L3_2 = "s020_magma.Kraid_Activation_Stage_02_MessageSkipped"
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = Game
  L0_2 = L0_2.GetPlayer
  L0_2 = L0_2()
  if L0_2 ~= nil then
    L1_2 = L0_2.INPUT
    L2_2 = L1_2
    L1_2 = L1_2.IgnoreInput
    L3_2 = false
    L4_2 = false
    L5_2 = "OnEnter_Kraid_Activation_Stage_02"
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L4_1.Delayed_Kraid_Activation_Stage_02 = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Game
  L0_2 = L0_2.GetPlayer
  L0_2 = L0_2()
  L1_2 = V3D
  L2_2 = -16900
  L3_2 = -6900
  L4_2 = 0
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L0_2.vPos = L1_2
  L0_2 = Game
  L0_2 = L0_2.PushSetup
  L1_2 = "Kraid_Stage_02"
  L2_2 = true
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "ev_kraid_platform"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.CHANGE_STAGE_NAVMESH_ITEM
    L2_2 = L1_2
    L1_2 = L1_2.RefreshNavMeshState
    L1_2(L2_2)
  end
  L1_2 = Game
  L1_2 = L1_2.GetActor
  L2_2 = "ev_kraid_structure"
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.CHANGE_STAGE_NAVMESH_ITEM
    L3_2 = L2_2
    L2_2 = L2_2.RefreshNavMeshState
    L2_2(L3_2)
  end
  L2_2 = CurrentScenario
  L2_2 = L2_2.oKraid
  if L2_2 ~= nil then
    L2_2 = CurrentScenario
    L2_2 = L2_2.oKraid
    L2_2 = L2_2.AI
    L3_2 = L2_2
    L2_2 = L2_2.ChangeKraidAnimToStage2
    L2_2(L3_2)
  end
end
L4_1.Kraid_Activation_Stage_02_MessageSkipped = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.PushSetup
  L1_2 = "Kraid_Stage_02"
  L2_2 = true
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "ev_kraid_platform"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.CHANGE_STAGE_NAVMESH_ITEM
    L2_2 = L1_2
    L1_2 = L1_2.RefreshNavMeshState
    L1_2(L2_2)
  end
  L1_2 = Game
  L1_2 = L1_2.GetActor
  L2_2 = "ev_kraid_structure"
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.CHANGE_STAGE_NAVMESH_ITEM
    L3_2 = L2_2
    L2_2 = L2_2.RefreshNavMeshState
    L2_2(L3_2)
  end
end
L4_1.Kraid_Activation_Stage_02_With_Cut_Scene = L5_1
L4_1 = s020_magma
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = GUI
  L2_2 = L2_2.ShowMessage
  L3_2 = "#KRAID_STAGE_3"
  L4_2 = true
  L5_2 = "s020_magma.Kraid_Activation_Stage_03_MessageSkipped"
  L2_2(L3_2, L4_2, L5_2)
end
L4_1.OnEnter_Kraid_Activation_Stage_03 = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2
  L0_2 = s020_magma
  L0_2 = L0_2.Kraid_Activation_Stage_03_CutsceneStart
  L0_2()
  L0_2 = s020_magma
  L0_2 = L0_2.Kraid_Activation_Stage_03_CutsceneEnd
  L0_2()
end
L4_1.Kraid_Activation_Stage_03_MessageSkipped = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "TG_KraidRoars_Ambient"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L0_2.bEnabled = false
  end
  L1_2 = Game
  L1_2 = L1_2.DeleteEntity
  L2_2 = "SP_Kraid_kraid"
  L1_2(L2_2)
  L1_2 = Game
  L1_2 = L1_2.PushSetup
  L2_2 = "Kraid_Stage_03"
  L3_2 = true
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L4_1.Kraid_Activation_Stage_03_CutsceneStart = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Game
  L0_2 = L0_2.SaveGame
  L1_2 = "checkpoint"
  L2_2 = "KraidDead"
  L3_2 = "SP_Checkpoint_Dead_Kraid"
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
L4_1.Kraid_Activation_Stage_03_CutsceneEnd = L5_1
L4_1 = s020_magma
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2
  if A0_2 == "collision_camera_024" and A1_2 == "Default" and A2_2 == "collision_camera_063" and A3_2 == "Default" then
    L5_2 = true
    return L5_2
  else
    L5_2 = false
    return L5_2
  end
end
L4_1.IsKraidCombatBegin = L5_1
L4_1 = s020_magma
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A0_2 == "shootactivatormag01_000" and A1_2 then
    L2_2 = Game
    L2_2 = L2_2.PushSetup
    L3_2 = "LavaDrained_Right"
    L4_2 = true
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
  elseif A0_2 == "shootactivatormag01" and A1_2 then
    L2_2 = Game
    L2_2 = L2_2.PushSetup
    L3_2 = "LavaDrained_Left"
    L4_2 = true
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
  end
end
L4_1.OnShootActivationCompleted = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.PlayCameraFXPreset
  L1_2 = "KRAID_ROAR_WEAK"
  L0_2(L1_2)
  L0_2 = Game
  L0_2 = L0_2.PlayPresetSound
  L1_2 = "events/kraidscream"
  L0_2(L1_2)
  L0_2 = Game
  L0_2 = L0_2.PlayVibration
  L1_2 = "levels/magma/kraid_outscream_01.bnvib"
  L2_2 = false
  L0_2(L1_2, L2_2)
end
L4_1.OnEnter_KraidZone_CameraShake = L5_1
L4_1 = s020_magma
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = Game
  L2_2 = L2_2.GetActor
  L3_2 = "SG_PostEmmy_007"
  L2_2 = L2_2(L3_2)
  L3_2 = Game
  L3_2 = L3_2.GetActor
  L4_2 = "SG_PostEmmy_008"
  L3_2 = L3_2(L4_2)
  L4_2 = Game
  L4_2 = L4_2.GetActor
  L5_2 = "SG_PostEmmy_Caterzilla"
  L4_2 = L4_2(L5_2)
  L5_2 = Game
  L5_2 = L5_2.GetActor
  L6_2 = "SG_PostEmmy_Poisonfly"
  L5_2 = L5_2(L6_2)
  L6_2 = Game
  L6_2 = L6_2.GetActor
  L7_2 = "SG_PostEmmy_Vulkran"
  L6_2 = L6_2(L7_2)
  if L2_2 ~= nil then
    L7_2 = L2_2.SPAWNGROUP
    L8_2 = L7_2
    L7_2 = L7_2.EnableSpawnGroup
    L7_2(L8_2)
  end
  if L3_2 ~= nil then
    L7_2 = L3_2.SPAWNGROUP
    L8_2 = L7_2
    L7_2 = L7_2.EnableSpawnGroup
    L7_2(L8_2)
  end
  if L4_2 ~= nil then
    L7_2 = L4_2.SPAWNGROUP
    L8_2 = L7_2
    L7_2 = L7_2.EnableSpawnGroup
    L7_2(L8_2)
  end
  if L5_2 ~= nil then
    L7_2 = L5_2.SPAWNGROUP
    L8_2 = L7_2
    L7_2 = L7_2.EnableSpawnGroup
    L7_2(L8_2)
  end
  if L6_2 ~= nil then
    L7_2 = L6_2.SPAWNGROUP
    L8_2 = L7_2
    L7_2 = L7_2.EnableSpawnGroup
    L7_2(L8_2)
  end
  A0_2.bEnabled = false
end
L4_1.OnEnter_ActivatePostEmmyEnemies = L5_1
L4_1 = s020_magma
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = Game
  L2_2 = L2_2.GetActor
  L3_2 = "SG_Sclawk_000"
  L2_2 = L2_2(L3_2)
  L3_2 = Game
  L3_2 = L3_2.GetActor
  L4_2 = "SG_Sclawk_001"
  L3_2 = L3_2(L4_2)
  L4_2 = Game
  L4_2 = L4_2.GetActor
  L5_2 = "SG_Poisonfly_003A"
  L4_2 = L4_2(L5_2)
  L5_2 = Game
  L5_2 = L5_2.GetActor
  L6_2 = "SG_Poisonfly_003B"
  L5_2 = L5_2(L6_2)
  L6_2 = Game
  L6_2 = L6_2.GetActor
  L7_2 = "spawngroup_026"
  L6_2 = L6_2(L7_2)
  if L2_2 ~= nil then
    L7_2 = L2_2.SPAWNGROUP
    L8_2 = L7_2
    L7_2 = L7_2.EnableSpawnGroup
    L7_2(L8_2)
  end
  if L3_2 ~= nil then
    L7_2 = L3_2.SPAWNGROUP
    L8_2 = L7_2
    L7_2 = L7_2.EnableSpawnGroup
    L7_2(L8_2)
  end
  if L4_2 ~= nil then
    L7_2 = L4_2.SPAWNGROUP
    L8_2 = L7_2
    L7_2 = L7_2.DisableSpawnGroup
    L7_2(L8_2)
  end
  if L5_2 ~= nil then
    L7_2 = L5_2.SPAWNGROUP
    L8_2 = L7_2
    L7_2 = L7_2.EnableSpawnGroup
    L7_2(L8_2)
  end
  if L6_2 ~= nil then
    L7_2 = L6_2.SPAWNGROUP
    L8_2 = L7_2
    L7_2 = L7_2.EnableSpawnGroup
    L7_2(L8_2)
  end
  A0_2.bEnabled = false
end
L4_1.OnEnter_EnableEnemiesPistonLeft = L5_1
L4_1 = s020_magma
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Game
  L2_2 = L2_2.GetActor
  L3_2 = "spawngroup_007"
  L2_2 = L2_2(L3_2)
  L3_2 = Game
  L3_2 = L3_2.GetActor
  L4_2 = "SG_Poisonfly_044"
  L3_2 = L3_2(L4_2)
  if L2_2 ~= nil then
    L4_2 = L2_2.SPAWNGROUP
    L5_2 = L4_2
    L4_2 = L4_2.EnableSpawnGroup
    L4_2(L5_2)
  end
  if L3_2 ~= nil then
    L4_2 = L3_2.SPAWNGROUP
    L5_2 = L4_2
    L4_2 = L4_2.EnableSpawnGroup
    L4_2(L5_2)
  end
  A0_2.bEnabled = false
end
L4_1.OnEnter_EnableEnemiesPistonRight = L5_1
L4_1 = s020_magma
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Game
  L2_2 = L2_2.PushSetup
  L3_2 = "heat_zone_protected"
  L4_2 = true
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
end
L4_1.OnEnter_PistonLeftMusicChange = L5_1
L4_1 = s020_magma
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Game
  L2_2 = L2_2.PopSetup
  L3_2 = "heat_zone_protected"
  L4_2 = true
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = Game
  L2_2 = L2_2.IsPlayingPreset
  L3_2 = "s_magma_001"
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = Game
    L2_2 = L2_2.StopStream
    L3_2 = "streams/music/s_magma_001.wav"
    L2_2(L3_2)
  end
end
L4_1.OnExit_PistonLeftMusicChange = L5_1
L4_1 = s020_magma
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Game
  L2_2 = L2_2.PushSetup
  L3_2 = "heat_zone_protected_043"
  L4_2 = true
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
end
L4_1.OnEnter_SubArea_043_MusicChange = L5_1
L4_1 = s020_magma
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Game
  L2_2 = L2_2.PopSetup
  L3_2 = "heat_zone_protected_043"
  L4_2 = true
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
end
L4_1.OnExit_SubArea_043_MusicChange = L5_1
L4_1 = s020_magma
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Game
  L2_2 = L2_2.PushSetup
  L3_2 = "heat_zone_protected_piston_right"
  L4_2 = true
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
end
L4_1.OnEnter_PistonRight_MusicChange = L5_1
L4_1 = s020_magma
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Game
  L2_2 = L2_2.PopSetup
  L3_2 = "heat_zone_protected_piston_right"
  L4_2 = true
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
end
L4_1.OnExit_PistonRight_MusicChange = L5_1
L4_1 = s020_magma
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Game
  L2_2 = L2_2.PushSetup
  L3_2 = "difussion_statueroom"
  L4_2 = true
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
end
L4_1.OnEnter_Diffusion_MusicChange = L5_1
L4_1 = s020_magma
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Game
  L2_2 = L2_2.PopSetup
  L3_2 = "difussion_statueroom"
  L4_2 = true
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
end
L4_1.OnExit_Diffusion_MusicChange = L5_1
L4_1 = s020_magma
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Game
  L2_2 = L2_2.PushSetup
  L3_2 = "InsideTunnel_011"
  L4_2 = true
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
end
L4_1.OnEnter_InsideTunnel_011 = L5_1
L4_1 = s020_magma
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Game
  L2_2 = L2_2.PopSetup
  L3_2 = "InsideTunnel_011"
  L4_2 = true
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
end
L4_1.OnExit_InsideTunnel_011 = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = AI
  L0_2 = L0_2.SetWorldGraphNodeEnabled
  L1_2 = "LE_WorldGraph"
  L2_2 = "WorldGraph_119"
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
end
L4_1.DeviceHeatCameraFar000OnSetupInitialState = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = AI
  L0_2 = L0_2.SetWorldGraphNodeEnabled
  L1_2 = "LE_WorldGraph"
  L2_2 = "WorldGraph_119"
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
end
L4_1.DeviceHeatCameraFar000OnSetupUseState = L5_1
L4_1 = s020_magma
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Game
  L1_2 = L1_2.GetActor
  L2_2 = "TG_TutoOC_Exit"
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.bEnabled
    if L2_2 then
      L2_2 = Game
      L2_2 = L2_2.GetActor
      L3_2 = "TG_TutoOC_Enter"
      L2_2 = L2_2(L3_2)
      L2_2.bEnabled = false
    end
  end
end
L4_1.OnEmmyGrabStart = L5_1
L4_1 = s020_magma
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Game
  L1_2 = L1_2.GetActor
  L2_2 = "TG_TutoOC_Exit"
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.bEnabled
    if L2_2 then
      L2_2 = Game
      L2_2 = L2_2.GetActor
      L3_2 = "TG_TutoOC_Enter"
      L2_2 = L2_2(L3_2)
      L2_2.bEnabled = true
    end
  end
end
L4_1.OnEmmyGrabEnd = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = s020_magma
  L0_2 = L0_2.RelocateEmmy_AfterPresentation
  L0_2()
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "emmyvalve_reg_gen_001"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.EMMYVALVE
    L2_2 = L1_2
    L1_2 = L1_2.CleanForceStateFlag
    L1_2(L2_2)
  end
end
L4_1.OnCutscene38End = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.PushSetup
  L1_2 = "Kraid_Stage_02"
  L2_2 = true
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
end
L4_1.cutsceneplayer_61 = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "cutsceneplayer_61_zipline_mb"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = Game
    L1_2 = L1_2.GetActor
    L2_2 = "cutsceneplayer_61"
    L1_2 = L1_2(L2_2)
    if L1_2 ~= nil then
      L2_2 = L0_2.CUTSCENE
      L3_2 = L2_2
      L2_2 = L2_2.QueueCutscenePlayer
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
    end
  end
  L1_2 = Game
  L1_2 = L1_2.PushSetup
  L2_2 = "Kraid_Stage_02"
  L3_2 = true
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L4_1.cutsceneplayer_61_zipline_mb = L5_1
L4_1 = s020_magma
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "cutsceneplayer_80_grab"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = Game
    L1_2 = L1_2.GetActor
    L2_2 = "cutsceneplayer_81"
    L1_2 = L1_2(L2_2)
    if L1_2 ~= nil then
      L2_2 = L0_2.CUTSCENE
      L3_2 = L2_2
      L2_2 = L2_2.QueueCutscenePlayer
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
    end
  end
end
L4_1.cutsceneplayer_80_grab = L5_1
