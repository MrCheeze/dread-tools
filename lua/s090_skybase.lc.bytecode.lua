local L0_1, L1_1
L0_1 = s090_skybase
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "GAME_PROGRESS"
  L2_2 = "TeleportWorldUnlocked"
  L3_2 = "b"
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
L0_1.main = L1_1
L0_1 = s090_skybase
function L1_1()
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
  L0_2 = L0_2.PopSetup
  L1_2 = "ChangeCamera_002_Distance"
  L2_2 = true
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
end
L0_1.InitFromBlackboard = L1_1
L0_1 = s090_skybase
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
  L4_2 = 999
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAX_LIFE"
  L3_2 = "f"
  L4_2 = 999
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
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB_MAX"
  L3_2 = "f"
  L4_2 = 3
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_POWER_BOMB_CURRENT"
  L3_2 = "f"
  L4_2 = 3
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
  L4_2 = 1
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
L0_1.SetupDebugGameBlackboard = L1_1
L0_1 = s090_skybase
L1_1 = {}
L1_1.ShowDeath = true
L1_1.GoToMainMenu = false
L0_1.tGetOnDeathOverrides = L1_1
L0_1 = s090_skybase
function L1_1()
  local L0_2, L1_2
  L0_2 = s090_skybase
  L0_2 = L0_2.tGetOnDeathOverrides
  return L0_2
end
L0_1.GetOnDeathOverrides = L1_1
L0_1 = s090_skybase
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 ~= nil then
    L2_2 = print
    L3_2 = "OnEntityGenerated!!!!!!"
    L2_2(L3_2)
  end
end
L0_1.OnEntityGenerated = L1_1
L0_1 = s090_skybase
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.AddSF
  L1_2 = 0.5
  L2_2 = "s090_skybase.CommanderCutscenePresentation"
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
end
L0_1.OnComanderElevatorFinished = L1_1
L0_1 = s090_skybase
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "cutsceneplayer_86"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.CUTSCENE
    L2_2 = L1_2
    L1_2 = L1_2.TryLaunchCutscene
    L1_2(L2_2)
  end
end
L0_1.CommanderCutscenePresentation = L1_1
L0_1 = s090_skybase
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = GUI
  L0_2 = L0_2.ShowMessage
  L1_2 = "#COMMANDER_CUTSCENE_ACCESSPOINT_REVEAL"
  L2_2 = true
  L3_2 = "s090_skybase.OnComanderElevatorFinished_MessageSkipped"
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
    L5_2 = "OnComanderElevatorFinished"
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L0_1.Delayed_OnComanderElevatorFinished = L1_1
L0_1 = s090_skybase
function L1_1()
  local L0_2, L1_2
end
L0_1.OnComanderElevatorFinished_MessageSkipped = L1_1
L0_1 = s090_skybase
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "SG_ChozoCommander"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.SPAWNGROUP
    L2_2 = L1_2
    L1_2 = L1_2.EnableSpawnGroup
    L1_2(L2_2)
  end
end
L0_1.ActivateCommanderSpawnGroup = L1_1
L0_1 = s090_skybase
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.StopMusicStream
  L1_2 = 0
  L2_2 = 1
  L3_2 = 3
  L0_2(L1_2, L2_2, L3_2)
end
L0_1.FadeOutCommanderMusic1 = L1_1
L0_1 = s090_skybase
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.StopMusicStream
  L1_2 = 1
  L2_2 = 1
  L3_2 = 3
  L0_2(L1_2, L2_2, L3_2)
end
L0_1.FadeOutCommanderMusic2 = L1_1
L0_1 = s090_skybase
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = Scenario
  L4_2 = L4_2.SubAreaChangeRequest
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1.SubAreaChangeRequest = L1_1
L0_1 = s090_skybase
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
end
L0_1.OnSubAreaChange = L1_1
L0_1 = s090_skybase
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.PushSetup
  L1_2 = "ChangeCamera_002_Distance"
  L2_2 = true
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
end
L0_1.OnEnter_ChangeCamera_002_Near = L1_1
L0_1 = s090_skybase
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.PopSetup
  L1_2 = "ChangeCamera_002_Distance"
  L2_2 = true
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
end
L0_1.OnEnter_ChangeCamera_002_Far = L1_1
L0_1 = s090_skybase
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.GetCamera
  L0_2 = L0_2()
  L0_2 = L0_2.CAMERA
  L1_2 = L0_2
  L0_2 = L0_2.SetLogicCameraParams
  L2_2 = "CAM_Near"
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
end
L0_1.OnEnter_ChangeInterp = L1_1
L0_1 = s090_skybase
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.GetCamera
  L0_2 = L0_2()
  L0_2 = L0_2.CAMERA
  L1_2 = L0_2
  L0_2 = L0_2.SetLogicCameraParams
  L2_2 = "CAM_Default"
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
end
L0_1.OnExit_ChangeInterp = L1_1
L0_1 = s090_skybase
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Game
  L0_2 = L0_2.GetPlayer
  L0_2 = L0_2()
  L0_2 = L0_2.INVENTORY
  L1_2 = L0_2
  L0_2 = L0_2.SetItemAmount
  L2_2 = "ITEM_HYPER_SUIT"
  L3_2 = 1
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Game
  L0_2 = L0_2.GetPlayer
  L0_2 = L0_2()
  L0_2 = L0_2.INVENTORY
  L1_2 = L0_2
  L0_2 = L0_2.SetItemAmount
  L2_2 = "ITEM_WEAPON_HYPER_BEAM"
  L3_2 = 1
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Game
  L0_2 = L0_2.GetPlayer
  L0_2 = L0_2()
  L0_2 = L0_2.LIFE
  L1_2 = L0_2
  L0_2 = L0_2.StopLifeAlarmSFX
  L0_2(L1_2)
  L0_2 = Game
  L0_2 = L0_2.GetPlayer
  L0_2 = L0_2()
  L0_2 = L0_2.MODELUPDATER
  L0_2.sModelAlias = "Hyper"
end
L0_1.ObtainHyperSuit = L1_1
L0_1 = s090_skybase
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "cutsceneplayer_101"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = Game
    L1_2 = L1_2.GetActor
    L2_2 = "cutsceneplayer_101_left"
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
L0_1.cutsceneplayer_101_left = L1_1
L0_1 = s090_skybase
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "cutsceneplayer_101"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = Game
    L1_2 = L1_2.GetActor
    L2_2 = "cutsceneplayer_101_right"
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
L0_1.cutsceneplayer_101_right = L1_1
L0_1 = s090_skybase
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = Game
  L0_2 = L0_2.GetPlayer
  L0_2 = L0_2()
  if L0_2 ~= nil then
    L1_2 = L0_2.INVENTORY
    if L1_2 ~= nil then
      L3_2 = L1_2
      L2_2 = L1_2.SetItemAmount
      L4_2 = "ITEM_HYPER_SUIT"
      L5_2 = 1
      L6_2 = true
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
    L2_2 = L0_2.MODELUPDATER
    if L2_2 ~= nil then
      L2_2.sModelAlias = "Hyper"
      L3_2 = L2_2.ForceUpdate
      L3_2()
    end
    L3_2 = Game
    L3_2 = L3_2.LoadScenario
    L4_2 = "c10_samus"
    L5_2 = "s080_shipyard"
    L6_2 = "SP_Checkpoint_CommanderX"
    L7_2 = ""
    L8_2 = 1
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L3_2 = Game
    L3_2 = L3_2.PlayCutsceneOnScenarioLoaded
    L4_2 = "cutsceneplayer_108"
    L5_2 = true
    L6_2 = true
    L7_2 = true
    L8_2 = false
    L9_2 = false
    L10_2 = ""
    L11_2 = ""
    L12_2 = 0
    L13_2 = 0
    L14_2 = 0
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  end
end
L0_1.cutsceneplayer_108_end = L1_1
