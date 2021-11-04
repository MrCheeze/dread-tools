local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = s050_forest
function L1_1()
  local L0_2, L1_2
  L0_2 = s050_forest
  L0_2 = L0_2.PatrolRoutesGeneration
  L0_2()
  L0_2 = s050_forest
  L0_2 = L0_2.PatrolRoutesFinalNodesAssignation
  L0_2()
end
L0_1.main = L1_1
L0_1 = s050_forest
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
  L4_2 = 499
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAX_LIFE"
  L3_2 = "f"
  L4_2 = 499
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_MISSILE_MAX"
  L3_2 = "f"
  L4_2 = 52
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_MISSILE_CURRENT"
  L3_2 = "f"
  L4_2 = 52
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
  L4_2 = 1
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
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_BOMB"
  L3_2 = "f"
  L4_2 = 1
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
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_DIFFUSION_BEAM"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_GRAPPLE_BEAM"
  L3_2 = "f"
  L4_2 = 1
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
  L4_2 = 1
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
  L4_2 = 1
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
L2_1 = s050_forest
function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.ReinitPlayerFromBlackboard
  L0_2()
  L0_2 = Scenario
  L0_2 = L0_2.ReadFromBlackboard
  L1_2 = Scenario
  L1_2 = L1_2.LUAPropIDs
  L1_2 = L1_2.FOREST_POSTXRELEASE_APPLIED
  L2_2 = false
  L0_2 = L0_2(L1_2, L2_2)
  L1_1 = L0_2
  L0_2 = Blackboard
  L0_2 = L0_2.GetProp
  L1_2 = "GAME_PROGRESS"
  L2_2 = "QUARENTINE_OPENED"
  L0_2 = L0_2(L1_2, L2_2)
  L0_1 = L0_2
  L0_2 = L0_1
  if L0_2 == true then
    L0_2 = s050_forest
    L0_2 = L0_2.Activate_Setup_PostXRelease
    L0_2()
  end
end
L2_1.InitFromBlackboard = L3_1
L2_1 = s050_forest
function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L1_1
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
    L1_2 = L1_2.FOREST_POSTXRELEASE_APPLIED
    L2_2 = "b"
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = true
    L1_1 = L0_2
  end
end
L2_1.Activate_Setup_PostXRelease = L3_1
L2_1 = s050_forest
L3_1 = {}
L3_1.ShowDeath = true
L3_1.GoToMainMenu = false
L2_1.tGetOnDeathOverrides = L3_1
L2_1 = s050_forest
function L3_1()
  local L0_2, L1_2
  L0_2 = s050_forest
  L0_2 = L0_2.tGetOnDeathOverrides
  return L0_2
end
L2_1.GetOnDeathOverrides = L3_1
L2_1 = s050_forest
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 ~= nil then
    L2_2 = print
    L3_2 = "OnEntityGenerated!!!!!!"
    L2_2(L3_2)
  end
end
L2_1.OnEntityGenerated = L3_1
L2_1 = s050_forest
function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "powerup_sonar"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.PICKABLE
    L2_2 = L1_2
    L1_2 = L1_2.OnPickUpAfterCutScene
    L1_2(L2_2)
  end
end
L2_1.SonarObtained = L3_1
L2_1 = s050_forest
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2.bEnabled = false
  L2_2 = Game
  L2_2 = L2_2.AddSF
  L3_2 = 1
  L4_2 = "s050_forest.DelayedLineBoomObtined"
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
    L7_2 = "OnEnter_trigger_LineBoomObtained"
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end
L2_1.OnEnter_trigger_LineBoomObtained = L3_1
L2_1 = s050_forest
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = GUI
  L0_2 = L0_2.ShowMessage
  L1_2 = "#CUT_LINE_BOMB"
  L2_2 = true
  L3_2 = "s050_forest.LineBoomObtainedMessageSkipped"
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
    L5_2 = "OnEnter_trigger_LineBoomObtained"
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L2_1.DelayedLineBoomObtined = L3_1
L2_1 = s050_forest
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = Game
  L0_2 = L0_2.GetPlayer
  L0_2 = L0_2()
  if L0_2 ~= nil then
    L1_2 = L0_2.INVENTORY
    L2_2 = L1_2
    L1_2 = L1_2.SetItemAmount
    L3_2 = "ITEM_WEAPON_LINE_BOMB"
    L4_2 = 1
    L5_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L2_1.LineBoomObtainedMessageSkipped = L3_1
L2_1 = s050_forest
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2.bEnabled = false
  L2_2 = Game
  L2_2 = L2_2.AddSF
  L3_2 = 1
  L4_2 = "s050_forest.DelayedBossPresentation"
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
    L7_2 = "OnEnter_trigger_BossPresentation"
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end
L2_1.OnEnter_trigger_BossPresentation = L3_1
L2_1 = s050_forest
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = GUI
  L0_2 = L0_2.ShowMessage
  L1_2 = "#CUT_FOREST_BOSS_PRESENTATION"
  L2_2 = true
  L3_2 = "s050_forest.BossPresentationMessageSkipped"
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
    L5_2 = "OnEnter_trigger_BossPresentation"
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L2_1.DelayedBossPresentation = L3_1
L2_1 = s050_forest
function L3_1()
  local L0_2, L1_2
end
L2_1.BossPresentationMessageSkipped = L3_1
L2_1 = s050_forest
function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_003_B"
  L2_2 = true
  L0_2(L1_2, L2_2)
end
L2_1.OnEnter_ChangeCamera_003_B = L3_1
L2_1 = s050_forest
function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_003_B"
  L2_2 = false
  L0_2(L1_2, L2_2)
end
L2_1.OnExit_ChangeCamera_003_B = L3_1
L2_1 = s050_forest
function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_003_C"
  L2_2 = true
  L0_2(L1_2, L2_2)
end
L2_1.OnEnter_ChangeCamera_003_C = L3_1
L2_1 = s050_forest
function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_003_C"
  L2_2 = false
  L0_2(L1_2, L2_2)
end
L2_1.OnExit_ChangeCamera_003_C = L3_1
L2_1 = s050_forest
function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.PushSetup
  L1_2 = "ChangeCamera_019_B"
  L2_2 = false
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
end
L2_1.OnEnter_ChangeCamera_019_B = L3_1
L2_1 = s050_forest
function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.PopSetup
  L1_2 = "ChangeCamera_019_B"
  L2_2 = false
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
end
L2_1.OnExit_ChangeCamera_019_B = L3_1
L2_1 = s050_forest
function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_023_B"
  L2_2 = true
  L0_2(L1_2, L2_2)
end
L2_1.OnEnter_ChangeCamera_023_B = L3_1
L2_1 = s050_forest
function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_023_B"
  L2_2 = false
  L0_2(L1_2, L2_2)
end
L2_1.OnExit_ChangeCamera_023_B = L3_1
L2_1 = s050_forest
function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.PushSetup
  L1_2 = "ChangeCamera_024_B"
  L2_2 = false
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
end
L2_1.OnEnter_ChangeCamera_024_B = L3_1
L2_1 = s050_forest
function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.PopSetup
  L1_2 = "ChangeCamera_024_B"
  L2_2 = false
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
end
L2_1.OnExit_ChangeCamera_024_B = L3_1
L2_1 = s050_forest
function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.PushSetup
  L1_2 = "ChangeCamera_025_B"
  L2_2 = false
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
end
L2_1.OnEnter_ChangeCamera_025_B = L3_1
L2_1 = s050_forest
function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.PopSetup
  L1_2 = "ChangeCamera_025_B"
  L2_2 = false
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
end
L2_1.OnExit_ChangeCamera_025_B = L3_1
L2_1 = s050_forest
function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.PushSetup
  L1_2 = "ChangeCamera_025_C"
  L2_2 = false
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
end
L2_1.OnEnter_ChangeCamera_025_C = L3_1
L2_1 = s050_forest
function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.PopSetup
  L1_2 = "ChangeCamera_025_C"
  L2_2 = false
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
end
L2_1.OnExit_ChangeCamera_025_C = L3_1
L2_1 = s050_forest
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2.bEnabled = false
  L2_2 = Game
  L2_2 = L2_2.PushSetup
  L3_2 = "ZoomIn_Magnet"
  L4_2 = true
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = Game
  L2_2 = L2_2.GetActor
  L3_2 = "trigger_camera_ZoomIn_off"
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L2_2.bEnabled = true
  end
end
L2_1.OnEnter_TG_camera_ZoomIn_On = L3_1
L2_1 = s050_forest
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2.bEnabled = false
  L2_2 = Game
  L2_2 = L2_2.PopSetup
  L3_2 = "ZoomIn_Magnet"
  L4_2 = true
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
end
L2_1.OnEnter_TG_camera_ZoomIn_Off = L3_1
L2_1 = s050_forest
function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.PopSetup
  L1_2 = "SuperGoliath_CoreX_Env"
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = Game
  L0_2 = L0_2.PushSetup
  L1_2 = "goliath_Boss_Defeated"
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "TG_PreBossCheckpoint_SuperGoliath"
  L0_2 = L0_2(L1_2)
  L0_2.bEnabled = false
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "TG_Checkpoint_SuperGoliath"
  L0_2 = L0_2(L1_2)
  L0_2.bEnabled = false
end
L2_1.OnEnter_PostSuperGoliathDefeated = L3_1
L2_1 = s050_forest
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 ~= nil and A0_2 == "SP_SuperGoliath_CoreX_core_x" then
    L1_2 = Game
    L1_2 = L1_2.PopSetup
    L2_2 = "SP_Goliath_B_goliath_Fake_Boss_Defeated"
    L3_2 = true
    L4_2 = false
    L1_2(L2_2, L3_2, L4_2)
  end
end
L2_1.OnBossDefeated = L3_1
L2_1 = s050_forest
function L3_1()
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
    if L1_2 == "DIAG_ADAM_LAB_2" then
      L2_2 = L0_2.USABLE
      L3_2 = L2_2
      L2_2 = L2_2.ActiveDialogue
      L4_2 = "DIAG_ADAM_FOREST_1"
      L2_2(L3_2, L4_2)
      L2_2 = Blackboard
      L2_2 = L2_2.SetProp
      L3_2 = "GAME_PROGRESS"
      L4_2 = "ADAMDIALOGUE"
      L5_2 = "s"
      L6_2 = "DIAG_ADAM_FOREST_1"
      L2_2(L3_2, L4_2, L5_2, L6_2)
    else
      if L1_2 == "DIAG_ADAM_FOREST_1" then
        L2_2 = L0_1
        if L2_2 then
          L2_2 = L0_2.USABLE
          L3_2 = L2_2
          L2_2 = L2_2.ActiveDialogue
          L4_2 = "DIAG_ADAM_FOREST_2"
          L2_2(L3_2, L4_2)
          L2_2 = Blackboard
          L2_2 = L2_2.SetProp
          L3_2 = "GAME_PROGRESS"
          L4_2 = "ADAMDIALOGUE"
          L5_2 = "s"
          L6_2 = "DIAG_ADAM_FOREST_2"
          L2_2(L3_2, L4_2, L5_2, L6_2)
      end
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
end
L2_1.OnEnter_AP_07 = L3_1
L2_1 = s050_forest
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = Scenario
  L4_2 = L4_2.SubAreaChangeRequest
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L2_1.SubAreaChangeRequest = L3_1
L2_1 = s050_forest
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  if A0_2 == "collision_camera_039" and A2_2 == "collision_camera_032" then
    L5_2 = s050_forest
    L5_2 = L5_2.LaunchCutscene_33
    L5_2()
  end
  if A0_2 == "collision_camera_002" and A1_2 == "Default" then
    L5_2 = Game
    L5_2 = L5_2.GetActor
    L6_2 = "SG_ChozoRobotSoldier"
    L5_2 = L5_2(L6_2)
    if L5_2 ~= nil then
      L6_2 = print
      L7_2 = L5_2.SPAWNGROUP
      L7_2 = L7_2.iNumDeaths
      L6_2(L7_2)
      L6_2 = L5_2.SPAWNGROUP
      L6_2 = L6_2.iNumDeaths
      if 0 < L6_2 then
        L6_2 = Game
        L6_2 = L6_2.PushSetup
        L7_2 = "PostChozoRobotSoldier"
        L8_2 = true
        L9_2 = true
        L6_2(L7_2, L8_2, L9_2)
      end
    end
  end
  if A0_2 == "collision_camera_023" and A1_2 == "ChozoWarriorX" then
    L5_2 = Game
    L5_2 = L5_2.GetActor
    L6_2 = "SG_ChozoWarriorX"
    L5_2 = L5_2(L6_2)
    if L5_2 ~= nil then
      L6_2 = print
      L7_2 = L5_2.SPAWNGROUP
      L7_2 = L7_2.iNumDeaths
      L6_2(L7_2)
      L6_2 = L5_2.SPAWNGROUP
      L6_2 = L6_2.iNumDeaths
      if 0 < L6_2 then
        L6_2 = Game
        L6_2 = L6_2.PopSetup
        L7_2 = "ChozoWarriorX"
        L8_2 = true
        L9_2 = true
        L6_2(L7_2, L8_2, L9_2)
        L6_2 = Game
        L6_2 = L6_2.PushSetup
        L7_2 = "PostChozoWarriorX"
        L8_2 = false
        L9_2 = true
        L6_2(L7_2, L8_2, L9_2)
      end
    end
  end
end
L2_1.OnSubAreaChange = L3_1
L2_1 = s050_forest
function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "cutsceneplayer_33"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.CUTSCENE
    L2_2 = L1_2
    L1_2 = L1_2.TryLaunchCutscene
    L1_2(L2_2)
  end
end
L2_1.LaunchCutscene_33 = L3_1
L2_1 = Scenario
L2_1 = L2_1.AddFadeTransition
L3_1 = "collision_camera_024"
L4_1 = "Default"
L5_1 = "collision_camera_031"
L6_1 = "Default"
L7_1 = "Fade"
L2_1(L3_1, L4_1, L5_1, L6_1, L7_1)
L2_1 = s050_forest
function L3_1()
  local L0_2, L1_2
end
L2_1.OnBeforeGenerate = L3_1
L2_1 = s050_forest
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CurrentScenario
  L2_2.oEmmyEntity = A1_2
  L2_2 = AI
  L2_2 = L2_2.SetWorldGraphToEmmy
  L3_2 = "LE_WorldGraph"
  L4_2 = A1_2.sName
  L2_2(L3_2, L4_2)
  L2_2 = s050_forest
  L2_2 = L2_2.ChangePatrolEmmy
  L3_2 = "PATROLROUTE_03"
  L2_2(L3_2)
  L2_2 = print
  L3_2 = "EMMY: Generation OK. Starting patrol: "
  L4_2 = A1_2.AI
  L4_2 = L4_2.sCurrentPatrol
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
  L2_2 = L0_1
  if L2_2 == true then
    L2_2 = print
    L3_2 = "QUARANTINE IS OPENED"
    L2_2(L3_2)
  else
    L2_2 = CurrentScenario
    L2_2 = L2_2.oEmmyEntity
    L2_2.bEnabled = false
    L2_2 = print
    L3_2 = "QUARANTINE IS NOT OPENED"
    L2_2(L3_2)
  end
end
L2_1.OnEmmyForestGenerated = L3_1
L2_1 = s050_forest
function L3_1()
  local L0_2, L1_2
  L0_2 = GUI
  L0_2 = L0_2.AddEmmyMissionLogEntry
  L1_2 = "#MLOG_ENCOUNTER_EMMY_FOREST"
  L0_2(L1_2)
end
L2_1.AddForestEmmyToMissionLog = L3_1
L2_1 = s050_forest
function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.PushSetup
  L1_2 = "PostEmmy"
  L2_2 = true
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
end
L2_1.OnEmmyForestDead = L3_1
L2_1 = s050_forest
function L3_1()
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
L2_1.OnEmmyAbilityObtainedFadeOutCompleted = L3_1
L2_1 = s050_forest
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = GUI
  L0_2 = L0_2.ShowMessage
  L1_2 = "#CUT_ICE_MISSILE"
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
    L5_2 = "OnEmmyForestDead"
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L2_1.DelayedOnEmmyForestDead = L3_1
L2_1 = s050_forest
function L3_1()
  local L0_2, L1_2
end
L2_1.OnEmmyDeathMessageSkipped = L3_1
L2_1 = s050_forest
function L3_1()
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
L2_1.OnUnlockEmmyDoors = L3_1
L2_1 = s050_forest
function L3_1()
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
  L1_2 = print
  L2_2 = "s050_forest.PatrolRoutesGeneration(): Patrol designation OK"
  L1_2(L2_2)
end
L2_1.PatrolRoutesGeneration = L3_1
L2_1 = s050_forest
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_01"
  L3_2 = {}
  L4_2 = "WorldGraph_0"
  L5_2 = "WorldGraph_2"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_01"
  L3_2 = {}
  L4_2 = "WorldGraph_11"
  L5_2 = "WorldGraph_6"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_02"
  L3_2 = {}
  L4_2 = "WorldGraph_10"
  L5_2 = "WorldGraph_12"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_02"
  L3_2 = {}
  L4_2 = "WorldGraph_1"
  L5_2 = "WorldGraph_11"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_03"
  L3_2 = {}
  L4_2 = "WorldGraph_10"
  L5_2 = "WorldGraph_1"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_03"
  L3_2 = {}
  L4_2 = "WorldGraph_9"
  L5_2 = "WorldGraph_12"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_04"
  L3_2 = {}
  L4_2 = "WorldGraph_16"
  L5_2 = "WorldGraph_14"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_04"
  L3_2 = {}
  L4_2 = "WorldGraph_15"
  L5_2 = "WorldGraph_13"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_04"
  L3_2 = {}
  L4_2 = "WorldGraph_11"
  L5_2 = "WorldGraph_12"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_05"
  L3_2 = {}
  L4_2 = "WorldGraph_13"
  L3_2[1] = L4_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_05"
  L3_2 = {}
  L4_2 = "WorldGraph_14"
  L3_2[1] = L4_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_05"
  L3_2 = {}
  L4_2 = "WorldGraph_15"
  L3_2[1] = L4_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_06"
  L3_2 = {}
  L4_2 = "WorldGraph_42"
  L5_2 = "WorldGraph_12"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_06"
  L3_2 = {}
  L4_2 = "WorldGraph_16"
  L5_2 = "WorldGraph_14"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_06"
  L3_2 = {}
  L4_2 = "WorldGraph_12"
  L5_2 = "WorldGraph_19"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_07"
  L3_2 = {}
  L4_2 = "WorldGraph_17"
  L5_2 = "WorldGraph_21"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_07"
  L3_2 = {}
  L4_2 = "WorldGraph_18"
  L5_2 = "WorldGraph_41"
  L6_2 = "WorldGraph_23"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_08"
  L3_2 = {}
  L4_2 = "WorldGraph_26"
  L3_2[1] = L4_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_08"
  L3_2 = {}
  L4_2 = "WorldGraph_27"
  L3_2[1] = L4_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_08"
  L3_2 = {}
  L4_2 = "WorldGraph_24"
  L3_2[1] = L4_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_09"
  L3_2 = {}
  L4_2 = "WorldGraph_25"
  L5_2 = "WorldGraph_29"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_09"
  L3_2 = {}
  L4_2 = "WorldGraph_26"
  L5_2 = "WorldGraph_31"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_09"
  L3_2 = {}
  L4_2 = "WorldGraph_48"
  L5_2 = "WorldGraph_24"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_10"
  L3_2 = {}
  L4_2 = "WorldGraph_39"
  L5_2 = "WorldGraph_32"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_10"
  L3_2 = {}
  L4_2 = "WorldGraph_40"
  L5_2 = "WorldGraph_34"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = print
  L1_2 = "s050_forest.PatrolRoutesFinalNodesAssignation(): Final Nodes Assignation OK"
  L0_2(L1_2)
end
L2_1.PatrolRoutesFinalNodesAssignation = L3_1
L2_1 = s050_forest
function L3_1(A0_2)
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
L2_1.ChangePatrolEmmy = L3_1
L2_1 = s050_forest
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = string
  L2_2 = L2_2.gsub
  L3_2 = A0_2.sName
  L4_2 = "TG_PATROLEMMYACTIVATOR_"
  L5_2 = "PATROLROUTE_"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = s050_forest
  L3_2 = L3_2.ChangePatrolEmmy
  L4_2 = L2_2
  L3_2(L4_2)
end
L2_1.OnEnter_PatrolEmmyActivator = L3_1
L2_1 = s050_forest
function L3_1(A0_2, A1_2)
end
L2_1.OnExit_PatrolEmmyActivator = L3_1
L2_1 = s050_forest
L2_1.tEmmyDoor = nil
L2_1 = s050_forest
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = L0_1
  if L3_2 == true then
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
          if A2_2 then
            L3_2 = s050_forest
            L3_2 = L3_2.HardEmmyRelocationDoor
            L4_2 = A0_2
            L3_2 = L3_2(L4_2)
            sTeleportLandmark = L3_2
          else
            L3_2 = s050_forest
            L3_2 = L3_2.EmmyRelocationDoor
            L4_2 = A0_2
            L3_2 = L3_2(L4_2)
            sTeleportLandmark = L3_2
          end
          L3_2 = sTeleportLandmark
          if L3_2 ~= nil then
            L3_2 = Game
            L3_2 = L3_2.GetActor
            L4_2 = sTeleportLandmark
            L3_2 = L3_2(L4_2)
            L4_2 = print
            L5_2 = L3_2.sName
            L4_2(L5_2)
            L4_2 = CurrentScenario
            L4_2 = L4_2.oEmmyEntity
            L4_2.bEnabled = false
            L4_2 = CurrentScenario
            L4_2 = L4_2.oEmmyEntity
            L5_2 = L3_2.vPos
            L4_2.vPos = L5_2
            L4_2 = CurrentScenario
            L4_2 = L4_2.oEmmyEntity
            L5_2 = L3_2.vAng
            L4_2.vAng = L5_2
            L4_2 = CurrentScenario
            L4_2 = L4_2.oEmmyEntity
            L4_2.bEnabled = true
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
L2_1.OnWalkThroughEmmyDoor = L3_1
L2_1 = s050_forest
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = print
  L2_2 = "Door: Hard "
  L3_2 = A0_2.sName
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = A0_2.sName
  if L1_2 == "dooremmy" then
    L1_2 = s050_forest
    L2_2 = {}
    L3_2 = "LM_EmmyEntrancePoint_019"
    L2_2[1] = L3_2
    L1_2.tEmmyDoor = L2_2
  else
    L1_2 = A0_2.sName
    if L1_2 == "dooremmy_000" then
      L1_2 = s050_forest
      L2_2 = {}
      L3_2 = "LM_EmmyEntrancePoint_004"
      L2_2[1] = L3_2
      L1_2.tEmmyDoor = L2_2
    else
      L1_2 = A0_2.sName
      if L1_2 == "dooremmy_001" then
        L1_2 = s050_forest
        L2_2 = {}
        L3_2 = "LM_EmmyEntrancePoint_003"
        L2_2[1] = L3_2
        L1_2.tEmmyDoor = L2_2
      else
        L1_2 = A0_2.sName
        if L1_2 == "dooremmy_002" then
          L1_2 = s050_forest
          L2_2 = {}
          L3_2 = "LM_EmmyEntrancePoint_006"
          L2_2[1] = L3_2
          L1_2.tEmmyDoor = L2_2
        else
          L1_2 = A0_2.sName
          if L1_2 == "dooremmy_003" then
            L1_2 = s050_forest
            L2_2 = {}
            L3_2 = "LM_EmmyEntrancePoint_005"
            L4_2 = "LM_EmmyEntrancePoint_006"
            L5_2 = "LM_EmmyEntrancePoint_010"
            L2_2[1] = L3_2
            L2_2[2] = L4_2
            L2_2[3] = L5_2
            L1_2.tEmmyDoor = L2_2
          else
            L1_2 = A0_2.sName
            if L1_2 == "dooremmy_004" then
              L1_2 = s050_forest
              L2_2 = {}
              L3_2 = "LM_EmmyEntrancePoint_011"
              L2_2[1] = L3_2
              L1_2.tEmmyDoor = L2_2
            else
              L1_2 = A0_2.sName
              if L1_2 == "dooremmy_005" then
                L1_2 = s050_forest
                L2_2 = {}
                L3_2 = "LM_EmmyEntrancePoint_011"
                L4_2 = "LM_EmmyEntrancePoint_010"
                L5_2 = "LM_EmmyEntrancePoint_019"
                L2_2[1] = L3_2
                L2_2[2] = L4_2
                L2_2[3] = L5_2
                L1_2.tEmmyDoor = L2_2
              else
                L1_2 = A0_2.sName
                if L1_2 == "dooremmy_006" then
                  L1_2 = s050_forest
                  L2_2 = {}
                  L3_2 = "LM_EmmyEntrancePoint_015"
                  L2_2[1] = L3_2
                  L1_2.tEmmyDoor = L2_2
                else
                  L1_2 = A0_2.sName
                  if L1_2 == "dooremmy_007" then
                    L1_2 = s050_forest
                    L2_2 = {}
                    L3_2 = "LM_EmmyEntrancePoint_015"
                    L2_2[1] = L3_2
                    L1_2.tEmmyDoor = L2_2
                  else
                    L1_2 = s050_forest
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
  L1_2 = s050_forest
  L1_2 = L1_2.tEmmyDoor
  if L1_2 ~= nil then
    L1_2 = s050_forest
    L1_2 = L1_2.tEmmyDoor
    L2_2 = math
    L2_2 = L2_2.random
    L3_2 = table
    L3_2 = L3_2.maxn
    L4_2 = s050_forest
    L4_2 = L4_2.tEmmyDoor
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L1_2 = L1_2[L2_2]
    return L1_2
  else
    L1_2 = nil
    return L1_2
  end
end
L2_1.HardEmmyRelocationDoor = L3_1
L2_1 = s050_forest
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.sName
  if L1_2 == "dooremmy" then
    L1_2 = s050_forest
    L2_2 = {}
    L3_2 = "LM_EmmyEntrancePoint_012"
    L4_2 = "LM_EmmyEntrancePoint_013"
    L5_2 = "LM_EmmyEntrancePoint_019"
    L6_2 = "LM_EmmyEntrancePoint_020"
    L2_2[1] = L3_2
    L2_2[2] = L4_2
    L2_2[3] = L5_2
    L2_2[4] = L6_2
    L1_2.tEmmyDoor = L2_2
  else
    L1_2 = A0_2.sName
    if L1_2 == "dooremmy_000" then
      L1_2 = s050_forest
      L2_2 = {}
      L3_2 = "LM_EmmyEntrancePoint_018"
      L4_2 = "LM_EmmyEntrancePoint_003"
      L5_2 = "LM_EmmyEntrancePoint_004"
      L2_2[1] = L3_2
      L2_2[2] = L4_2
      L2_2[3] = L5_2
      L1_2.tEmmyDoor = L2_2
    else
      L1_2 = A0_2.sName
      if L1_2 == "dooremmy_001" then
        L1_2 = s050_forest
        L2_2 = {}
        L3_2 = "LM_EmmyEntrancePoint_000"
        L4_2 = "LM_EmmyEntrancePoint_002"
        L2_2[1] = L3_2
        L2_2[2] = L4_2
        L1_2.tEmmyDoor = L2_2
      else
        L1_2 = A0_2.sName
        if L1_2 == "dooremmy_002" then
          L1_2 = s050_forest
          L2_2 = {}
          L3_2 = "LM_EmmyEntrancePoint_004"
          L4_2 = "LM_EmmyEntrancePoint_005"
          L2_2[1] = L3_2
          L2_2[2] = L4_2
          L1_2.tEmmyDoor = L2_2
        else
          L1_2 = A0_2.sName
          if L1_2 == "dooremmy_003" then
            L1_2 = s050_forest
            L2_2 = {}
            L3_2 = "LM_EmmyEntrancePoint_005"
            L4_2 = "LM_EmmyEntrancePoint_006"
            L5_2 = "LM_EmmyEntrancePoint_010"
            L2_2[1] = L3_2
            L2_2[2] = L4_2
            L2_2[3] = L5_2
            L1_2.tEmmyDoor = L2_2
          else
            L1_2 = A0_2.sName
            if L1_2 == "dooremmy_004" then
              L1_2 = s050_forest
              L2_2 = {}
              L3_2 = "LM_EmmyEntrancePoint_004"
              L4_2 = "LM_EmmyEntrancePoint_008"
              L2_2[1] = L3_2
              L2_2[2] = L4_2
              L1_2.tEmmyDoor = L2_2
            else
              L1_2 = A0_2.sName
              if L1_2 == "dooremmy_005" then
                L1_2 = s050_forest
                L2_2 = {}
                L3_2 = "LM_EmmyEntrancePoint_010"
                L4_2 = "LM_EmmyEntrancePoint_011"
                L5_2 = "LM_EmmyEntrancePoint_019"
                L2_2[1] = L3_2
                L2_2[2] = L4_2
                L2_2[3] = L5_2
                L1_2.tEmmyDoor = L2_2
              else
                L1_2 = A0_2.sName
                if L1_2 == "dooremmy_006" then
                  L1_2 = s050_forest
                  L2_2 = {}
                  L3_2 = "LM_EmmyEntrancePoint_015"
                  L4_2 = "LM_EmmyEntrancePoint_016"
                  L5_2 = "LM_EmmyEntrancePoint_017"
                  L2_2[1] = L3_2
                  L2_2[2] = L4_2
                  L2_2[3] = L5_2
                  L1_2.tEmmyDoor = L2_2
                else
                  L1_2 = A0_2.sName
                  if L1_2 == "dooremmy_007" then
                    L1_2 = s050_forest
                    L2_2 = {}
                    L3_2 = "LM_EmmyEntrancePoint_015"
                    L2_2[1] = L3_2
                    L1_2.tEmmyDoor = L2_2
                  else
                    L1_2 = s050_forest
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
  L1_2 = s050_forest
  L1_2 = L1_2.tEmmyDoor
  if L1_2 ~= nil then
    L1_2 = s050_forest
    L1_2 = L1_2.tEmmyDoor
    L2_2 = math
    L2_2 = L2_2.random
    L3_2 = table
    L3_2 = L3_2.maxn
    L4_2 = s050_forest
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
L2_1.EmmyRelocationDoor = L3_1
L2_1 = s050_forest
function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.AddSF
  L1_2 = 1
  L2_2 = "s050_forest.Checkpoint_RelocatingEmmy_CU"
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
end
L2_1.OnTeleport_Checkpoint_CU = L3_1
L2_1 = s050_forest
function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = CurrentScenario
  L0_2 = L0_2.oEmmyEntity
  if L0_2 ~= nil then
    L0_2 = Game
    L0_2 = L0_2.GetActor
    L1_2 = "LM_EmmyEntrancePoint_017"
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
      L1_2 = s050_forest
      L1_2 = L1_2.ChangePatrolEmmy
      L2_2 = "PATROLROUTE_10"
      L1_2(L2_2)
    end
  end
end
L2_1.Checkpoint_RelocatingEmmy_CU = L3_1
L2_1 = s050_forest
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = Game
  L2_2 = L2_2.GetActor
  L3_2 = "SG_PostDoubleJump"
  L2_2 = L2_2(L3_2)
  A0_2.bEnabled = false
  L3_2 = Game
  L3_2 = L3_2.PushSetup
  L4_2 = "ChozoWarriorX"
  L5_2 = true
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.SPAWNGROUP
    L4_2 = L3_2
    L3_2 = L3_2.EnableSpawnGroup
    L3_2(L4_2)
  end
end
L2_1.OnEnter_Enable_ChozoWarriorX = L3_1
L2_1 = s050_forest
function L3_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "TG_AfterChozoWarriorXEncounter"
  L0_2 = L0_2(L1_2)
  L0_2.bEnabled = true
end
L2_1.OnEnter_Enable_Trigger_AfterCWX = L3_1
L2_1 = s050_forest
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2.bEnabled = false
  L2_2 = Game
  L2_2 = L2_2.PopSetup
  L3_2 = "PostChozoWarriorX"
  L4_2 = true
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
end
L2_1.OnEnter_Disable_PostChozoWarriorSetup = L3_1
L2_1 = s050_forest
function L3_1()
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
    L0_2 = L0_2.StartWeightedEdges
    L0_2(L1_2)
  end
end
L2_1.StartEmmyWeightedEdges = L3_1
L2_1 = s050_forest
function L3_1()
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
    L0_2 = L0_2.StopWeightedEdges
    L0_2(L1_2)
  end
end
L2_1.StopEmmyWeightedEdges = L3_1
L2_1 = s050_forest
function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.PushSetup
  L1_2 = "ChangeMusic_010_StatueRoom"
  L2_2 = true
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
end
L2_1.OnEnter_ChangeMusic_SuperMissile = L3_1
L2_1 = s050_forest
function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.PopSetup
  L1_2 = "ChangeMusic_010_StatueRoom"
  L2_2 = true
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
end
L2_1.OnExit_ChangeMusic_SuperMissile = L3_1
L2_1 = s050_forest
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = Game
  L2_2 = L2_2.GetActor
  L3_2 = "SG_PostEmmy_000"
  L2_2 = L2_2(L3_2)
  L3_2 = Game
  L3_2 = L3_2.GetActor
  L4_2 = "SG_PostEmmy_001"
  L3_2 = L3_2(L4_2)
  L4_2 = Game
  L4_2 = L4_2.GetActor
  L5_2 = "SG_PostEmmy_002"
  L4_2 = L4_2(L5_2)
  L5_2 = Game
  L5_2 = L5_2.GetActor
  L6_2 = "SG_PostEmmy_003"
  L5_2 = L5_2(L6_2)
  if L2_2 ~= nil then
    L6_2 = L2_2.SPAWNGROUP
    L7_2 = L6_2
    L6_2 = L6_2.EnableSpawnGroup
    L6_2(L7_2)
  end
  if L3_2 ~= nil then
    L6_2 = L3_2.SPAWNGROUP
    L7_2 = L6_2
    L6_2 = L6_2.EnableSpawnGroup
    L6_2(L7_2)
  end
  if L4_2 ~= nil then
    L6_2 = L4_2.SPAWNGROUP
    L7_2 = L6_2
    L6_2 = L6_2.EnableSpawnGroup
    L6_2(L7_2)
  end
  if L5_2 ~= nil then
    L6_2 = L5_2.SPAWNGROUP
    L7_2 = L6_2
    L6_2 = L6_2.EnableSpawnGroup
    L6_2(L7_2)
  end
  A0_2.bEnabled = false
end
L2_1.OnEnter_ActivatePostEmmyEnemies = L3_1
L2_1 = s050_forest
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = Game
  L2_2 = L2_2.GetActor
  L3_2 = "SG_Gooplot_000"
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.SPAWNGROUP
    L4_2 = L3_2
    L3_2 = L3_2.EnableSpawnGroup
    L3_2(L4_2)
  end
  A0_2.bEnabled = false
end
L2_1.OnEnter_ActivateArenaSpawngroup = L3_1
L2_1 = s050_forest
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = Game
  L2_2 = L2_2.GetActor
  L3_2 = "SG_PostSuperGoliath_000"
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.SPAWNGROUP
    L4_2 = L3_2
    L3_2 = L3_2.EnableSpawnGroup
    L3_2(L4_2)
  end
  A0_2.bEnabled = false
end
L2_1.OnEnter_PostSuperGoliath = L3_1
L2_1 = s050_forest
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "LM_EnteringCWXArena"
  L0_2 = L0_2(L1_2)
  L1_2 = Game
  L1_2 = L1_2.GetPlayer
  L1_2 = L1_2()
  if L1_2 ~= nil and L0_2 ~= nil then
    L2_2 = L1_2.INPUT
    L3_2 = L2_2
    L2_2 = L2_2.IgnoreInput
    L4_2 = true
    L5_2 = false
    L6_2 = "Enter_CWX_Arena"
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = L1_2.ANIMATION
    L3_2 = L2_2
    L2_2 = L2_2.SetAction
    L4_2 = "fall"
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = L0_2.vPos
    L1_2.vPos = L2_2
    L2_2 = L0_2.vAng
    L1_2.vAng = L2_2
    L2_2 = Game
    L2_2 = L2_2.ForceConvertToSamus
    L2_2()
  end
end
L2_1.Enter_CWX_Arena = L3_1
L2_1 = s050_forest
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = Game
  L0_2 = L0_2.GetPlayer
  L0_2 = L0_2()
  if L0_2 ~= nil then
    L1_2 = L0_2.INPUT
    L2_2 = L1_2
    L1_2 = L1_2.IgnoreInput
    L3_2 = false
    L4_2 = false
    L5_2 = "Enter_CWX_Arena"
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L2_1.Exit_CWX_Arena = L3_1
L2_1 = s050_forest
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = Game
  L2_2 = L2_2.GetActor
  L3_2 = "doorpowerclosed_003"
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.LIFE
    L4_2 = L3_2
    L3_2 = L3_2.LockDoor
    L3_2(L4_2)
  end
  A0_2.bEnabled = false
end
L2_1.LockDoorSuperGoliathArena = L3_1
L2_1 = s050_forest
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = Game
  L2_2 = L2_2.GetActor
  L3_2 = "SG_ChozoRobotSoldier"
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.SPAWNGROUP
    L4_2 = L3_2
    L3_2 = L3_2.EnableSpawnGroup
    L3_2(L4_2)
  end
  L3_2 = Game
  L3_2 = L3_2.GetActor
  L4_2 = "TG_ActivateArenaSpawngroup"
  L3_2 = L3_2(L4_2)
  L3_2.bEnabled = true
  A0_2.bEnabled = false
end
L2_1.OnEnter_Presentation_ChozoRobotSoldier = L3_1
L2_1 = s050_forest
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = print
  L1_2 = "----- DETECTING DIRECTION -----"
  L0_2(L1_2)
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "SP_ChozoRobotSoldier_chozorobotsoldier"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
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
      L3_2 = print
      L4_2 = "----- TURN RIGHT -----"
      L3_2(L4_2)
      L3_2 = L0_2.ANIMATION
      L4_2 = L3_2
      L3_2 = L3_2.SetAction
      L5_2 = "spawn_front_turn_right"
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = V3D
      L4_2 = 1
      L5_2 = 0
      L6_2 = 0
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      L2_2 = L3_2
    else
      L3_2 = print
      L4_2 = "----- TURN LEFT -----"
      L3_2(L4_2)
      L3_2 = L0_2.ANIMATION
      L4_2 = L3_2
      L3_2 = L3_2.SetAction
      L5_2 = "spawn_front_turn_left"
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = V3D
      L4_2 = -1
      L5_2 = 0
      L6_2 = 0
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      L2_2 = L3_2
    end
  end
end
L2_1.CRS_DetectingDirection = L3_1
