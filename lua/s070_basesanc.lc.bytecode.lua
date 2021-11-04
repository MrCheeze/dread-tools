local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = s070_basesanc
function L1_1()
  local L0_2, L1_2
  L0_2 = s070_basesanc
  L0_2 = L0_2.PatrolRoutesGeneration
  L0_2()
  L0_2 = s070_basesanc
  L0_2 = L0_2.PatrolRoutesFinalNodesAssignation
  L0_2()
  L0_2 = s070_basesanc
  L0_2.m_bSkipAquaOpening = false
end
L0_1.main = L1_1
L0_1 = s070_basesanc
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
  L4_2 = 399
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAX_LIFE"
  L3_2 = "f"
  L4_2 = 399
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_MISSILE_MAX"
  L3_2 = "f"
  L4_2 = 38
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_MISSILE_CURRENT"
  L3_2 = "f"
  L4_2 = 38
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
L2_1 = "SP_Checkpoint_TwoChozoRobots"
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.ReinitPlayerFromBlackboard
  L0_2()
  L0_2 = Scenario
  L0_2 = L0_2.ReadFromBlackboard
  L1_2 = Scenario
  L1_2 = L1_2.LUAPropIDs
  L1_2 = L1_2.SANC_POSTXRELEASE_APPLIED
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
    L0_2 = s070_basesanc
    L0_2 = L0_2.Activate_Setup_PostXRelease
    L0_2()
  end
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "emmy_sanc_deactivated"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = Scenario
    L1_2 = L1_2.ReadFromBlackboard
    L2_2 = Scenario
    L2_2 = L2_2.LUAPropIDs
    L2_2 = L2_2.SANC_EMMY_DEACTIVATED_ENABLED
    L3_2 = false
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 == true then
      L0_2.bEnabled = true
    else
      L0_2.bEnabled = false
    end
  end
end
L3_1.InitFromBlackboard = L4_1
L3_1 = s070_basesanc
function L4_1()
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
    L1_2 = L1_2.SANC_POSTXRELEASE_APPLIED
    L2_2 = "b"
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = true
    L1_1 = L0_2
  end
end
L3_1.Activate_Setup_PostXRelease = L4_1
L3_1 = s070_basesanc
L4_1 = {}
L4_1.ShowDeath = true
L4_1.GoToMainMenu = false
L3_1.tGetOnDeathOverrides = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2
  L0_2 = s070_basesanc
  L0_2 = L0_2.tGetOnDeathOverrides
  return L0_2
end
L3_1.GetOnDeathOverrides = L4_1
L3_1 = s070_basesanc
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 ~= nil then
    L2_2 = print
    L3_2 = "OnEntityGenerated!!!!!!"
    L2_2(L3_2)
  end
end
L3_1.OnEntityGenerated = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_012_B"
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = print
  L1_2 = "OnEnter_ChangeCamera_012_B"
  L0_2(L1_2)
end
L3_1.OnEnter_ChangeCamera_012_B = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_012_B"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = print
  L1_2 = "OnExit_ChangeCamera_012_B"
  L0_2(L1_2)
end
L3_1.OnExit_ChangeCamera_012_B = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_012_C"
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = print
  L1_2 = "OnEnter_ChangeCamera_012_C"
  L0_2(L1_2)
end
L3_1.OnEnter_ChangeCamera_012_C = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_012_C"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = print
  L1_2 = "OnExit_ChangeCamera_012_C"
  L0_2(L1_2)
end
L3_1.OnExit_ChangeCamera_012_C = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_003_B"
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = print
  L1_2 = "OnEnter_ChangeCamera_003_B"
  L0_2(L1_2)
end
L3_1.OnEnter_ChangeCamera_003_B = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_003_B"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = print
  L1_2 = "OnExit_ChangeCamera_003_B"
  L0_2(L1_2)
end
L3_1.OnExit_ChangeCamera_003_B = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "TG_ChangeCamera_024_B"
  L0_2 = L0_2(L1_2)
  L0_2.bEnabled = false
  L1_2 = print
  L2_2 = "OnEnter_ChangeCamera_024_A"
  L1_2(L2_2)
  L1_2 = Game
  L1_2 = L1_2.SetCollisionCameraLocked
  L2_2 = "collision_camera_024_A"
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L3_1.OnEnter_ChangeCamera_024_A = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "TG_ChangeCamera_024_A"
  L0_2 = L0_2(L1_2)
  L0_2.bEnabled = true
end
L3_1.OnEnter_ChangeCamera_024_A_Delayed = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_024_A"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = print
  L1_2 = "OnExit_ChangeCamera_024_A"
  L0_2(L1_2)
  L0_2 = Game
  L0_2 = L0_2.AddSF
  L1_2 = 0
  L2_2 = "s070_basesanc.OnEnter_ChangeCamera_024_B_Delayed"
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
end
L3_1.OnExit_ChangeCamera_024_A = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "TG_ChangeCamera_024_A"
  L0_2 = L0_2(L1_2)
  L0_2.bEnabled = false
  L1_2 = Game
  L1_2 = L1_2.SetCollisionCameraLocked
  L2_2 = "collision_camera_024_B"
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = print
  L2_2 = "OnEnter_ChangeCamera_024_B"
  L1_2(L2_2)
end
L3_1.OnEnter_ChangeCamera_024_B = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "TG_ChangeCamera_024_B"
  L0_2 = L0_2(L1_2)
  L0_2.bEnabled = true
end
L3_1.OnEnter_ChangeCamera_024_B_Delayed = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_024_B"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = print
  L1_2 = "OnExit_ChangeCamera_024_B"
  L0_2(L1_2)
  L0_2 = Game
  L0_2 = L0_2.AddSF
  L1_2 = 0
  L2_2 = "s070_basesanc.OnEnter_ChangeCamera_024_A_Delayed"
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
end
L3_1.OnExit_ChangeCamera_024_B = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_024_C"
  L2_2 = true
  L0_2(L1_2, L2_2)
end
L3_1.OnEnter_ChangeCamera_024_C = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_024_C"
  L2_2 = false
  L0_2(L1_2, L2_2)
end
L3_1.OnExit_ChangeCamera_024_C = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_030_B"
  L2_2 = true
  L0_2(L1_2, L2_2)
end
L3_1.OnEnter_ChangeCamera_030_B = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_030_B"
  L2_2 = false
  L0_2(L1_2, L2_2)
end
L3_1.OnExit_ChangeCamera_030_B = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_038_B"
  L2_2 = true
  L0_2(L1_2, L2_2)
end
L3_1.OnEnter_ChangeCamera_038_B = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_038_B"
  L2_2 = false
  L0_2(L1_2, L2_2)
end
L3_1.OnExit_ChangeCamera_038_B = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = {}
  L1_2 = 1
  L2_2 = 26
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = string
    L5_2 = L5_2.format
    L6_2 = "%02d"
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = "#CAPTION_PROFESSOREVENT_PAGE_"
    L7_2 = L5_2
    L6_2 = L6_2 .. L7_2
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L0_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    if L4_2 == 5 or L4_2 == 11 then
      L7_2 = L6_2
      L8_2 = "_B"
      L6_2 = L7_2 .. L8_2
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = L0_2
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
  L1_2 = GUI
  L1_2 = L1_2.AddDialogMissionLogEntry
  L2_2 = L0_2
  L1_2(L2_2)
end
L3_1.AddProfessorDialogueToMissionLog = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = s070_basesanc
  L0_2 = L0_2.m_bSkipAquaOpening
  if L0_2 == false then
    L0_2 = Game
    L0_2 = L0_2.GetActor
    L1_2 = "cutsceneplayer_40b_part1"
    L0_2 = L0_2(L1_2)
    if L0_2 ~= nil then
      L1_2 = Game
      L1_2 = L1_2.GetCurrentCutsceneStr
      L1_2 = L1_2()
      L2_2 = L0_2.CUTSCENE
      L3_2 = L2_2
      L2_2 = L2_2.GetCutscene
      L2_2 = L2_2(L3_2)
      L2_2 = L2_2.oDefinition
      L2_2 = L2_2.sId
      if L1_2 ~= L2_2 then
        L3_2 = L0_2.CUTSCENE
        L4_2 = L3_2
        L3_2 = L3_2.TryLaunchCutscene
        L3_2(L4_2)
      end
    end
  end
  L0_2 = Game
  L0_2 = L0_2.SetAquaGateOpeningEventEndLUACallback
  L1_2 = "s070_basesanc.LaunchCutscene40_Part2b"
  L0_2(L1_2)
end
L3_1.OnAfter_Cutscene_40_Part1 = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = s070_basesanc
  L0_2.m_bSkipAquaOpening = true
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "cutsceneplayer_40b_part1"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.CUTSCENE
    L2_2 = L1_2
    L1_2 = L1_2.LaunchCutsceneImmediate
    L1_2(L2_2)
    L1_2 = L0_2.CUTSCENE
    L2_2 = L1_2
    L1_2 = L1_2.SkipCutscene
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end
L3_1.OnSkip_Cutscene_40_Part1 = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.LaunchAquaGateOpening
  L1_2 = s070_basesanc
  L1_2 = L1_2.m_bSkipAquaOpening
  L0_2(L1_2)
end
L3_1.OnAfter_Cutscene_40_Part2a = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2
  L0_2 = s070_basesanc
  L0_2.m_bSkipAquaOpening = true
end
L3_1.OnSkip_Cutscene_40_Part2a = L4_1
L3_1 = s070_basesanc
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = Game
  L1_2 = L1_2.GetActor
  L2_2 = "cutsceneplayer_40b_part2"
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    if A0_2 == true then
      L2_2 = Game
      L2_2 = L2_2.SetSkippingQueuedCutscenes
      L3_2 = true
      L2_2(L3_2)
      L2_2 = Game
      L2_2 = L2_2.GetActor
      L3_2 = "PRP_professor_death"
      L2_2 = L2_2(L3_2)
      if L2_2 ~= nil then
        L4_2 = L2_2
        L3_2 = L2_2.SetVisible
        L5_2 = true
        L3_2(L4_2, L5_2)
      end
    end
    L2_2 = L1_2.CUTSCENE
    L3_2 = L2_2
    L2_2 = L2_2.GetCutscene
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2
    L2_2 = L2_2.SetFadeInOnStart
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = L1_2.CUTSCENE
    L3_2 = L2_2
    L2_2 = L2_2.LaunchCutsceneImmediate
    L2_2(L3_2)
    if A0_2 == true then
      L2_2 = L1_2.CUTSCENE
      L3_2 = L2_2
      L2_2 = L2_2.SkipCutscene
      L4_2 = true
      L2_2(L3_2, L4_2)
    end
  end
end
L3_1.LaunchCutscene40_Part2b = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SpawnEntity
  L1_2 = "SP_ChozoRobotSoldier"
  L0_2(L1_2)
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "CAM_ChozoRobotSoldier"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.LOGICCAMERA
    L2_2 = L1_2
    L1_2 = L1_2.GetLogicCamera
    L1_2 = L1_2(L2_2)
    L1_2.fMinExtraZDist = 2630
  end
end
L3_1.OnBefore_Cutscene_40_Part2bStarted = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2
  L0_2 = GUI
  L0_2 = L0_2.AddEmmyMissionLogEntry
  L1_2 = "#MLOG_ENCOUNTER_EMMY_SANC"
  L0_2(L1_2)
  L0_2 = s070_basesanc
  L0_2 = L0_2.AddProfessorDialogueToMissionLog
  L0_2()
end
L3_1.AddEmmyProfessorToMissionLog = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = s070_basesanc
  L0_2 = L0_2.Professor_MET
  L0_2()
  L0_2 = s070_basesanc
  L0_2.m_bSkipAquaOpening = false
  L0_2 = Game
  L0_2 = L0_2.AddSF
  L1_2 = 0.5
  L2_2 = "s070_basesanc.Delayed_RestoreRobotSoldierLogicCameraMinZ"
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
end
L3_1.OnAfter_Cutscene_40_Part2b = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "CAM_ChozoRobotSoldier"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.LOGICCAMERA
    L2_2 = L1_2
    L1_2 = L1_2.GetLogicCamera
    L1_2 = L1_2(L2_2)
    L1_2.fMinExtraZDist = 1630
  end
end
L3_1.Delayed_RestoreRobotSoldierLogicCameraMinZ = L4_1
L3_1 = s070_basesanc
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  if A0_2 == "SP_ChozoRobotSoldier_chozorobotsoldier" then
    L1_2 = Game
    L1_2 = L1_2.AddSF
    L2_2 = 2.5
    L3_2 = "s070_basesanc.Delayed_Professor_CUT"
    L4_2 = ""
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = Game
    L1_2 = L1_2.GetActor
    L2_2 = "doorpowerpower_002"
    L1_2 = L1_2(L2_2)
    if L1_2 ~= nil then
      L2_2 = L1_2.LIFE
      L3_2 = L2_2
      L2_2 = L2_2.LockDoor
      L2_2(L3_2)
    end
    L2_2 = Game
    L2_2 = L2_2.GetActor
    L3_2 = "emmy_sanc_deactivated"
    L2_2 = L2_2(L3_2)
    if L2_2 ~= nil then
      L2_2.bEnabled = true
      L3_2 = Scenario
      L3_2 = L3_2.WriteToBlackboard
      L4_2 = Scenario
      L4_2 = L4_2.LUAPropIDs
      L4_2 = L4_2.SANC_EMMY_DEACTIVATED_ENABLED
      L5_2 = "b"
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
      L4_2 = L2_2
      L3_2 = L2_2.SetVisible
      L5_2 = true
      L3_2(L4_2, L5_2)
    end
  end
end
L3_1.OnBossDeath = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "cutsceneplayer_40c"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.CUTSCENE
    L2_2 = L1_2
    L1_2 = L1_2.LaunchCutscene
    L1_2(L2_2)
  end
  L1_2 = Game
  L1_2 = L1_2.GetActor
  L2_2 = "doorpowerpower_002"
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.LIFE
    L3_2 = L2_2
    L2_2 = L2_2.UnLockDoor
    L2_2(L3_2)
  end
  L2_2 = Game
  L2_2 = L2_2.RemoveBossCameraCtrl
  L2_2()
end
L3_1.Delayed_Professor_CUT = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2
end
L3_1.OnAfter_Cutscene_40_Part3 = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "GAME_PROGRESS"
  L2_2 = "PROFESSOR_MET"
  L3_2 = "b"
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
L3_1.Professor_MET = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2
end
L3_1.OnBeforeGenerate = L4_1
L3_1 = s070_basesanc
function L4_1(A0_2, A1_2)
end
L3_1.OnEmmyBaseSancGenerated = L4_1
L3_1 = s070_basesanc
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CurrentScenario
  L2_2.oEmmyEntity = A1_2
  L2_2 = AI
  L2_2 = L2_2.SetWorldGraphToEmmy
  L3_2 = "LE_WorldGraph"
  L4_2 = A1_2.sName
  L2_2(L3_2, L4_2)
  L2_2 = s070_basesanc
  L2_2 = L2_2.ChangePatrolEmmy
  L3_2 = "PATROLROUTE_01"
  L2_2(L3_2)
  L2_2 = print
  L3_2 = "EMMY: Generation OK. Starting patrol: "
  L4_2 = A1_2.AI
  L4_2 = L4_2.sCurrentPatrol
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
  L2_2 = Blackboard
  L2_2 = L2_2.GetProp
  L3_2 = "GAME_PROGRESS"
  L4_2 = "QUARENTINE_OPENED"
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == true then
    L3_2 = CurrentScenario
    L3_2 = L3_2.oEmmyEntity
    L3_2 = L3_2.AI
    L3_2 = L3_2.bTargetInsideEmmyZone
    if L3_2 then
      L3_2 = print
      L4_2 = "QUARANTINE IS OPENED"
      L3_2(L4_2)
  end
  else
    L3_2 = CurrentScenario
    L3_2 = L3_2.oEmmyEntity
    L3_2.bEnabled = false
    L3_2 = print
    L4_2 = "QUARANTINE IS NOT OPENED"
    L3_2(L4_2)
  end
end
L3_1.OnCentralUnitEmmyReady = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.PushSetup
  L1_2 = "PostEmmy"
  L2_2 = true
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
end
L3_1.OnEmmySancDead = L4_1
L3_1 = s070_basesanc
function L4_1()
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
L3_1.OnEmmyAbilityObtainedFadeOutCompleted = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = GUI
  L0_2 = L0_2.ShowMessage
  L1_2 = "#PLACEHOLDER_WAVEBEAM_OBTAINED"
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
    L5_2 = "OnEmmySancDead"
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L3_1.DelayedOnEmmySancDead = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2
end
L3_1.OnEmmyDeathMessageSkipped = L4_1
L3_1 = s070_basesanc
function L4_1()
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
L3_1.OnUnlockEmmyDoors = L4_1
L3_1 = s070_basesanc
function L4_1()
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
    L3_2 = "LS_PATROLEMMY_10"
    L1_2(L2_2, L3_2)
    L1_2 = L0_2.SPAWNPOINT
    L2_2 = L1_2
    L1_2 = L1_2.AddPatrolShape
    L3_2 = "LS_PATROLEMMY_11"
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
  L3_2 = "PATROLROUTE_10"
  L4_2 = "LS_PATROLEMMY_10"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = AI
  L1_2 = L1_2.AddPatrol
  L2_2 = "LE_WorldGraph"
  L3_2 = "PATROLROUTE_11"
  L4_2 = "LS_PATROLEMMY_11"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = print
  L2_2 = "s070_basesanc.PatrolRoutesGeneration(): Patrol designation OK"
  L1_2(L2_2)
end
L3_1.PatrolRoutesGeneration = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_01"
  L3_2 = {}
  L4_2 = "WorldGraph_1"
  L3_2[1] = L4_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_01"
  L3_2 = {}
  L4_2 = "WorldGraph_4"
  L3_2[1] = L4_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_02"
  L3_2 = {}
  L4_2 = "WorldGraph_1"
  L3_2[1] = L4_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_02"
  L3_2 = {}
  L4_2 = "WorldGraph_6"
  L3_2[1] = L4_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_03"
  L3_2 = {}
  L4_2 = "WorldGraph_8"
  L5_2 = "WorldGraph_10"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_03"
  L3_2 = {}
  L4_2 = "WorldGraph_6"
  L5_2 = "WorldGraph_7"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_05"
  L3_2 = {}
  L4_2 = "WorldGraph_12"
  L3_2[1] = L4_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_05"
  L3_2 = {}
  L4_2 = "WorldGraph_20"
  L3_2[1] = L4_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_06"
  L3_2 = {}
  L4_2 = "WorldGraph_12"
  L3_2[1] = L4_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_06"
  L3_2 = {}
  L4_2 = "WorldGraph_16"
  L3_2[1] = L4_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_07"
  L3_2 = {}
  L4_2 = "WorldGraph_18"
  L3_2[1] = L4_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_07"
  L3_2 = {}
  L4_2 = "WorldGraph_23"
  L3_2[1] = L4_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_07"
  L3_2 = {}
  L4_2 = "WorldGraph_27"
  L5_2 = "WorldGraph_28"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_07"
  L3_2 = {}
  L4_2 = "WorldGraph_29"
  L3_2[1] = L4_2
  L4_2 = 2
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_08"
  L3_2 = {}
  L4_2 = "WorldGraph_31"
  L3_2[1] = L4_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_08"
  L3_2 = {}
  L4_2 = "WorldGraph_25"
  L3_2[1] = L4_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_08"
  L3_2 = {}
  L4_2 = "WorldGraph_36"
  L3_2[1] = L4_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_10"
  L3_2 = {}
  L4_2 = "WorldGraph_40"
  L3_2[1] = L4_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_10"
  L3_2 = {}
  L4_2 = "WorldGraph_44"
  L3_2[1] = L4_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_11"
  L3_2 = {}
  L4_2 = "WorldGraph_46"
  L5_2 = "WorldGraph_78"
  L6_2 = "WorldGraph_51"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_11"
  L3_2 = {}
  L4_2 = "WorldGraph_49"
  L3_2[1] = L4_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = print
  L1_2 = "s070_basesanc.PatrolRoutesFinalNodesAssignation(): Final Nodes Assignation OK"
  L0_2(L1_2)
end
L3_1.PatrolRoutesFinalNodesAssignation = L4_1
L3_1 = s070_basesanc
function L4_1(A0_2)
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
L3_1.ChangePatrolEmmy = L4_1
L3_1 = s070_basesanc
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = string
  L2_2 = L2_2.gsub
  L3_2 = A0_2.sName
  L4_2 = "TG_PATROLEMMYACTIVATOR_"
  L5_2 = "PATROLROUTE_"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = s070_basesanc
  L3_2 = L3_2.ChangePatrolEmmy
  L4_2 = L2_2
  L3_2(L4_2)
end
L3_1.OnEnter_PatrolEmmyActivator = L4_1
L3_1 = s070_basesanc
function L4_1(A0_2, A1_2)
end
L3_1.OnExit_PatrolEmmyActivator = L4_1
L3_1 = s070_basesanc
L3_1.tEmmyDoor = nil
L3_1 = s070_basesanc
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = Blackboard
  L3_2 = L3_2.GetProp
  L4_2 = "GAME_PROGRESS"
  L5_2 = "QUARENTINE_OPENED"
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 == true then
    L4_2 = Scenario
    L4_2 = L4_2.CheckEmmyAlive
    L5_2 = CurrentScenario
    L5_2 = L5_2.oEmmyEntity
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = Game
      L4_2 = L4_2.GetActor
      L5_2 = "emmy_sanc_deactivated"
      L4_2 = L4_2(L5_2)
      if L4_2 ~= nil then
        L4_2.bEnabled = false
        L5_2 = Scenario
        L5_2 = L5_2.WriteToBlackboard
        L6_2 = Scenario
        L6_2 = L6_2.LUAPropIDs
        L6_2 = L6_2.SANC_EMMY_DEACTIVATED_ENABLED
        L7_2 = "b"
        L8_2 = false
        L5_2(L6_2, L7_2, L8_2)
      end
      if A1_2 then
        L5_2 = CurrentScenario
        L5_2 = L5_2.oEmmyEntity
        if L5_2 ~= nil then
          if A2_2 then
            L5_2 = s070_basesanc
            L5_2 = L5_2.HardEmmyRelocationDoor
            L6_2 = A0_2
            L5_2 = L5_2(L6_2)
            sTeleportLandmark = L5_2
          else
            L5_2 = s070_basesanc
            L5_2 = L5_2.EmmyRelocationDoor
            L6_2 = A0_2
            L5_2 = L5_2(L6_2)
            sTeleportLandmark = L5_2
          end
          L5_2 = sTeleportLandmark
          if L5_2 ~= nil then
            L5_2 = Game
            L5_2 = L5_2.GetActor
            L6_2 = sTeleportLandmark
            L5_2 = L5_2(L6_2)
            L6_2 = print
            L7_2 = L5_2.sName
            L6_2(L7_2)
            L6_2 = CurrentScenario
            L6_2 = L6_2.oEmmyEntity
            L6_2.bEnabled = false
            L6_2 = CurrentScenario
            L6_2 = L6_2.oEmmyEntity
            L7_2 = L5_2.vPos
            L6_2.vPos = L7_2
            L6_2 = CurrentScenario
            L6_2 = L6_2.oEmmyEntity
            L7_2 = L5_2.vAng
            L6_2.vAng = L7_2
            L6_2 = CurrentScenario
            L6_2 = L6_2.oEmmyEntity
            L6_2.bEnabled = true
          end
        end
      else
        L5_2 = CurrentScenario
        L5_2 = L5_2.oEmmyEntity
        L5_2.bEnabled = false
      end
    end
  end
  L4_2 = Game
  L4_2 = L4_2.GetActor
  L5_2 = "TG_EmmyZipline004Behavior"
  L4_2 = L4_2(L5_2)
  if L4_2 ~= nil then
    L4_2.bEnabled = false
  end
end
L3_1.OnWalkThroughEmmyDoor = L4_1
L3_1 = s070_basesanc
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = print
  L2_2 = "Door: Hard "
  L3_2 = A0_2.sName
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = A0_2.sName
  if L1_2 == "dooremmy_002" then
    L1_2 = s070_basesanc
    L2_2 = {}
    L3_2 = "LM_EmmyEntrancePoint_005"
    L2_2[1] = L3_2
    L1_2.tEmmyDoor = L2_2
  else
    L1_2 = A0_2.sName
    if L1_2 == "dooremmy_003" then
      L1_2 = s070_basesanc
      L2_2 = {}
      L3_2 = "LM_EmmyEntrancePoint_011"
      L2_2[1] = L3_2
      L1_2.tEmmyDoor = L2_2
    else
      L1_2 = A0_2.sName
      if L1_2 == "dooremmy_004" then
        L1_2 = s070_basesanc
        L2_2 = {}
        L3_2 = "LM_EmmyEntrancePoint_008"
        L2_2[1] = L3_2
        L1_2.tEmmyDoor = L2_2
      else
        L1_2 = A0_2.sName
        if L1_2 == "dooremmy_005" then
          L1_2 = s070_basesanc
          L2_2 = {}
          L3_2 = "LM_EmmyEntrancePoint_006"
          L2_2[1] = L3_2
          L1_2.tEmmyDoor = L2_2
        else
          L1_2 = A0_2.sName
          if L1_2 == "dooremmy_006" then
            L1_2 = s070_basesanc
            L2_2 = {}
            L3_2 = "LM_EmmyEntrancePoint_012"
            L2_2[1] = L3_2
            L1_2.tEmmyDoor = L2_2
          else
            L1_2 = A0_2.sName
            if L1_2 == "dooremmy_008" then
              L1_2 = s070_basesanc
              L2_2 = {}
              L3_2 = "LM_EmmyEntrancePoint_017"
              L4_2 = "LM_EmmyEntrancePoint_014"
              L2_2[1] = L3_2
              L2_2[2] = L4_2
              L1_2.tEmmyDoor = L2_2
            else
              L1_2 = s070_basesanc
              L1_2.tEmmyDoor = nil
            end
          end
        end
      end
    end
  end
  L1_2 = s070_basesanc
  L1_2 = L1_2.tEmmyDoor
  if L1_2 ~= nil then
    L1_2 = s070_basesanc
    L1_2 = L1_2.tEmmyDoor
    L2_2 = math
    L2_2 = L2_2.random
    L3_2 = table
    L3_2 = L3_2.maxn
    L4_2 = s070_basesanc
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
L3_1.HardEmmyRelocationDoor = L4_1
L3_1 = s070_basesanc
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.sName
  if L1_2 == "dooremmy_002" then
    L1_2 = s070_basesanc
    L2_2 = {}
    L3_2 = "LM_EmmyEntrancePoint_003"
    L4_2 = "LM_EmmyEntrancePoint_005"
    L2_2[1] = L3_2
    L2_2[2] = L4_2
    L1_2.tEmmyDoor = L2_2
  else
    L1_2 = A0_2.sName
    if L1_2 == "dooremmy_003" then
      L1_2 = s070_basesanc
      L2_2 = {}
      L3_2 = "LM_EmmyEntrancePoint_010"
      L4_2 = "LM_EmmyEntrancePoint_011"
      L2_2[1] = L3_2
      L2_2[2] = L4_2
      L1_2.tEmmyDoor = L2_2
    else
      L1_2 = A0_2.sName
      if L1_2 == "dooremmy_004" then
        L1_2 = s070_basesanc
        L2_2 = {}
        L3_2 = "LM_EmmyEntrancePoint_008"
        L4_2 = "LM_EmmyEntrancePoint_009"
        L2_2[1] = L3_2
        L2_2[2] = L4_2
        L1_2.tEmmyDoor = L2_2
      else
        L1_2 = A0_2.sName
        if L1_2 == "dooremmy_005" then
          L1_2 = s070_basesanc
          L2_2 = {}
          L3_2 = "LM_EmmyEntrancePoint_005"
          L4_2 = "LM_EmmyEntrancePoint_006"
          L5_2 = "LM_EmmyEntrancePoint_007"
          L2_2[1] = L3_2
          L2_2[2] = L4_2
          L2_2[3] = L5_2
          L1_2.tEmmyDoor = L2_2
        else
          L1_2 = A0_2.sName
          if L1_2 == "dooremmy_006" then
            L1_2 = s070_basesanc
            L2_2 = {}
            L3_2 = "LM_EmmyEntrancePoint_012"
            L4_2 = "LM_EmmyEntrancePoint_013"
            L5_2 = "LM_EmmyEntrancePoint_014"
            L2_2[1] = L3_2
            L2_2[2] = L4_2
            L2_2[3] = L5_2
            L1_2.tEmmyDoor = L2_2
          else
            L1_2 = A0_2.sName
            if L1_2 == "dooremmy_008" then
              L1_2 = s070_basesanc
              L2_2 = {}
              L3_2 = "LM_EmmyEntrancePoint_017"
              L4_2 = "LM_EmmyEntrancePoint_014"
              L2_2[1] = L3_2
              L2_2[2] = L4_2
              L1_2.tEmmyDoor = L2_2
            else
              L1_2 = s070_basesanc
              L1_2.tEmmyDoor = nil
            end
          end
        end
      end
    end
  end
  L1_2 = s070_basesanc
  L1_2 = L1_2.tEmmyDoor
  if L1_2 ~= nil then
    L1_2 = s070_basesanc
    L1_2 = L1_2.tEmmyDoor
    L2_2 = math
    L2_2 = L2_2.random
    L3_2 = table
    L3_2 = L3_2.maxn
    L4_2 = s070_basesanc
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
L3_1.EmmyRelocationDoor = L4_1
L3_1 = s070_basesanc
function L4_1()
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
      L0_2 = Game
      L0_2 = L0_2.GetActor
      L1_2 = "LM_EmmyLocation_Phase2"
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
  end
end
L3_1.OnEnter_EmmyRelocated_Phase2 = L4_1
L3_1 = s070_basesanc
L3_1.bFootStepPlatform000Opened = true
L3_1 = s070_basesanc
L3_1.bFootStepPlatform001Opened = true
L3_1 = s070_basesanc
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = s070_basesanc
  L1_2 = L1_2.bFootStepPlatform000Opened
  L1_2 = L1_2 == false
  L2_2 = A0_2.sName
  if L2_2 == "footstepplatform_000" then
    L2_2 = s070_basesanc
    L2_2.bFootStepPlatform000Opened = true
  else
    L2_2 = A0_2.sName
    if L2_2 == "footstepplatform_001" then
      L2_2 = s070_basesanc
      L2_2.bFootStepPlatform001Opened = true
    end
  end
  L2_2 = s070_basesanc
  L2_2 = L2_2.bFootStepPlatform000Opened
  L2_2 = L2_2 == false
  if L1_2 == true and L2_2 == false then
    L3_2 = CurrentScenario
    L3_2 = L3_2.oEmmyEntity
    if L3_2 ~= nil then
      L3_2 = Scenario
      L3_2 = L3_2.CheckEmmyAlive
      L4_2 = CurrentScenario
      L4_2 = L4_2.oEmmyEntity
      L3_2 = L3_2(L4_2)
      if L3_2 then
        L3_2 = CurrentScenario
        L3_2 = L3_2.oEmmyEntity
        L3_2 = L3_2.AI
        L4_2 = L3_2
        L3_2 = L3_2.StopSancShutterPerceptionModifier
        L3_2(L4_2)
      end
    end
  end
end
L3_1.OnShutterOpened = L4_1
L3_1 = s070_basesanc
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.sName
  if L1_2 == "footstepplatform_000" then
    L1_2 = s070_basesanc
    L1_2.bFootStepPlatform000Opened = false
  else
    L1_2 = A0_2.sName
    if L1_2 == "footstepplatform_001" then
      L1_2 = s070_basesanc
      L1_2.bFootStepPlatform001Opened = false
    end
  end
  L1_2 = s070_basesanc
  L1_2 = L1_2.bFootStepPlatform000Opened
  L1_2 = L1_2 == false
  if L1_2 then
    L2_2 = CurrentScenario
    L2_2 = L2_2.oEmmyEntity
    if L2_2 ~= nil then
      L2_2 = Scenario
      L2_2 = L2_2.CheckEmmyAlive
      L3_2 = CurrentScenario
      L3_2 = L3_2.oEmmyEntity
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L2_2 = CurrentScenario
        L2_2 = L2_2.oEmmyEntity
        L2_2 = L2_2.AI
        L3_2 = L2_2
        L2_2 = L2_2.StartSancShutterPerceptionModifier
        L4_2 = "LS_EmmyTrap"
        L5_2 = "LM_EmmyTrap"
        L2_2(L3_2, L4_2, L5_2)
      end
    end
  end
end
L3_1.OnShutterClosed = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "TG_EmmyZipline004Behavior"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L0_2.bEnabled = true
  end
end
L3_1.OnEnterEmmyZipline004Activator = L4_1
L3_1 = s070_basesanc
function L4_1()
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
    L0_2.bZipLine004Behavior = true
  end
end
L3_1.OnEnterEmmyZipline004Behavior = L4_1
L3_1 = s070_basesanc
function L4_1()
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
    L0_2.bZipLine004Behavior = false
  end
end
L3_1.OnExitEmmyZipline004Behavior = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Game
  L0_2 = L0_2.SaveSnapshotToCheckpoint
  L1_2 = "Checkpoint_Pre_ChozoRobots"
  L2_2 = "Checkpoint_Pre_ChozoRobots"
  L3_2 = L2_1
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = print
  L1_2 = "guardo snapshot"
  L0_2(L1_2)
end
L3_1.RobotSnapshotToCheckpoint = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = "SP_Checkpoint_TwoChozoRobots"
  L2_1 = L0_2
  L0_2 = print
  L1_2 = "actualizo startpoint:"
  L2_2 = L2_1
  L1_2 = L1_2 .. L2_2
  L0_2(L1_2)
end
L3_1.OnEnter_SnapshotRobots_BottomRight = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = "SP_Checkpoint_TwoChozoRobots_TopRight"
  L2_1 = L0_2
  L0_2 = print
  L1_2 = "actualizo startpoint:"
  L2_2 = L2_1
  L1_2 = L1_2 .. L2_2
  L0_2(L1_2)
end
L3_1.OnEnter_SnapshotRobots_TopRight = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = "SP_Checkpoint_TwoChozoRobots_BottomLeft"
  L2_1 = L0_2
  L0_2 = print
  L1_2 = "actualizo startpoint:"
  L2_2 = L2_1
  L1_2 = L1_2 .. L2_2
  L0_2(L1_2)
end
L3_1.OnEnter_SnapshotRobots_BottomLeft = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = "SP_Checkpoint_TwoChozoRobots_TopLeft"
  L2_1 = L0_2
  L0_2 = print
  L1_2 = "actualizo startpoint:"
  L2_2 = L2_1
  L1_2 = L1_2 .. L2_2
  L0_2(L1_2)
end
L3_1.OnEnter_SnapshotRobots_TopLeft = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = Blackboard
  L0_2 = L0_2.GetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MULTILOCKON"
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 ~= nil and 0 < L0_2 then
    L1_2 = Game
    L1_2 = L1_2.GetActor
    L2_2 = "SG_2ChozoRobots"
    L1_2 = L1_2(L2_2)
    if L1_2 ~= nil then
      L2_2 = print
      L3_2 = L1_2.SPAWNGROUP
      L3_2 = L3_2.iNumDeaths
      L2_2(L3_2)
      L2_2 = L1_2.SPAWNGROUP
      L2_2 = L2_2.iNumDeaths
      if 1 < L2_2 then
        L2_2 = Game
        L2_2 = L2_2.PopSetup
        L3_2 = "Post2ChozoRobots"
        L4_2 = true
        L5_2 = true
        L2_2(L3_2, L4_2, L5_2)
      else
        L2_2 = Game
        L2_2 = L2_2.PushSetup
        L3_2 = "2ChozoRobots"
        L4_2 = true
        L5_2 = true
        L2_2(L3_2, L4_2, L5_2)
      end
    end
  end
end
L3_1.CheckChozoRobots_State = L4_1
L3_1 = s070_basesanc
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = Game
  L2_2 = L2_2.GetActor
  L3_2 = "doorshutter_000"
  L2_2 = L2_2(L3_2)
  L3_2 = Game
  L3_2 = L3_2.GetActor
  L4_2 = "doorshutter_001"
  L3_2 = L3_2(L4_2)
  L4_2 = Game
  L4_2 = L4_2.GetActor
  L5_2 = "doorshutter_002"
  L4_2 = L4_2(L5_2)
  L5_2 = Game
  L5_2 = L5_2.GetActor
  L6_2 = "doorshutter_003"
  L5_2 = L5_2(L6_2)
  if L2_2 ~= nil then
    L6_2 = L2_2.LIFE
    L7_2 = L6_2
    L6_2 = L6_2.LockDoor
    L6_2(L7_2)
  end
  if L3_2 ~= nil then
    L6_2 = L3_2.LIFE
    L7_2 = L6_2
    L6_2 = L6_2.LockDoor
    L6_2(L7_2)
  end
  if L4_2 ~= nil then
    L6_2 = L4_2.LIFE
    L7_2 = L6_2
    L6_2 = L6_2.LockDoor
    L6_2(L7_2)
  end
  if L5_2 ~= nil then
    L6_2 = L5_2.LIFE
    L7_2 = L6_2
    L6_2 = L6_2.LockDoor
    L6_2(L7_2)
  end
  A0_2.bEnabled = false
end
L3_1.CloseShutter = L4_1
L3_1 = s070_basesanc
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = Game
  L2_2 = L2_2.GetActor
  L3_2 = "SG_2ChozoRobots"
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.SPAWNGROUP
    L4_2 = L3_2
    L3_2 = L3_2.EnableSpawnGroup
    L3_2(L4_2)
  end
  A0_2.bEnabled = false
end
L3_1.OnEnter_PresentationCRS = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "doorshutter_000"
  L0_2 = L0_2(L1_2)
  L1_2 = Game
  L1_2 = L1_2.GetActor
  L2_2 = "doorshutter_001"
  L1_2 = L1_2(L2_2)
  L2_2 = Game
  L2_2 = L2_2.GetActor
  L3_2 = "doorshutter_002"
  L2_2 = L2_2(L3_2)
  L3_2 = Game
  L3_2 = L3_2.GetActor
  L4_2 = "doorshutter_003"
  L3_2 = L3_2(L4_2)
  if L0_2 ~= nil then
    L4_2 = L0_2.LIFE
    L5_2 = L4_2
    L4_2 = L4_2.UnLockDoor
    L4_2(L5_2)
  end
  if L1_2 ~= nil then
    L4_2 = L1_2.LIFE
    L5_2 = L4_2
    L4_2 = L4_2.UnLockDoor
    L4_2(L5_2)
  end
  if L2_2 ~= nil then
    L4_2 = L2_2.LIFE
    L5_2 = L4_2
    L4_2 = L4_2.UnLockDoor
    L4_2(L5_2)
  end
  if L3_2 ~= nil then
    L4_2 = L3_2.LIFE
    L5_2 = L4_2
    L4_2 = L4_2.UnLockDoor
    L4_2(L5_2)
  end
end
L3_1.OpenShutter = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "SP_ChozoRobotSoldier_000_chozorobotsoldier"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = s070_basesanc
    L1_2 = L1_2.CRS_EvaluatingDirection
    L2_2 = L0_2
    L1_2(L2_2)
  end
end
L3_1.CRS_DetectingDirection = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "SP_ChozoRobotSoldier_001_chozorobotsoldier"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = s070_basesanc
    L1_2 = L1_2.CRS_EvaluatingDirection
    L2_2 = L0_2
    L1_2(L2_2)
  end
end
L3_1.CRS_DetectingDirection_B = L4_1
L3_1 = s070_basesanc
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = print
  L2_2 = "----- DETECTING DIRECTION -----"
  L1_2(L2_2)
  if A0_2 ~= nil then
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
      L4_2 = A0_2.vPos
      L2_2 = L3_2 - L4_2
    end
    L3_2 = L2_2.x
    if 0 < L3_2 then
      L3_2 = print
      L4_2 = "----- TURN RIGHT -----"
      L3_2(L4_2)
      L3_2 = A0_2.ANIMATION
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
      L3_2 = A0_2.ANIMATION
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
L3_1.CRS_EvaluatingDirection = L4_1
L3_1 = s070_basesanc
function L4_1()
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
    if L1_2 == "DIAG_ADAM_FOREST_2" then
      L2_2 = L0_2.USABLE
      L3_2 = L2_2
      L2_2 = L2_2.ActiveDialogue
      L4_2 = "DIAG_ADAM_SANC_1"
      L2_2(L3_2, L4_2)
      L2_2 = Blackboard
      L2_2 = L2_2.SetProp
      L3_2 = "GAME_PROGRESS"
      L4_2 = "ADAMDIALOGUE"
      L5_2 = "s"
      L6_2 = "DIAG_ADAM_SANC_1"
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
    else
      L2_2 = Blackboard
      L2_2 = L2_2.GetProp
      L3_2 = "s070_basesanc"
      L4_2 = "accesspoint_000:USABLE:Used"
      L2_2 = L2_2(L3_2, L4_2)
      if L2_2 ~= true then
        L3_2 = L0_2.USABLE
        L4_2 = L3_2
        L3_2 = L3_2.ActiveDialogue
        L5_2 = ""
        L3_2(L4_2, L5_2)
      end
    end
  end
end
L3_1.OnEnter_AP_08 = L4_1
L3_1 = s070_basesanc
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = Scenario
  L4_2 = L4_2.SubAreaChangeRequest
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L3_1.SubAreaChangeRequest = L4_1
L3_1 = s070_basesanc
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  L5_2 = Game
  L5_2 = L5_2.GetActor
  L6_2 = "SG_2ChozoRobots"
  L5_2 = L5_2(L6_2)
  if A0_2 == "collision_camera_005" and A1_2 == "Default" then
    L6_2 = Game
    L6_2 = L6_2.PushSetup
    L7_2 = "PostChozoRobotSoldier_Arena"
    L8_2 = true
    L9_2 = true
    L6_2(L7_2, L8_2, L9_2)
  end
  if A2_2 == "collision_camera_005" and A3_2 == "Default" then
    L6_2 = Game
    L6_2 = L6_2.PushSetup
    L7_2 = "PostChozoRobotSoldier"
    L8_2 = true
    L9_2 = true
    L6_2(L7_2, L8_2, L9_2)
  end
  if A0_2 == "collision_camera_027" and A1_2 == "PostSuperQuetzoaDead" then
    L6_2 = Game
    L6_2 = L6_2.PushSetup
    L7_2 = "PostSuperQuetzoaArena"
    L8_2 = true
    L9_2 = true
    L6_2(L7_2, L8_2, L9_2)
  end
  if A0_2 == "collision_camera_017" and A1_2 == "2ChozoRobots" and L5_2 ~= nil then
    L6_2 = print
    L7_2 = L5_2.SPAWNGROUP
    L7_2 = L7_2.iNumDeaths
    L6_2(L7_2)
    L6_2 = L5_2.SPAWNGROUP
    L6_2 = L6_2.iNumDeaths
    if 1 < L6_2 then
      L6_2 = Game
      L6_2 = L6_2.PopSetup
      L7_2 = "2ChozoRobots"
      L8_2 = true
      L9_2 = true
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = Game
      L6_2 = L6_2.PushSetup
      L7_2 = "Post2ChozoRobots"
      L8_2 = false
      L9_2 = true
      L6_2(L7_2, L8_2, L9_2)
    end
  end
end
L3_1.OnSubAreaChange = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.PushSetup
  L1_2 = "PostSuperQuetzoa"
  L2_2 = true
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
end
L3_1.ActivateGooShockers = L4_1
L3_1 = s070_basesanc
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = Game
  L2_2 = L2_2.GetActor
  L3_2 = "SG_PostSuperQuetzoa"
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.SPAWNGROUP
    L4_2 = L3_2
    L3_2 = L3_2.EnableSpawnGroup
    L3_2(L4_2)
  end
  A0_2.bEnabled = false
end
L3_1.OnEnter_PostSuperQuetzoaEnemies = L4_1
L3_1 = s070_basesanc
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = Game
  L2_2 = L2_2.GetActor
  L3_2 = "SG_PostEmmy_000"
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.SPAWNGROUP
    L4_2 = L3_2
    L3_2 = L3_2.EnableSpawnGroup
    L3_2(L4_2)
  end
  A0_2.bEnabled = false
end
L3_1.OnEnter_ActivatePostEmmyEnemies = L4_1
L3_1 = s070_basesanc
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Game
  L2_2 = L2_2.PopSetup
  L3_2 = "SP_SuperQuetzoa_CoreX_core_x_superquetzoa_Boss_Defeated"
  L4_2 = false
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = Game
  L2_2 = L2_2.PushSetup
  L3_2 = "PostSuperQuetzoaDead"
  L4_2 = true
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
end
L3_1.Post_SuperQuetzoa_Dead = L4_1
L3_1 = s070_basesanc
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Game
  L2_2 = L2_2.PushSetup
  L3_2 = "SpaceJump"
  L4_2 = true
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
end
L3_1.OnEnter_MusicChange_SpaceJump = L4_1
L3_1 = s070_basesanc
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Game
  L2_2 = L2_2.PopSetup
  L3_2 = "SpaceJump"
  L4_2 = true
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
end
L3_1.OnExit_MusicChange_SpaceJump = L4_1
L3_1 = s070_basesanc
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Game
  L2_2 = L2_2.PushSetup
  L3_2 = "SpaceJumpWater"
  L4_2 = true
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
end
L3_1.OnEnter_MusicChange_SpaceJumpWater = L4_1
L3_1 = s070_basesanc
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Game
  L2_2 = L2_2.PopSetup
  L3_2 = "SpaceJumpWater"
  L4_2 = true
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
end
L3_1.OnExit_MusicChange_SpaceJumpWater = L4_1
L3_1 = s070_basesanc
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "cutsceneplayer_40"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = Game
    L1_2 = L1_2.GetActor
    L2_2 = "cutsceneplayer_40b_part1"
    L1_2 = L1_2(L2_2)
    if L1_2 ~= nil then
      L2_2 = L0_2.CUTSCENE
      L3_2 = L2_2
      L2_2 = L2_2.QueueCutscenePlayer
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
      L2_2 = Game
      L2_2 = L2_2.GetActor
      L3_2 = "cutsceneplayer_40b_part2"
      L2_2 = L2_2(L3_2)
      if L2_2 ~= nil then
        L3_2 = L1_2.CUTSCENE
        L4_2 = L3_2
        L3_2 = L3_2.QueueCutscenePlayer
        L5_2 = L2_2
        L3_2(L4_2, L5_2)
        L3_2 = Game
        L3_2 = L3_2.GetActor
        L4_2 = "cutsceneplayer_40c"
        L3_2 = L3_2(L4_2)
        if L3_2 ~= nil then
          L4_2 = L2_2.CUTSCENE
          L5_2 = L4_2
          L4_2 = L4_2.QueueCutscenePlayer
          L6_2 = L3_2
          L4_2(L5_2, L6_2)
        end
      end
    end
  end
end
L3_1.cutsceneplayer_40_full = L4_1
