local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = s080_shipyard
function L1_1()
  local L0_2, L1_2
end
L0_1.main = L1_1
L0_1 = s080_shipyard
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.GetCurrentSubAreaId
  L0_2 = L0_2()
  if L0_2 == "collision_camera_020" then
    L0_2 = Game
    L0_2 = L0_2.GetActor
    L1_2 = "cutsceneplayer_108"
    L0_2 = L0_2(L1_2)
    if L0_2 ~= nil then
      L1_2 = L0_2.CUTSCENE
      L2_2 = L1_2
      L1_2 = L1_2.HasCutsceneBeenPlayed
      L1_2 = L1_2(L2_2)
      if L1_2 == false then
        L1_2 = Game
        L1_2 = L1_2.ResetFader
        L1_2()
        L1_2 = Game
        L1_2 = L1_2.FadeOut
        L2_2 = 0
        L1_2(L2_2)
      end
    end
  end
end
L0_1.OnLoadScenarioFinished = L1_1
L0_1 = false
L1_1 = false
L2_1 = false
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_FLOOR_SLIDE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Game
  L0_2 = L0_2.ReinitPlayerFromBlackboard
  L0_2()
  L0_2 = Game
  L0_2 = L0_2.ForceEntityIconVisible
  L1_2 = "LM_Samus_Ship"
  L0_2(L1_2)
  L0_2 = Scenario
  L0_2 = L0_2.ReadFromBlackboard
  L1_2 = Scenario
  L1_2 = L1_2.LUAPropIDs
  L1_2 = L1_2.SHIP_EMMY_METROIDNIZATION
  L2_2 = false
  L0_2 = L0_2(L1_2, L2_2)
  L0_1 = L0_2
  L0_2 = Scenario
  L0_2 = L0_2.ReadFromBlackboard
  L1_2 = Scenario
  L1_2 = L1_2.LUAPropIDs
  L1_2 = L1_2.SHIP_STRONG_REACTION
  L2_2 = false
  L0_2 = L0_2(L1_2, L2_2)
  L1_1 = L0_2
  L0_2 = Scenario
  L0_2 = L0_2.ReadFromBlackboard
  L1_2 = Scenario
  L1_2 = L1_2.LUAPropIDs
  L1_2 = L1_2.SHIP_CWXELITE_PRESENTATION
  L2_2 = false
  L0_2 = L0_2(L1_2, L2_2)
  L2_1 = L0_2
  L0_2 = Blackboard
  L0_2 = L0_2.GetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_WAVE_BEAM"
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 ~= nil and 0 < L0_2 then
    L1_2 = s080_shipyard
    L1_2 = L1_2.Activate_Setup_WaveBeamAcquired
    L1_2()
  end
end
L3_1.InitFromBlackboard = L4_1
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.PushSetup
  L1_2 = "WaveBeamAcquired"
  L2_2 = true
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
end
L3_1.Activate_Setup_WaveBeamAcquired = L4_1
L3_1 = s080_shipyard
function L4_1()
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
  L4_2 = 899
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAX_LIFE"
  L3_2 = "f"
  L4_2 = 899
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_MISSILE_MAX"
  L3_2 = "f"
  L4_2 = 84
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_MISSILE_CURRENT"
  L3_2 = "f"
  L4_2 = 84
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_SUPER_MISSILE"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_ICE_MISSILE"
  L3_2 = "f"
  L4_2 = 1
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
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_DOUBLE_JUMP"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SPACE_JUMP"
  L3_2 = "f"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_SCREW_ATTACK"
  L3_2 = "f"
  L4_2 = 1
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
  L4_2 = 1
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
  L4_2 = 1
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
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_METROIDNIZATION"
  L3_2 = "f"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
L3_1.SetupDebugGameBlackboard = L4_1
L3_1 = s080_shipyard
L4_1 = {}
L4_1.ShowDeath = true
L4_1.GoToMainMenu = false
L3_1.tGetOnDeathOverrides = L4_1
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2
  L0_2 = s080_shipyard
  L0_2 = L0_2.tGetOnDeathOverrides
  return L0_2
end
L3_1.GetOnDeathOverrides = L4_1
L3_1 = s080_shipyard
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 ~= nil then
    L2_2 = print
    L3_2 = "OnEntityGenerated!!!!!!"
    L2_2(L3_2)
  end
end
L3_1.OnEntityGenerated = L4_1
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_005_B"
  L2_2 = true
  L0_2(L1_2, L2_2)
end
L3_1.OnEnter_ChangeCamera_005_B = L4_1
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_005_B"
  L2_2 = false
  L0_2(L1_2, L2_2)
end
L3_1.OnExit_ChangeCamera_005_B = L4_1
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_006_B"
  L2_2 = true
  L0_2(L1_2, L2_2)
end
L3_1.OnEnter_ChangeCamera_006_B = L4_1
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_006_B"
  L2_2 = false
  L0_2(L1_2, L2_2)
end
L3_1.OnExit_ChangeCamera_006_B = L4_1
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.PushSetup
  L1_2 = "ChangeCamera_009_C"
  L2_2 = false
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
end
L3_1.OnEnter_ChangeCamera_009_C = L4_1
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.PopSetup
  L1_2 = "ChangeCamera_009_C"
  L2_2 = false
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
end
L3_1.OnExit_ChangeCamera_009_C = L4_1
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_009_B"
  L2_2 = true
  L0_2(L1_2, L2_2)
end
L3_1.OnEnter_ChangeCamera_009_B = L4_1
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_009_B"
  L2_2 = false
  L0_2(L1_2, L2_2)
end
L3_1.OnExit_ChangeCamera_009_B = L4_1
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_013_B"
  L2_2 = true
  L0_2(L1_2, L2_2)
end
L3_1.OnEnter_ChangeCamera_013_B = L4_1
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_013_B"
  L2_2 = false
  L0_2(L1_2, L2_2)
end
L3_1.OnExit_ChangeCamera_013_B = L4_1
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_013_C"
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "block_pbtube_2"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.LIFE
    L1_2.bWantsEnabled = true
  end
end
L3_1.OnEnter_ChangeCamera_013_C = L4_1
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_013_C"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "block_pbtube_2"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.LIFE
    L1_2.bWantsEnabled = false
  end
end
L3_1.OnExit_ChangeCamera_013_C = L4_1
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_014_B"
  L2_2 = true
  L0_2(L1_2, L2_2)
end
L3_1.OnEnter_ChangeCamera_014_B = L4_1
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_014_B"
  L2_2 = false
  L0_2(L1_2, L2_2)
end
L3_1.OnExit_ChangeCamera_014_B = L4_1
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Game
  L0_2 = L0_2.GetPlayer
  L0_2 = L0_2()
  L0_2 = L0_2.INVENTORY
  L1_2 = L0_2
  L0_2 = L0_2.SetItemAmount
  L2_2 = "ITEM_METROIDNIZATION"
  L3_2 = 1
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
L3_1.OnEndStrongReactionEvent = L4_1
L3_1 = s080_shipyard
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2.bEnabled = false
  L2_2 = Game
  L2_2 = L2_2.AddSF
  L3_2 = 1
  L4_2 = "s080_shipyard.DelayedPowerBombObtained"
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
    L7_2 = "OnEnter_trigger_PowerBombObtained"
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end
L3_1.OnEnter_trigger_PowerBombObtained = L4_1
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = GUI
  L0_2 = L0_2.ShowMessage
  L1_2 = "#CUT_POWER_BOMB"
  L2_2 = true
  L3_2 = "s080_shipyard.PowerBombObtainedMessageSkipped"
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
    L5_2 = "OnEnter_trigger_PowerBombObtained"
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L3_1.DelayedPowerBombObtained = L4_1
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2
  L0_2 = GUI
  L0_2 = L0_2.AddEmmyMissionLogEntry
  L1_2 = "#MLOG_ENCOUNTER_EMMY_SHIP"
  L0_2(L1_2)
end
L3_1.On0071Started = L4_1
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = GUI
  L0_2 = L0_2.WriteEmmyDeathToBlackboard
  L0_2()
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "SG_CWX"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.SPAWNGROUP
    L2_2 = L1_2
    L1_2 = L1_2.EnableSpawnGroup
    L1_2(L2_2)
  end
  L1_2 = Game
  L1_2 = L1_2.GetEntityFromSpawnPoint
  L2_2 = "SP_Emmy"
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L1_2.bEnabled = false
  end
  L2_2 = Game
  L2_2 = L2_2.GetActor
  L3_2 = "PRP_EmmyShipyard"
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L2_2.bEnabled = true
  end
  L3_2 = Game
  L3_2 = L3_2.GetActor
  L4_2 = "emmyvalve_reg_gen_000"
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L4_2 = L3_2.EMMYVALVE
    L5_2 = L4_2
    L4_2 = L4_2.SetState
    L6_2 = false
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = Game
  L4_2 = L4_2.GetActor
  L5_2 = "emmyvalve_reg_gen_001"
  L4_2 = L4_2(L5_2)
  if L4_2 ~= nil then
    L5_2 = L4_2.EMMYVALVE
    L6_2 = L5_2
    L5_2 = L5_2.SetState
    L7_2 = false
    L8_2 = true
    L5_2(L6_2, L7_2, L8_2)
  end
end
L3_1.OnChozoWarriorActivated = L4_1
L3_1 = s080_shipyard
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A1_2 == "SP_CWX_Phase2" then
    L3_2 = Game
    L3_2 = L3_2.GetActor
    L4_2 = "PRP_EmmyShipyard"
    L3_2 = L3_2(L4_2)
    if L3_2 ~= nil then
      L3_2.bEnabled = false
    end
    L4_2 = Game
    L4_2 = L4_2.StopMusic
    L5_2 = true
    L4_2(L5_2)
    L4_2 = Game
    L4_2 = L4_2.GetEntityFromSpawnPoint
    L5_2 = "SP_Emmy"
    L4_2 = L4_2(L5_2)
    if L4_2 ~= nil then
      L4_2.bEnabled = true
    end
    L5_2 = Game
    L5_2 = L5_2.KillEmmy
    L5_2()
  end
end
L3_1.OnChozoWarriorXKilled = L4_1
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.AddSF
  L1_2 = 0.8
  L2_2 = "s080_shipyard.OpenEmmyValves"
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
end
L3_1.OnEmmyShipyardAbilityObtained = L4_1
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "emmyvalve_reg_gen_000"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.EMMYVALVE
    L2_2 = L1_2
    L1_2 = L1_2.CleanForceStateFlag
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = Game
  L1_2 = L1_2.GetActor
  L2_2 = "emmyvalve_reg_gen_001"
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.EMMYVALVE
    L3_2 = L2_2
    L2_2 = L2_2.CleanForceStateFlag
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L2_2 = Game
  L2_2 = L2_2.GetActor
  L3_2 = "PRP_CUDeactivated"
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L2_2.bEnabled = true
  end
  L3_2 = Game
  L3_2 = L3_2.SaveGame
  L4_2 = "checkpoint"
  L5_2 = "ChozoWarriorX_Dead"
  L6_2 = "SP_Checkpoint_Dead_ChozoWarriorX"
  L7_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L3_1.OpenEmmyValves = L4_1
L3_1 = s080_shipyard
function L4_1(A0_2)
  local L1_2
end
L3_1.OnGiveInventoryItemOnDead = L4_1
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.PushSetup
  L1_2 = "PostEmmy"
  L2_2 = true
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
end
L3_1.ChangeSetup_PostEmmy = L4_1
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = Game
  L0_2 = L0_2.GetPlayer
  L0_2 = L0_2()
  if L0_2 ~= nil then
    L1_2 = L0_2.INVENTORY
    L2_2 = L1_2
    L1_2 = L1_2.SetItemAmount
    L3_2 = "ITEM_WEAPON_HYPER_BEAM"
    L4_2 = 1
    L5_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L3_1.ObtainHyperBeam = L4_1
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.PushSetup
  L1_2 = "Escape_Sequence"
  L2_2 = true
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = Game
  L0_2 = L0_2.AddSF
  L1_2 = 0.5
  L2_2 = "s080_shipyard.InitEscapeSequence"
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
end
L3_1.OnEnterEscapeSequence = L4_1
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "ev_evacuation"
  L0_2 = L0_2(L1_2)
  L1_2 = print
  L2_2 = "search ev_evacuation"
  L1_2(L2_2)
  if L0_2 ~= nil then
    L1_2 = print
    L2_2 = "Launch Event Evacuation"
    L1_2(L2_2)
    L1_2 = L0_2.EVENTPROP
    L2_2 = L1_2
    L1_2 = L1_2.LaunchEvent
    L1_2(L2_2)
    L1_2 = Game
    L1_2 = L1_2.SaveGame
    L2_2 = "checkpoint"
    L3_2 = "Escape_Sequence"
    L4_2 = "SP_Checkpoint_Escape"
    L5_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L3_1.InitEscapeSequence = L4_1
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "escape_explosion_path_01"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L2_2 = L0_2
    L1_2 = L0_2.StartTimeline
    L3_2 = "explosion_01"
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
  end
end
L3_1.EscapeSquence_Drop_01 = L4_1
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "escape_explosion_path_02"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L2_2 = L0_2
    L1_2 = L0_2.StartTimeline
    L3_2 = "explosion_03"
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
  end
end
L3_1.EscapeSquence_Drop_02 = L4_1
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "escape_explosion_path_03"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L2_2 = L0_2
    L1_2 = L0_2.StartTimeline
    L3_2 = "explosion_02"
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
  end
end
L3_1.EscapeSquence_Drop_03 = L4_1
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "mapev_atriumdebris"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L2_2 = L0_2
    L1_2 = L0_2.StartTimeline
    L3_2 = "explosion_01"
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = Game
  L1_2 = L1_2.GetActor
  L2_2 = "escape_glass_01"
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.ANIMATION
    L3_2 = L2_2
    L2_2 = L2_2.SetAction
    L4_2 = "relax"
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = Game
  L2_2 = L2_2.GetActor
  L3_2 = "escape_glass_02"
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.ANIMATION
    L4_2 = L3_2
    L3_2 = L3_2.SetAction
    L5_2 = "relax"
    L6_2 = true
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = Game
  L3_2 = L3_2.GetActor
  L4_2 = "escpe_glass_03"
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L4_2 = L3_2.ANIMATION
    L5_2 = L4_2
    L4_2 = L4_2.SetAction
    L6_2 = "relax"
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
  end
end
L3_1.EscapeSquence_Drop_04 = L4_1
L3_1 = s080_shipyard
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2.bEnabled = false
  L2_2 = Game
  L2_2 = L2_2.GetActor
  L3_2 = "ev_evacuation"
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.EVENTPROP
    L4_2 = L3_2
    L3_2 = L3_2.StopCountDown
    L3_2(L4_2)
  end
  L3_2 = GUI
  L3_2 = L3_2.HideEscapeCounter
  L3_2()
  L3_2 = Game
  L3_2 = L3_2.GetActor
  L4_2 = "cutsceneplayer_112"
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L4_2 = L3_2.CUTSCENE
    L5_2 = L4_2
    L4_2 = L4_2.LaunchCutsceneImmediate
    L4_2(L5_2)
  end
end
L3_1.OnEnter_trigger_EndGame = L4_1
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.GameCleared
  L0_2()
end
L3_1.OnEnter_EndGame = L4_1
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
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
    if L1_2 == "DIAG_ADAM_CAVE_4" or L1_2 == "DIAG_ADAM_AQUA_3" then
      L2_2 = L0_2.USABLE
      L3_2 = L2_2
      L2_2 = L2_2.ActiveDialogue
      L4_2 = "DIAG_ADAM_SHIP_1"
      L2_2(L3_2, L4_2)
      L2_2 = Blackboard
      L2_2 = L2_2.SetProp
      L3_2 = "GAME_PROGRESS"
      L4_2 = "ADAMDIALOGUE"
      L5_2 = "s"
      L6_2 = "DIAG_ADAM_SHIP_1"
      L2_2(L3_2, L4_2, L5_2, L6_2)
    elseif L1_2 == "DIAG_ADAM_SHIP_1" then
      L2_2 = L1_1
      if L2_2 then
        L2_2 = L0_2.USABLE
        L3_2 = L2_2
        L2_2 = L2_2.ActiveDialogue
        L4_2 = "DIAG_ADAM_SHIP_2"
        L2_2(L3_2, L4_2)
        L2_2 = Blackboard
        L2_2 = L2_2.SetProp
        L3_2 = "GAME_PROGRESS"
        L4_2 = "ADAMDIALOGUE"
        L5_2 = "s"
        L6_2 = "DIAG_ADAM_SHIP_2"
        L2_2(L3_2, L4_2, L5_2, L6_2)
      end
    end
  end
end
L3_1.OnEnter_AP_10 = L4_1
L3_1 = s080_shipyard
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
L3_1 = s080_shipyard
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2
  if A0_2 == "collision_camera_011" and A2_2 == "collision_camera_014" then
    L5_2 = L0_1
    if L5_2 == false then
      L5_2 = s080_shipyard
      L5_2 = L5_2.ClosePowerBombDoor
      L5_2()
  end
  else
    if A0_2 == "collision_camera_009" and A2_2 == "collision_camera_010" then
      L5_2 = L1_1
      if L5_2 == false then
        L5_2 = s080_shipyard
        L5_2 = L5_2.OnBegin_Cutscene_12
        L5_2()
    end
    else
      if A0_2 == "collision_camera_006" and A2_2 == "collision_camera_005" then
        L5_2 = L2_1
        if L5_2 == false then
          L5_2 = s080_shipyard
          L5_2 = L5_2.OnBegin_Cutscene_71
          L5_2()
      end
      elseif A0_2 == "collision_camera_000" and A2_2 == "collision_camera_016" then
        L5_2 = Game
        L5_2 = L5_2.StopMusic
        L6_2 = true
        L5_2(L6_2)
      end
    end
  end
end
L3_1.OnSubAreaChange = L4_1
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "doorpowerclosed_001"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.LIFE
    L2_2 = L1_2
    L1_2 = L1_2.CanBeClosedSafely
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = Game
      L1_2 = L1_2.GetActor
      L2_2 = "doorpowerclosed_001"
      L1_2 = L1_2(L2_2)
      L1_2 = L1_2.LIFE
      L2_2 = L1_2
      L1_2 = L1_2.CloseDoor
      L3_2 = false
      L4_2 = true
      L5_2 = false
      L1_2(L2_2, L3_2, L4_2, L5_2)
      L1_2 = Game
      L1_2 = L1_2.GetEntityFromSpawnPoint
      L2_2 = "SP_Emmy"
      L1_2 = L1_2(L2_2)
      if L1_2 ~= nil then
        L1_2.bEnabled = true
      end
  end
  else
    L1_2 = Game
    L1_2 = L1_2.AddSF
    L2_2 = 0
    L3_2 = "s080_shipyard.ClosePowerBombDoor"
    L4_2 = ""
    L1_2(L2_2, L3_2, L4_2)
  end
end
L3_1.ClosePowerBombDoor = L4_1
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.AddSF
  L1_2 = 1.3
  L2_2 = "s080_shipyard.OnEmmyShipyardLaunchFade"
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
end
L3_1.OnEmmyShipyardTargetDetected = L4_1
L3_1 = s080_shipyard
L3_1.fEmmyShipyardFadeOutTime = 0.25
L3_1 = s080_shipyard
L3_1.fEmmyShipyardFadeTime = 0.5
L3_1 = s080_shipyard
L3_1.fEmmyShipyardInTime = 0.25
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "PRP_CUDeactivated"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L0_2.bEnabled = false
  end
  L1_2 = Game
  L1_2 = L1_2.GetActor
  L2_2 = "block_cut43"
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.TIMELINECOMPONENT
    L3_2 = L2_2
    L2_2 = L2_2.StartAction
    L4_2 = "powerbombexplosion"
    L5_2 = -1
    L6_2 = false
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end
L3_1.OnEmmyShipyardLaunchFade = L4_1
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Game
  L0_2 = L0_2.SetSendReports
  L1_2 = false
  L0_2(L1_2)
  L0_2 = Game
  L0_2 = L0_2.GetPlayer
  L0_2 = L0_2()
  L0_2 = L0_2.INVENTORY
  L1_2 = L0_2
  L0_2 = L0_2.SetItemAmount
  L2_2 = "ITEM_HYPER_SUIT"
  L3_2 = 0
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Game
  L0_2 = L0_2.GetPlayer
  L0_2 = L0_2()
  L0_2 = L0_2.INVENTORY
  L1_2 = L0_2
  L0_2 = L0_2.SetItemAmount
  L2_2 = "ITEM_WEAPON_HYPER_BEAM"
  L3_2 = 0
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Game
  L0_2 = L0_2.GetPlayer
  L0_2 = L0_2()
  L0_2 = L0_2.INVENTORY
  L1_2 = L0_2
  L0_2 = L0_2.SetItemAmount
  L2_2 = "ITEM_WEAPON_WAVE_BEAM"
  L3_2 = 1
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Game
  L0_2 = L0_2.SetSendReports
  L1_2 = true
  L0_2(L1_2)
end
L3_1.RemoveSamusHyperSuit = L4_1
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "cutsceneplayer_43"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.CUTSCENE
    L2_2 = L1_2
    L1_2 = L1_2.TryLaunchCutscene
    L1_2(L2_2)
  end
  L1_2 = Game
  L1_2 = L1_2.GetActor
  L2_2 = "centralunitmagmacontroller_000"
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.CENTRALUNIT
    L3_2 = L2_2
    L2_2 = L2_2.ForceEmmyDeadState
    L2_2(L3_2)
  end
  L2_2 = Scenario
  L2_2 = L2_2.WriteToBlackboard
  L3_2 = Scenario
  L3_2 = L3_2.LUAPropIDs
  L3_2 = L3_2.SHIP_EMMY_METROIDNIZATION
  L4_2 = "b"
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = true
  L0_1 = L2_2
  L2_2 = Game
  L2_2 = L2_2.GetActor
  L3_2 = "block_cut43"
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.LIFE
    L4_2 = L3_2
    L3_2 = L3_2.ForceDead
    L5_2 = false
    L6_2 = true
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = Game
  L3_2 = L3_2.GetEntityFromSpawnPoint
  L4_2 = "SP_Emmy"
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L4_2 = L3_2.ANIMATION
    L5_2 = L4_2
    L4_2 = L4_2.SetAction
    L6_2 = "dead_shipyard"
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
  end
end
L3_1.OnBegin_Cutscene_43 = L4_1
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "cutsceneplayer_12"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.CUTSCENE
    L2_2 = L1_2
    L1_2 = L1_2.TryLaunchCutscene
    L1_2(L2_2)
  end
  L1_2 = Scenario
  L1_2 = L1_2.WriteToBlackboard
  L2_2 = Scenario
  L2_2 = L2_2.LUAPropIDs
  L2_2 = L2_2.SHIP_STRONG_REACTION
  L3_2 = "b"
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = true
  L1_1 = L1_2
end
L3_1.OnBegin_Cutscene_12 = L4_1
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "cutsceneplayer_71"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.CUTSCENE
    L2_2 = L1_2
    L1_2 = L1_2.TryLaunchCutscene
    L1_2(L2_2)
  end
  L1_2 = Scenario
  L1_2 = L1_2.WriteToBlackboard
  L2_2 = Scenario
  L2_2 = L2_2.LUAPropIDs
  L2_2 = L2_2.SHIP_CWXELITE_PRESENTATION
  L3_2 = "b"
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = true
  L2_1 = L1_2
end
L3_1.OnBegin_Cutscene_71 = L4_1
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.PlayCameraFXPreset
  L1_2 = "QUEEN_SHAKING_JUMP"
  L0_2(L1_2)
  L0_2 = Game
  L0_2 = L0_2.PlayPresetSound
  L1_2 = "events/chainreaction_bigexplosion"
  L0_2(L1_2)
end
L3_1.AtriumBridgeEvent = L4_1
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = print
  L1_2 = "ACTIVATED POST CHOZO WARRIOR EVENT SETUP"
  L0_2(L1_2)
  L0_2 = Game
  L0_2 = L0_2.PushSetup
  L1_2 = "PostChozoWarriorEvent"
  L2_2 = true
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
end
L3_1.Activate_SG_PostWarrior = L4_1
L3_1 = s080_shipyard
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = Game
  L2_2 = L2_2.GetActor
  L3_2 = "SG_Sharpaw_000"
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.SPAWNGROUP
    L4_2 = L3_2
    L3_2 = L3_2.EnableSpawnGroup
    L3_2(L4_2)
  end
  A0_2.bEnabled = false
end
L3_1.OnEnter_ActivateArenaEnemies = L4_1
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "centralunitmagmacontroller_000"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.CENTRALUNIT
    L2_2 = L1_2
    L1_2 = L1_2.AllowAlarm
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L3_1.StopCUAlarm = L4_1
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "ev_shi_ray02_004"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L0_2.bEnabled = true
  end
  L1_2 = Game
  L1_2 = L1_2.GetActor
  L2_2 = "ev_shi_rayimpact01_000"
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L1_2.bEnabled = true
  end
end
L3_1.LightningEntitiesEnable = L4_1
L3_1 = s080_shipyard
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "ev_shi_ray02_004"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L0_2.bEnabled = false
  end
  L1_2 = Game
  L1_2 = L1_2.GetActor
  L2_2 = "ev_shi_rayimpact01_000"
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L1_2.bEnabled = false
  end
end
L3_1.LightningEntitiesDisable = L4_1
