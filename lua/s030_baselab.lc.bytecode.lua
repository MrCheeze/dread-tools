local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = s030_baselab
function L1_1()
  local L0_2, L1_2
  L0_2 = s030_baselab
  L0_2 = L0_2.PatrolRoutesGeneration
  L0_2()
  L0_2 = s030_baselab
  L0_2 = L0_2.PatrolRoutesFinalNodesAssignation
  L0_2()
end
L0_1.main = L1_1
L0_1 = s030_baselab
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
  L4_2 = 299
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAX_LIFE"
  L3_2 = "f"
  L4_2 = 299
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_MISSILE_MAX"
  L3_2 = "f"
  L4_2 = 22
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_MISSILE_CURRENT"
  L3_2 = "f"
  L4_2 = 22
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
L4_1 = s030_baselab
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.ReinitPlayerFromBlackboard
  L0_2()
  L0_2 = Scenario
  L0_2 = L0_2.ReadFromBlackboard
  L1_2 = Scenario
  L1_2 = L1_2.LUAPropIDs
  L1_2 = L1_2.LAB_EMMY_SPAWNED
  L2_2 = false
  L0_2 = L0_2(L1_2, L2_2)
  L1_1 = L0_2
  L0_2 = Scenario
  L0_2 = L0_2.ReadFromBlackboard
  L1_2 = Scenario
  L1_2 = L1_2.LUAPropIDs
  L1_2 = L1_2.LAB_POSTXRELEASE_APPLIED
  L2_2 = false
  L0_2 = L0_2(L1_2, L2_2)
  L2_1 = L0_2
  L0_2 = Blackboard
  L0_2 = L0_2.GetProp
  L1_2 = "GAME_PROGRESS"
  L2_2 = "QUARENTINE_OPENED"
  L0_2 = L0_2(L1_2, L2_2)
  L0_1 = L0_2
  L0_2 = L0_1
  if L0_2 == true then
    L0_2 = s030_baselab
    L0_2 = L0_2.Activate_Setup_PostXRelease
    L0_2()
  end
end
L4_1.InitFromBlackboard = L5_1
L4_1 = s030_baselab
function L5_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L2_1
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
    L1_2 = L1_2.LAB_POSTXRELEASE_APPLIED
    L2_2 = "b"
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = true
    L2_1 = L0_2
  end
end
L4_1.Activate_Setup_PostXRelease = L5_1
L4_1 = s030_baselab
L5_1 = {}
L5_1.ShowDeath = true
L5_1.GoToMainMenu = false
L4_1.tGetOnDeathOverrides = L5_1
L4_1 = s030_baselab
function L5_1()
  local L0_2, L1_2
  L0_2 = s030_baselab
  L0_2 = L0_2.tGetOnDeathOverrides
  return L0_2
end
L4_1.GetOnDeathOverrides = L5_1
L4_1 = s030_baselab
function L5_1()
  local L0_2, L1_2
end
L4_1.OnBeforeGenerate = L5_1
L4_1 = s030_baselab
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CurrentScenario
  L2_2.oEmmyEntity = A1_2
  L2_2 = AI
  L2_2 = L2_2.SetWorldGraphToEmmy
  L3_2 = "LE_WorldGraph"
  L4_2 = A1_2.sName
  L2_2(L3_2, L4_2)
  L2_2 = s030_baselab
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
L4_1.OnEmmyBaseLabGenerated = L5_1
L4_1 = s030_baselab
function L5_1()
  local L0_2, L1_2
  L0_2 = Scenario
  L0_2 = L0_2.CheckEmmyAlive
  L1_2 = CurrentScenario
  L1_2 = L1_2.oEmmyEntity
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = CurrentScenario
    L0_2 = L0_2.oEmmyEntity
    if L0_2 ~= nil then
      L0_2 = CurrentScenario
      L0_2 = L0_2.oEmmyEntity
      L0_2.bEnabled = false
      L0_2 = print
      L1_2 = "EMMY DESACTIVADO"
      L0_2(L1_2)
    end
  end
end
L4_1.OnEnter_EmmyLAB_Deactivation = L5_1
L4_1 = s030_baselab
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = print
  L1_2 = "ACTIVANDO EMMY"
  L0_2(L1_2)
  L0_2 = GUI
  L0_2 = L0_2.AddEmmyMissionLogEntry
  L1_2 = "#MLOG_ENCOUNTER_EMMY_LAB"
  L0_2(L1_2)
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "TG_EmmyLAB_Deactivation"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L0_2.bEnabled = false
  end
  L1_2 = Scenario
  L1_2 = L1_2.WriteToBlackboard
  L2_2 = Scenario
  L2_2 = L2_2.LUAPropIDs
  L2_2 = L2_2.LAB_EMMY_SPAWNED
  L3_2 = "b"
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = true
  L1_1 = L1_2
  L1_2 = Scenario
  L1_2 = L1_2.CheckEmmyAlive
  L2_2 = CurrentScenario
  L2_2 = L2_2.oEmmyEntity
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = CurrentScenario
    L1_2 = L1_2.oEmmyEntity
    if L1_2 ~= nil then
      L1_2 = Game
      L1_2 = L1_2.GetActor
      L2_2 = "LM_EmmyPresentation"
      L1_2 = L1_2(L2_2)
      L2_2 = CurrentScenario
      L2_2 = L2_2.oEmmyEntity
      L2_2.bEnabled = false
      L2_2 = CurrentScenario
      L2_2 = L2_2.oEmmyEntity
      L3_2 = L1_2.vPos
      L2_2.vPos = L3_2
      L2_2 = CurrentScenario
      L2_2 = L2_2.oEmmyEntity
      L3_2 = L1_2.vAng
      L2_2.vAng = L3_2
      L2_2 = CurrentScenario
      L2_2 = L2_2.oEmmyEntity
      L2_2.bEnabled = true
      L2_2 = print
      L3_2 = "EMMY REACTIVADO"
      L2_2(L3_2)
    end
  end
  L1_2 = Game
  L1_2 = L1_2.GetActor
  L2_2 = "doorshutter_001"
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.ANIMATION
    L3_2 = L2_2
    L2_2 = L2_2.SetAction
    L4_2 = "opened"
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
  end
end
L4_1.OnEnter_EmmyLAB_Presentation = L5_1
L4_1 = s030_baselab
function L5_1()
  local L0_2, L1_2
  L0_2 = Scenario
  L0_2 = L0_2.CheckEmmyAlive
  L1_2 = CurrentScenario
  L1_2 = L1_2.oEmmyEntity
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = CurrentScenario
    L0_2 = L0_2.oEmmyEntity
    L0_2 = L0_2.AI
    L1_2 = L0_2
    L0_2 = L0_2.ForceStartChase
    L0_2(L1_2)
  end
end
L4_1.EmmyLabSpawnSequenceEnd = L5_1
L4_1 = s030_baselab
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = GUI
  L0_2 = L0_2.ShowMessage
  L1_2 = "#BASELAB_EMMY_PRESENTATION"
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
    L5_2 = "OnEnter_EmmyLAB_Presentation"
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
  L1_2 = Scenario
  L1_2 = L1_2.CheckEmmyAlive
  L2_2 = CurrentScenario
  L2_2 = L2_2.oEmmyEntity
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = CurrentScenario
    L1_2 = L1_2.oEmmyEntity
    if L1_2 ~= nil then
      L1_2 = Game
      L1_2 = L1_2.GetActor
      L2_2 = "LM_EmmyPresentation"
      L1_2 = L1_2(L2_2)
      L2_2 = CurrentScenario
      L2_2 = L2_2.oEmmyEntity
      L2_2.bEnabled = false
      L2_2 = CurrentScenario
      L2_2 = L2_2.oEmmyEntity
      L3_2 = L1_2.vPos
      L2_2.vPos = L3_2
      L2_2 = CurrentScenario
      L2_2 = L2_2.oEmmyEntity
      L3_2 = L1_2.vAng
      L2_2.vAng = L3_2
      L2_2 = CurrentScenario
      L2_2 = L2_2.oEmmyEntity
      L2_2.bEnabled = true
      L2_2 = print
      L3_2 = "EMMY REACTIVADO"
      L2_2(L3_2)
    end
  end
end
L4_1.DelayedEmmyLABSpawnSequence = L5_1
L4_1 = s030_baselab
function L5_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.PushSetup
  L1_2 = "PostEmmy"
  L2_2 = true
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
end
L4_1.OnEmmyBaseLabDead = L5_1
L4_1 = s030_baselab
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "TG_EnablePostEmmyEnemies"
  L0_2 = L0_2(L1_2)
  L0_2.bEnabled = true
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
L4_1 = s030_baselab
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = GUI
  L0_2 = L0_2.ShowMessage
  L1_2 = "#PLACEHOLDER_EMMYBASELAB_KILLED"
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
    L5_2 = "OnEmmyBaseLabDead"
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L4_1.DelayedOnEmmyBaseLabDead = L5_1
L4_1 = s030_baselab
function L5_1()
  local L0_2, L1_2
end
L4_1.OnEmmyDeathMessageSkipped = L5_1
L4_1 = s030_baselab
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
L4_1 = s030_baselab
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
    L2_2 = "CENTRAL_UNIT: centralunitbaselabcontroller not found"
    L1_2(L2_2)
  end
end
L4_1.OnUnlockEmmyDoors = L5_1
L4_1 = s030_baselab
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
    L2_2 = "CENTRAL_UNIT: centralunitbaselabcontroller not found"
    L1_2(L2_2)
  end
end
L4_1.OnLockEmmyDoors = L5_1
L4_1 = s030_baselab
function L5_1()
  local L0_2, L1_2
  L0_2 = s030_baselab
  L0_2 = L0_2.OnLockEmmyDoors
  L0_2()
end
L4_1.OnCheckpoint_SpeedBooster = L5_1
L4_1 = s030_baselab
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
  L2_2 = "s030_baselab.PatrolRoutesGeneration(): Patrol designation OK"
  L1_2(L2_2)
end
L4_1.PatrolRoutesGeneration = L5_1
L4_1 = s030_baselab
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_01"
  L3_2 = {}
  L4_2 = "WorldGraph_21"
  L3_2[1] = L4_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_01"
  L3_2 = {}
  L4_2 = "WorldGraph_16"
  L5_2 = "WorldGraph_15"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_02"
  L3_2 = {}
  L4_2 = "WorldGraph_5"
  L5_2 = "WorldGraph_11"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_02"
  L3_2 = {}
  L4_2 = "WorldGraph_21"
  L3_2[1] = L4_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_03"
  L3_2 = {}
  L4_2 = "WorldGraph_22"
  L5_2 = "WorldGraph_24"
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
  L3_2[1] = L4_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_04"
  L3_2 = {}
  L4_2 = "WorldGraph_57"
  L5_2 = "WorldGraph_56"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_04"
  L3_2 = {}
  L4_2 = "WorldGraph_30"
  L5_2 = "WorldGraph_31"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_05"
  L3_2 = {}
  L4_2 = "WorldGraph_56"
  L5_2 = "WorldGraph_38"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_05"
  L3_2 = {}
  L4_2 = "WorldGraph_46"
  L3_2[1] = L4_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_06"
  L3_2 = {}
  L4_2 = "WorldGraph_46"
  L5_2 = "WorldGraph_47"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_06"
  L3_2 = {}
  L4_2 = "WorldGraph_56"
  L3_2[1] = L4_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_06"
  L3_2 = {}
  L4_2 = "WorldGraph_31"
  L5_2 = "WorldGraph_35"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 2
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_06"
  L3_2 = {}
  L4_2 = "WorldGraph_55"
  L3_2[1] = L4_2
  L4_2 = 3
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_07"
  L3_2 = {}
  L4_2 = "WorldGraph_65"
  L3_2[1] = L4_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_07"
  L3_2 = {}
  L4_2 = "WorldGraph_56"
  L3_2[1] = L4_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_08"
  L3_2 = {}
  L4_2 = "WorldGraph_60"
  L3_2[1] = L4_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_08"
  L3_2 = {}
  L4_2 = "WorldGraph_72"
  L3_2[1] = L4_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_09"
  L3_2 = {}
  L4_2 = "WorldGraph_60"
  L3_2[1] = L4_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_09"
  L3_2 = {}
  L4_2 = "WorldGraph_81"
  L3_2[1] = L4_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_10"
  L3_2 = {}
  L4_2 = "WorldGraph_75"
  L3_2[1] = L4_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_10"
  L3_2 = {}
  L4_2 = "WorldGraph_81"
  L3_2[1] = L4_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_11"
  L3_2 = {}
  L4_2 = "WorldGraph_1"
  L3_2[1] = L4_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_11"
  L3_2 = {}
  L4_2 = "WorldGraph_11"
  L3_2[1] = L4_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_11"
  L3_2 = {}
  L4_2 = "WorldGraph_17"
  L3_2[1] = L4_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_12"
  L3_2 = {}
  L4_2 = "WorldGraph_100"
  L5_2 = "WorldGraph_98"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_12"
  L3_2 = {}
  L4_2 = "WorldGraph_94"
  L5_2 = "WorldGraph_93"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_12"
  L3_2 = {}
  L4_2 = "WorldGraph_87"
  L5_2 = "WorldGraph_84"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_12"
  L3_2 = {}
  L4_2 = "WorldGraph_85"
  L5_2 = "WorldGraph_86"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_13"
  L3_2 = {}
  L4_2 = "WorldGraph_109"
  L3_2[1] = L4_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_14"
  L3_2 = {}
  L4_2 = "WorldGraph_109"
  L3_2[1] = L4_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_14"
  L3_2 = {}
  L4_2 = "WorldGraph_117"
  L3_2[1] = L4_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_14"
  L3_2 = {}
  L4_2 = "WorldGraph_115"
  L3_2[1] = L4_2
  L4_2 = 2
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_14"
  L3_2 = {}
  L4_2 = "WorldGraph_111"
  L5_2 = "WorldGraph_112"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 3
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_14"
  L3_2 = {}
  L4_2 = "WorldGraph_101"
  L3_2[1] = L4_2
  L4_2 = 4
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_14"
  L3_2 = {}
  L4_2 = "WorldGraph_107"
  L5_2 = "WorldGraph_105"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 5
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_14"
  L3_2 = {}
  L4_2 = "WorldGraph_104"
  L3_2[1] = L4_2
  L4_2 = 6
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = print
  L1_2 = "s030_baselab.PatrolRoutesFinalNodesAssignation(): Final Nodes Assignation OK"
  L0_2(L1_2)
end
L4_1.PatrolRoutesFinalNodesAssignation = L5_1
L4_1 = s030_baselab
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
L4_1 = s030_baselab
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = string
  L2_2 = L2_2.gsub
  L3_2 = A0_2.sName
  L4_2 = "TG_PATROLEMMYACTIVATOR_"
  L5_2 = "PATROLROUTE_"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = s030_baselab
  L3_2 = L3_2.ChangePatrolEmmy
  L4_2 = L2_2
  L3_2(L4_2)
end
L4_1.OnEnter_PatrolEmmyActivator = L5_1
L4_1 = s030_baselab
function L5_1(A0_2, A1_2)
end
L4_1.OnExit_PatrolEmmyActivator = L5_1
L4_1 = s030_baselab
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = Scenario
  L0_2 = L0_2.CheckEmmyAlive
  L1_2 = CurrentScenario
  L1_2 = L1_2.oEmmyEntity
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = CurrentScenario
    L0_2 = L0_2.oEmmyEntity
    if L0_2 ~= nil then
      L0_2 = true
      L3_1 = L0_2
      L0_2 = Game
      L0_2 = L0_2.GetActor
      L1_2 = "LM_EmmySpawnAfterAqua"
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
      L1_2 = s030_baselab
      L1_2 = L1_2.ChangePatrolEmmy
      L2_2 = "PATROLROUTE_13"
      L1_2(L2_2)
    end
  end
end
L4_1.OnEnter_EmmySpawnAfterAqua = L5_1
L4_1 = s030_baselab
L4_1.tEmmyDoor = nil
L4_1 = s030_baselab
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = Scenario
  L3_2 = L3_2.CheckEmmyAlive
  L4_2 = CurrentScenario
  L4_2 = L4_2.oEmmyEntity
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = L1_1
    if L3_2 then
      if A1_2 then
        L3_2 = CurrentScenario
        L3_2 = L3_2.oEmmyEntity
        if L3_2 ~= nil then
          L3_2 = nil
          if A2_2 then
            L4_2 = s030_baselab
            L4_2 = L4_2.HardEmmyRelocationDoor
            L5_2 = A0_2
            L4_2 = L4_2(L5_2)
            L3_2 = L4_2
          else
            L4_2 = s030_baselab
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
end
L4_1.OnWalkThroughEmmyDoor = L5_1
L4_1 = s030_baselab
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = print
  L2_2 = "Door: Hard "
  L3_2 = A0_2.sName
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = A0_2.sName
  if L1_2 == "dooremmy_000" then
    L1_2 = s030_baselab
    L2_2 = {}
    L3_2 = "LM_EmmyEntrancePoint_000"
    L2_2[1] = L3_2
    L1_2.tEmmyDoor = L2_2
  else
    L1_2 = A0_2.sName
    if L1_2 == "dooremmy_001" then
      L1_2 = s030_baselab
      L2_2 = {}
      L3_2 = "LM_EmmyEntrancePoint_004"
      L2_2[1] = L3_2
      L1_2.tEmmyDoor = L2_2
    else
      L1_2 = A0_2.sName
      if L1_2 == "dooremmy_003" then
        L1_2 = s030_baselab
        L2_2 = {}
        L3_2 = "LM_EmmyEntrancePoint_010"
        L2_2[1] = L3_2
        L1_2.tEmmyDoor = L2_2
      else
        L1_2 = A0_2.sName
        if L1_2 == "dooremmy_004" then
          L1_2 = s030_baselab
          L2_2 = {}
          L3_2 = "LM_EmmyEntrancePoint_010"
          L2_2[1] = L3_2
          L1_2.tEmmyDoor = L2_2
        else
          L1_2 = A0_2.sName
          if L1_2 == "dooremmy_005" then
            L1_2 = s030_baselab
            L2_2 = {}
            L3_2 = "LM_EmmyEntrancePoint_015"
            L2_2[1] = L3_2
            L1_2.tEmmyDoor = L2_2
          else
            L1_2 = A0_2.sName
            if L1_2 == "dooremmy_006" then
              L1_2 = s030_baselab
              L2_2 = {}
              L3_2 = "LM_EmmyEntrancePoint_016"
              L2_2[1] = L3_2
              L1_2.tEmmyDoor = L2_2
            else
              L1_2 = A0_2.sName
              if L1_2 == "dooremmy_008" then
                L1_2 = s030_baselab
                L2_2 = {}
                L3_2 = "LM_EmmyEntrancePoint_022"
                L2_2[1] = L3_2
                L1_2.tEmmyDoor = L2_2
              else
                L1_2 = A0_2.sName
                if L1_2 == "dooremmy_009" then
                  L1_2 = s030_baselab
                  L2_2 = {}
                  L3_2 = "LM_EmmyEntrancePoint_021"
                  L2_2[1] = L3_2
                  L1_2.tEmmyDoor = L2_2
                else
                  L1_2 = A0_2.sName
                  if L1_2 == "dooremmy_010" then
                    L1_2 = s030_baselab
                    L2_2 = {}
                    L3_2 = "LM_EmmyEntrancePoint_026"
                    L2_2[1] = L3_2
                    L1_2.tEmmyDoor = L2_2
                  else
                    L1_2 = A0_2.sName
                    if L1_2 == "dooremmy_012" then
                      L1_2 = L3_1
                      if L1_2 then
                        L1_2 = false
                        L3_1 = L1_2
                        L1_2 = "nil"
                        return L1_2
                      else
                        L1_2 = s030_baselab
                        L2_2 = {}
                        L3_2 = "LM_EmmyEntrancePoint_027"
                        L2_2[1] = L3_2
                        L1_2.tEmmyDoor = L2_2
                      end
                    else
                      L1_2 = s030_baselab
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
  L1_2 = s030_baselab
  L1_2 = L1_2.tEmmyDoor
  if L1_2 ~= nil then
    L1_2 = s030_baselab
    L1_2 = L1_2.tEmmyDoor
    L2_2 = math
    L2_2 = L2_2.random
    L3_2 = table
    L3_2 = L3_2.maxn
    L4_2 = s030_baselab
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
L4_1 = s030_baselab
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.sName
  if L1_2 == "dooremmy_000" then
    L1_2 = s030_baselab
    L2_2 = {}
    L3_2 = "LM_EmmyEntrancePoint_000"
    L4_2 = "LM_EmmyEntrancePoint_001"
    L5_2 = "LM_EmmyEntrancePoint_002"
    L6_2 = "LM_EmmyEntrancePoint_006"
    L2_2[1] = L3_2
    L2_2[2] = L4_2
    L2_2[3] = L5_2
    L2_2[4] = L6_2
    L1_2.tEmmyDoor = L2_2
  else
    L1_2 = A0_2.sName
    if L1_2 == "dooremmy_001" then
      L1_2 = s030_baselab
      L2_2 = {}
      L3_2 = "LM_EmmyEntrancePoint_003"
      L4_2 = "LM_EmmyEntrancePoint_005"
      L5_2 = "LM_EmmyEntrancePoint_007"
      L2_2[1] = L3_2
      L2_2[2] = L4_2
      L2_2[3] = L5_2
      L1_2.tEmmyDoor = L2_2
    else
      L1_2 = A0_2.sName
      if L1_2 == "dooremmy_003" then
        L1_2 = s030_baselab
        L2_2 = {}
        L3_2 = "LM_EmmyEntrancePoint_012"
        L4_2 = "LM_EmmyEntrancePoint_010"
        L2_2[1] = L3_2
        L2_2[2] = L4_2
        L1_2.tEmmyDoor = L2_2
      else
        L1_2 = A0_2.sName
        if L1_2 == "dooremmy_004" then
          L1_2 = s030_baselab
          L2_2 = {}
          L3_2 = "LM_EmmyEntrancePoint_010"
          L4_2 = "LM_EmmyEntrancePoint_011"
          L5_2 = "LM_EmmyEntrancePoint_013"
          L2_2[1] = L3_2
          L2_2[2] = L4_2
          L2_2[3] = L5_2
          L1_2.tEmmyDoor = L2_2
        else
          L1_2 = A0_2.sName
          if L1_2 == "dooremmy_005" then
            L1_2 = s030_baselab
            L2_2 = {}
            L3_2 = "LM_EmmyEntrancePoint_023"
            L4_2 = "LM_EmmyEntrancePoint_015"
            L5_2 = "LM_EmmyEntrancePoint_017"
            L2_2[1] = L3_2
            L2_2[2] = L4_2
            L2_2[3] = L5_2
            L1_2.tEmmyDoor = L2_2
          else
            L1_2 = A0_2.sName
            if L1_2 == "dooremmy_006" then
              L1_2 = s030_baselab
              L2_2 = {}
              L3_2 = "LM_EmmyEntrancePoint_015"
              L4_2 = "LM_EmmyEntrancePoint_016"
              L5_2 = "LM_EmmyEntrancePoint_020"
              L2_2[1] = L3_2
              L2_2[2] = L4_2
              L2_2[3] = L5_2
              L1_2.tEmmyDoor = L2_2
            else
              L1_2 = A0_2.sName
              if L1_2 == "dooremmy_008" then
                L1_2 = s030_baselab
                L2_2 = {}
                L3_2 = "LM_EmmyEntrancePoint_022"
                L4_2 = "LM_EmmyEntrancePoint_021"
                L5_2 = "LM_EmmyEntrancePoint_024"
                L2_2[1] = L3_2
                L2_2[2] = L4_2
                L2_2[3] = L5_2
                L1_2.tEmmyDoor = L2_2
              else
                L1_2 = A0_2.sName
                if L1_2 == "dooremmy_009" then
                  L1_2 = s030_baselab
                  L2_2 = {}
                  L3_2 = "LM_EmmyEntrancePoint_021"
                  L4_2 = "LM_EmmyEntrancePoint_022"
                  L2_2[1] = L3_2
                  L2_2[2] = L4_2
                  L1_2.tEmmyDoor = L2_2
                else
                  L1_2 = A0_2.sName
                  if L1_2 == "dooremmy_010" then
                    L1_2 = s030_baselab
                    L2_2 = {}
                    L3_2 = "LM_EmmyEntrancePoint_025"
                    L4_2 = "LM_EmmyEntrancePoint_026"
                    L2_2[1] = L3_2
                    L2_2[2] = L4_2
                    L1_2.tEmmyDoor = L2_2
                  else
                    L1_2 = A0_2.sName
                    if L1_2 == "dooremmy_012" then
                      L1_2 = L3_1
                      if L1_2 then
                        L1_2 = false
                        L3_1 = L1_2
                        L1_2 = "nil"
                        return L1_2
                      else
                        L1_2 = s030_baselab
                        L2_2 = {}
                        L3_2 = "LM_EmmyEntrancePoint_027"
                        L4_2 = "LM_EmmyEntrancePoint_028"
                        L5_2 = "LM_EmmyEntrancePoint_029"
                        L2_2[1] = L3_2
                        L2_2[2] = L4_2
                        L2_2[3] = L5_2
                        L1_2.tEmmyDoor = L2_2
                      end
                    else
                      L1_2 = s030_baselab
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
  L1_2 = s030_baselab
  L1_2 = L1_2.tEmmyDoor
  if L1_2 ~= nil then
    L1_2 = s030_baselab
    L1_2 = L1_2.tEmmyDoor
    L2_2 = math
    L2_2 = L2_2.random
    L3_2 = table
    L3_2 = L3_2.maxn
    L4_2 = s030_baselab
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
L4_1 = s030_baselab
function L5_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.AddSF
  L1_2 = 1
  L2_2 = "s030_baselab.Checkpoint_RelocatingEmmy_CU"
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
end
L4_1.OnTeleport_Checkpoint_CU = L5_1
L4_1 = s030_baselab
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = CurrentScenario
  L0_2 = L0_2.oEmmyEntity
  if L0_2 ~= nil then
    L0_2 = Game
    L0_2 = L0_2.GetActor
    L1_2 = "LM_EmmyEntrancePoint_027"
    L0_2 = L0_2(L1_2)
    if L0_2 ~= nil then
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
      L1_2 = s030_baselab
      L1_2 = L1_2.ChangePatrolEmmy
      L2_2 = "PATROLROUTE_12"
      L1_2(L2_2)
    end
  end
end
L4_1.Checkpoint_RelocatingEmmy_CU = L5_1
L4_1 = s030_baselab
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
    if L1_2 == "DIAG_ADAM_MAGMA_2" then
      L2_2 = L0_2.USABLE
      L3_2 = L2_2
      L2_2 = L2_2.ActiveDialogue
      L4_2 = "DIAG_ADAM_LAB_1"
      L2_2(L3_2, L4_2)
      L2_2 = Blackboard
      L2_2 = L2_2.SetProp
      L3_2 = "GAME_PROGRESS"
      L4_2 = "ADAMDIALOGUE"
      L5_2 = "s"
      L6_2 = "DIAG_ADAM_LAB_1"
      L2_2(L3_2, L4_2, L5_2, L6_2)
    elseif L1_2 == "DIAG_ADAM_CAVE_4" then
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
L4_1.OnEnter_AP_04 = L5_1
L4_1 = s030_baselab
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "accesspoint_001"
  L0_2 = L0_2(L1_2)
  L1_2 = Blackboard
  L1_2 = L1_2.GetProp
  L2_2 = "GAME_PROGRESS"
  L3_2 = "ADAMDIALOGUE"
  L1_2 = L1_2(L2_2, L3_2)
  if L0_2 ~= nil then
    if L1_2 == "DIAG_ADAM_AQUA_1" then
      L2_2 = L0_2.USABLE
      L3_2 = L2_2
      L2_2 = L2_2.ActiveDialogue
      L4_2 = "DIAG_ADAM_LAB_2"
      L2_2(L3_2, L4_2)
      L2_2 = Blackboard
      L2_2 = L2_2.SetProp
      L3_2 = "GAME_PROGRESS"
      L4_2 = "ADAMDIALOGUE"
      L5_2 = "s"
      L6_2 = "DIAG_ADAM_LAB_2"
      L2_2(L3_2, L4_2, L5_2, L6_2)
    elseif L1_2 == "DIAG_ADAM_CAVE_4" then
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
L4_1.OnEnter_AP_06 = L5_1
L4_1 = s030_baselab
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
L4_1 = s030_baselab
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2)
end
L4_1.OnSubAreaChange = L5_1
L4_1 = s030_baselab
function L5_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.PushSetup
  L1_2 = "PostBlackout"
  L2_2 = true
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = Game
  L0_2 = L0_2.StopMusic
  L1_2 = true
  L0_2(L1_2)
end
L4_1.OnEnter_ActivatePostBlackout = L5_1
L4_1 = s030_baselab
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "SP_Shakernaut_001B_shakernaut"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.ANIMATION
    L2_2 = L1_2
    L1_2 = L1_2.SetAction
    L3_2 = "spawn_baselab_part015_relaxtopath"
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = Game
  L1_2 = L1_2.GetActor
  L2_2 = "SP_Shakernaut_001B"
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.SPAWNPOINT
    L3_2 = L2_2
    L2_2 = L2_2.Deactivate
    L2_2(L3_2)
  end
  L2_2 = Game
  L2_2 = L2_2.GetActor
  L3_2 = "SP_Shakernaut_001"
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.SPAWNPOINT
    L4_2 = L3_2
    L3_2 = L3_2.Activate
    L3_2(L4_2)
  end
end
L4_1.Event_ShakerNaut_Activation = L5_1
L4_1 = s030_baselab
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "SP_Shakernaut_001B_shakernaut"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.ANIMATION
    L2_2 = L1_2
    L1_2 = L1_2.IsPlayingAnim
    L3_2 = "spawn_baselab_part015_relaxtopath"
    L4_2 = false
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    if L1_2 then
      L1_2 = Game
      L1_2 = L1_2.AddSF
      L2_2 = 0
      L3_2 = "s030_baselab.DetectingDirection"
      L4_2 = ""
      L1_2(L2_2, L3_2, L4_2)
    else
      L1_2 = Game
      L1_2 = L1_2.GetPlayer
      L1_2 = L1_2()
      L2_2 = V3D
      L3_2 = -1
      L4_2 = 0
      L5_2 = 0
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      if L1_2 ~= nil then
        L3_2 = L1_2.vPos
        L4_2 = L0_2.vPos
        L2_2 = L3_2 - L4_2
      end
      L3_2 = L2_2.x
      if 0 < L3_2 then
        L3_2 = L0_2.ANIMATION
        L4_2 = L3_2
        L3_2 = L3_2.SetAction
        L5_2 = "spawn_baselab_part015_turn_right"
        L6_2 = true
        L3_2(L4_2, L5_2, L6_2)
        L3_2 = V3D
        L4_2 = 1
        L5_2 = 0
        L6_2 = 0
        L3_2 = L3_2(L4_2, L5_2, L6_2)
        L2_2 = L3_2
      else
        L3_2 = L0_2.ANIMATION
        L4_2 = L3_2
        L3_2 = L3_2.SetAction
        L5_2 = "spawn_baselab_part015_turn_left"
        L6_2 = true
        L3_2(L4_2, L5_2, L6_2)
        L3_2 = V3D
        L4_2 = -1
        L5_2 = 0
        L6_2 = 0
        L3_2 = L3_2(L4_2, L5_2, L6_2)
        L2_2 = L3_2
      end
      L3_2 = L0_2.AI
      L4_2 = L3_2
      L3_2 = L3_2.SetNavigationDir
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    end
  end
end
L4_1.DetectingDirection = L5_1
L4_1 = s030_baselab
function L5_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.PushSetup
  L1_2 = "PostBlackout2"
  L2_2 = true
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = Game
  L0_2 = L0_2.StopMusic
  L1_2 = true
  L0_2(L1_2)
end
L4_1.OnEnter_ActivatePostBlackout2 = L5_1
L4_1 = s030_baselab
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Game
  L2_2 = L2_2.GetActor
  L3_2 = "SG_PostEmmy_000"
  L2_2 = L2_2(L3_2)
  L3_2 = Game
  L3_2 = L3_2.GetActor
  L4_2 = "SG_PostEmmy_001"
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
L4_1.OnEnter_ActivatePostEmmyEnemies = L5_1
L4_1 = s030_baselab
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = s030_baselab
  L0_2 = L0_2.EmmyLabSpawnSequenceEnd
  L0_2()
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "emmyvalve_reg_gen_002"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.EMMYVALVE
    L2_2 = L1_2
    L1_2 = L1_2.CleanForceStateFlag
    L1_2(L2_2)
  end
end
L4_1.OnCutscene39End = L5_1
