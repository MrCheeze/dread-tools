local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1
L0_1 = s010_cave
function L1_1()
  local L0_2, L1_2
  L0_2 = s010_cave
  L0_2 = L0_2.PatrolRoutesGeneration
  L0_2()
  L0_2 = s010_cave
  L0_2 = L0_2.PatrolRoutesFinalNodesAssignation
  L0_2()
end
L0_1.main = L1_1
L0_1 = s010_cave
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
  L4_2 = 99
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_MAX_LIFE"
  L3_2 = "f"
  L4_2 = 99
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_MISSILE_MAX"
  L3_2 = "f"
  L4_2 = 10
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Blackboard
  L0_2 = L0_2.SetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_WEAPON_MISSILE_CURRENT"
  L3_2 = "f"
  L4_2 = 10
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
  L4_2 = 0
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
  L4_2 = 0
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
  L4_2 = 0
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
L4_1 = false
L5_1 = false
L6_1 = false
L7_1 = false
L8_1 = false
L9_1 = false
L10_1 = false
L11_1 = false
L12_1 = ""
L13_1 = false
L14_1 = false
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2
  L0_2 = L2_1
  if not L0_2 then
    L0_2 = Game
    L0_2 = L0_2.ResetFader
    L0_2()
    L0_2 = Game
    L0_2 = L0_2.FadeOut
    L1_2 = 0
    L0_2(L1_2)
  end
end
L15_1.OnLoadScenarioFinished = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.ReinitPlayerFromBlackboard
  L0_2()
  L0_2 = CurrentScenario
  L0_2 = L0_2.oEmmyProtoEntity
  if L0_2 ~= nil then
    L0_2 = print
    L1_2 = "ProtoEmmyAntiguo presente"
    L0_2(L1_2)
  end
  L0_2 = s010_cave
  L0_2 = L0_2.Event_WaterPoolInfiltration_Deactivate
  L0_2()
  L0_2 = Scenario
  L0_2 = L0_2.ReadFromBlackboard
  L1_2 = Scenario
  L1_2 = L1_2.LUAPropIDs
  L1_2 = L1_2.CAVES_GAME_INTRO
  L2_2 = false
  L0_2 = L0_2(L1_2, L2_2)
  L2_1 = L0_2
  L0_2 = Scenario
  L0_2 = L0_2.ReadFromBlackboard
  L1_2 = Scenario
  L1_2 = L1_2.LUAPropIDs
  L1_2 = L1_2.CAVES_EMMY_SPAWNED
  L2_2 = false
  L0_2 = L0_2(L1_2, L2_2)
  L3_1 = L0_2
  L0_2 = Scenario
  L0_2 = L0_2.ReadFromBlackboard
  L1_2 = Scenario
  L1_2 = L1_2.LUAPropIDs
  L1_2 = L1_2.CAVES_CENTRAL_UNIT_WAKE_UP_CUTSCENE_LAUNCHED
  L2_2 = false
  L0_2 = L0_2(L1_2, L2_2)
  L4_1 = L0_2
  L0_2 = Scenario
  L0_2 = L0_2.ReadFromBlackboard
  L1_2 = Scenario
  L1_2 = L1_2.LUAPropIDs
  L1_2 = L1_2.CAVES_COOLDOWN_APPLIED
  L2_2 = false
  L0_2 = L0_2(L1_2, L2_2)
  L5_1 = L0_2
  L0_2 = Scenario
  L0_2 = L0_2.ReadFromBlackboard
  L1_2 = Scenario
  L1_2 = L1_2.LUAPropIDs
  L1_2 = L1_2.CAVES_POSTXRELEASE_APPLIED
  L2_2 = false
  L0_2 = L0_2(L1_2, L2_2)
  L6_1 = L0_2
  L0_2 = Scenario
  L0_2 = L0_2.ReadFromBlackboard
  L1_2 = Scenario
  L1_2 = L1_2.LUAPropIDs
  L1_2 = L1_2.CAVES_TUTO_MAP_DONE
  L2_2 = false
  L0_2 = L0_2(L1_2, L2_2)
  L13_1 = L0_2
  L0_2 = Scenario
  L0_2 = L0_2.ReadFromBlackboard
  L1_2 = Scenario
  L1_2 = L1_2.LUAPropIDs
  L1_2 = L1_2.CAVES_TUTO_MAP_ROOM_DONE
  L2_2 = false
  L0_2 = L0_2(L1_2, L2_2)
  L14_1 = L0_2
  L0_2 = Blackboard
  L0_2 = L0_2.GetProp
  L1_2 = "GAME_PROGRESS"
  L2_2 = "QUARENTINE_OPENED"
  L0_2 = L0_2(L1_2, L2_2)
  L0_1 = L0_2
  L0_2 = s010_cave
  L0_2 = L0_2.CheckScorpiusDead
  L0_2()
  L0_2 = Game
  L0_2 = L0_2.GetFromGameBlackboardSection
  L1_2 = "PlayedCutscenes"
  L2_2 = "CutScenePlayed[cutscenes/0049centralunitdetectsamus01/0049centralunitdetectsamus01.bmscu]"
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 == 0 then
    L0_2 = Game
    L0_2 = L0_2.GetActor
    L1_2 = "DoorEmmy11"
    L0_2 = L0_2(L1_2)
    if L0_2 ~= nil then
      L1_2 = L0_2.STARTPOINT
      L2_2 = L1_2
      L1_2 = L1_2.SetSaveGameToCheckpoint
      L3_2 = false
      L1_2(L2_2, L3_2)
    end
  end
  L0_2 = L0_1
  if L0_2 == true then
    L0_2 = s010_cave
    L0_2 = L0_2.Activate_Setup_PostXRelease
    L0_2()
  end
  L0_2 = Game
  L0_2 = L0_2.GetCooldownFlag
  L0_2 = L0_2()
  if L0_2 == true then
    L0_2 = L5_1
    if L0_2 == false then
      L0_2 = s010_cave
      L0_2 = L0_2.Cooldown_Activation
      L0_2()
    end
  else
    L0_2 = L5_1
    if L0_2 == true then
      L0_2 = s010_cave
      L0_2 = L0_2.Cooldown_Deactivation
      L0_2()
    end
  end
  L0_2 = Blackboard
  L0_2 = L0_2.GetProp
  L1_2 = "GAME_PROGRESS"
  L2_2 = "CUTSCENE_THEATRE_CUTSCENE"
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 ~= nil then
    L1_2 = print
    L2_2 = L0_2
    L1_2(L2_2)
    L1_2 = Game
    L1_2 = L1_2.LaunchCutscene
    L2_2 = L0_2
    L1_2(L2_2)
  end
  L1_2 = L2_1
  if not L1_2 then
    L1_2 = s010_cave
    L1_2 = L1_2.OnBegin_Cutscene_intro_space
    L1_2()
  end
end
L15_1.InitFromBlackboard = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L6_1
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
    L1_2 = L1_2.CAVES_POSTXRELEASE_APPLIED
    L2_2 = "b"
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = true
    L6_1 = L0_2
  end
end
L15_1.Activate_Setup_PostXRelease = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "cutsceneplayer_intro_space"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = Game
    L1_2 = L1_2.GetActor
    L2_2 = "cutsceneplayer_intro_flashbackinit"
    L1_2 = L1_2(L2_2)
    if L1_2 ~= nil then
      L2_2 = L0_2.CUTSCENE
      L3_2 = L2_2
      L2_2 = L2_2.QueueCutscenePlayer
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
      L2_2 = Game
      L2_2 = L2_2.GetActor
      L3_2 = "cutsceneplayer_intro_landing"
      L2_2 = L2_2(L3_2)
      if L2_2 ~= nil then
        L3_2 = L1_2.CUTSCENE
        L4_2 = L3_2
        L3_2 = L3_2.QueueCutscenePlayer
        L5_2 = L2_2
        L3_2(L4_2, L5_2)
        L3_2 = Game
        L3_2 = L3_2.GetActor
        L4_2 = "cutsceneplayer_intro_arrivalatrium"
        L3_2 = L3_2(L4_2)
        if L3_2 ~= nil then
          L4_2 = L2_2.CUTSCENE
          L5_2 = L4_2
          L4_2 = L4_2.QueueCutscenePlayer
          L6_2 = L3_2
          L4_2(L5_2, L6_2)
          L4_2 = Game
          L4_2 = L4_2.GetActor
          L5_2 = "cutsceneplayer_intro_fight"
          L4_2 = L4_2(L5_2)
          if L4_2 ~= nil then
            L5_2 = L3_2.CUTSCENE
            L6_2 = L5_2
            L5_2 = L5_2.QueueCutscenePlayer
            L7_2 = L4_2
            L5_2(L6_2, L7_2)
            L5_2 = Game
            L5_2 = L5_2.GetActor
            L6_2 = "cutsceneplayer_intro_flashbackend"
            L5_2 = L5_2(L6_2)
            if L5_2 ~= nil then
              L6_2 = L4_2.CUTSCENE
              L7_2 = L6_2
              L6_2 = L6_2.QueueCutscenePlayer
              L8_2 = L5_2
              L6_2(L7_2, L8_2)
            end
          end
        end
      end
    end
    L2_2 = L0_2.CUTSCENE
    L3_2 = L2_2
    L2_2 = L2_2.TryLaunchCutscene
    L2_2(L3_2)
  end
end
L15_1.OnBegin_Cutscene_intro_space = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Scenario
  L0_2 = L0_2.WriteToBlackboard
  L1_2 = Scenario
  L1_2 = L1_2.LUAPropIDs
  L1_2 = L1_2.CAVES_GAME_INTRO
  L2_2 = "b"
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = true
  L2_1 = L0_2
  L0_2 = Game
  L0_2 = L0_2.PushSetup
  L1_2 = "PostIntro"
  L2_2 = true
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = Game
  L0_2 = L0_2.PlayCurrentEnvironmentMusic
  L0_2()
  L0_2 = Game
  L0_2 = L0_2.SaveGame
  L1_2 = "savedata"
  L2_2 = "IntroEnd"
  L3_2 = "StartPoint0"
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
L15_1.OnEnd_Cutscene_intro_end = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.PushSetup
  L1_2 = "PostEmmy"
  L2_2 = true
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
end
L15_1.OnEmmyCaveDead = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "ev_entercu_cv_001"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.TUNNEL_TRAP
    L2_2 = L1_2
    L1_2 = L1_2.SetOpenState
    L1_2(L2_2)
  end
  L1_2 = Game
  L1_2 = L1_2.GetActor
  L2_2 = "Door062 (PW-PW, Special)"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.LIFE
  L2_2 = L1_2
  L1_2 = L1_2.LockDoor
  L1_2(L2_2)
  L1_2 = Game
  L1_2 = L1_2.GetActor
  L2_2 = "SG_WarLotus_000"
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.SPAWNGROUP
    L3_2 = L2_2
    L2_2 = L2_2.EnableSpawnGroup
    L2_2(L3_2)
  end
  L2_2 = Game
  L2_2 = L2_2.GetActor
  L3_2 = "PRP_CV_CentralUnitCaves"
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.CENTRALUNIT
    L4_2 = L3_2
    L3_2 = L3_2.OnEmmyAbilityObtainedFadeOutCompleted
    L3_2(L4_2)
  end
end
L15_1.OnEmmyAbilityObtainedFadeOutCompleted = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2
end
L15_1.DelayedOnEmmyCaveDead = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2
end
L15_1.OnEmmyDeathMessageSkipped = L16_1
L15_1 = s010_cave
L16_1 = {}
L16_1.ShowDeath = true
L16_1.GoToMainMenu = false
L15_1.tGetOnDeathOverrides = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2
  L0_2 = s010_cave
  L0_2 = L0_2.tGetOnDeathOverrides
  return L0_2
end
L15_1.GetOnDeathOverrides = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.AddSF
  L1_2 = 0.1
  L2_2 = "s010_cave.DelayedSPRTutoTriggerEnable"
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
end
L15_1.SPRTutoTriggerEnable = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "SPRCentralUnitTutoTrigger"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L0_2.bEnabled = true
  end
end
L15_1.DelayedSPRTutoTriggerEnable = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.AddSF
  L1_2 = 0.1
  L2_2 = "s010_cave.DelayedSPBTutoTriggerEnable"
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
end
L15_1.SPBTutoTriggerEnable = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "SPBCentralUnitTutoTrigger"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L0_2.bEnabled = true
  end
end
L15_1.DelayedSPBTutoTriggerEnable = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2
end
L15_1.OnBeforeGenerate = L16_1
L15_1 = s010_cave
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CurrentScenario
  L2_2.oEmmyEntity = A1_2
  L2_2 = AI
  L2_2 = L2_2.SetWorldGraphToEmmy
  L3_2 = "LE_WorldGraph"
  L4_2 = A1_2.sName
  L2_2(L3_2, L4_2)
  L2_2 = s010_cave
  L2_2 = L2_2.ChangePatrolEmmy
  L3_2 = "PATROLROUTE_02"
  L2_2(L3_2)
  L2_2 = print
  L3_2 = "EMMY: Generation OK. Starting patrol: "
  L4_2 = A1_2.AI
  L4_2 = L4_2.sCurrentPatrol
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
end
L15_1.OnEmmyCaveGenerated = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "Door062 (PW-PW, Special)"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.LIFE
    L2_2 = L1_2
    L1_2 = L1_2.CloseDoor
    L3_2 = true
    L4_2 = true
    L5_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = L0_2.LIFE
    L2_2 = L1_2
    L1_2 = L1_2.LockDoor
    L1_2(L2_2)
  end
  L1_2 = Game
  L1_2 = L1_2.GetActor
  L2_2 = "PRP_CV_CentralUnitCaves"
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.CENTRALUNIT
    L3_2 = L2_2
    L2_2 = L2_2.Activate
    L2_2(L3_2)
  else
    L2_2 = print
    L3_2 = "CENTRAL_UNIT: PRP_CV_CentralUnitCaves not found"
    L2_2(L3_2)
  end
  L2_2 = Game
  L2_2 = L2_2.GetActor
  L3_2 = "TG_EnableSpawnEmmy"
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L2_2.bEnabled = false
  end
  L3_2 = GUI
  L3_2 = L3_2.AddEmmyMissionLogEntry
  L4_2 = "#MLOG_ENCOUNTER_EMMY_CAVE"
  L3_2(L4_2)
  L3_2 = Scenario
  L3_2 = L3_2.CheckEmmyAlive
  L4_2 = CurrentScenario
  L4_2 = L4_2.oEmmyEntity
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = CurrentScenario
    L3_2 = L3_2.oEmmyEntity
    L3_2.bEnabled = true
  end
  L3_2 = Scenario
  L3_2 = L3_2.WriteToBlackboard
  L4_2 = Scenario
  L4_2 = L4_2.LUAPropIDs
  L4_2 = L4_2.CAVES_EMMY_SPAWNED
  L5_2 = "b"
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = true
  L3_1 = L3_2
end
L15_1.EmmyCaveSpawnSequence = L16_1
L15_1 = s010_cave
function L16_1()
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
    L0_2 = L0_2.OnPresentationCutsceneEnd
    L0_2(L1_2)
  end
end
L15_1.EmmyCaveSpawnSequenceEnd = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "PRP_CV_CentralUnitProto"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.CENTRALUNIT
    L2_2 = L1_2
    L1_2 = L1_2.Activate
    L1_2(L2_2)
  else
    L1_2 = print
    L2_2 = "CENTRAL_UNIT: PRP_CV_CentralUnitProto not found"
    L1_2(L2_2)
  end
  L1_2 = GUI
  L1_2 = L1_2.AddEmmyMissionLogEntry
  L2_2 = "#MLOG_ENCOUNTER_PROTOEMMY_CAVE"
  L1_2(L2_2)
end
L15_1.EmmyProtoSpawnSequence = L16_1
L15_1 = s010_cave
function L16_1(A0_2, A1_2)
  local L2_2
  L2_2 = CurrentScenario
  L2_2.oEmmyProtoEntity = A1_2
end
L15_1.OnEmmyProtoGenerated = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "LM_AfterEmmyProtoClimbSequence_Samus"
  L0_2 = L0_2(L1_2)
  L1_2 = Game
  L1_2 = L1_2.GetPlayer
  L1_2 = L1_2()
  if L1_2 ~= nil and L0_2 ~= nil then
    L2_2 = L0_2.vPos
    L1_2.vPos = L2_2
    L2_2 = L0_2.vAng
    L1_2.vAng = L2_2
  end
  L2_2 = Game
  L2_2 = L2_2.GetActor
  L3_2 = "LM_AfterEmmyProtoClimbSequence_Emmy"
  L2_2 = L2_2(L3_2)
  L3_2 = CurrentScenario
  L3_2 = L3_2.oEmmyProtoEntity
  if L3_2 ~= nil and L2_2 ~= nil then
    L3_2 = CurrentScenario
    L3_2 = L3_2.oEmmyProtoEntity
    L3_2.bEnabled = false
    L3_2 = CurrentScenario
    L3_2 = L3_2.oEmmyProtoEntity
    L4_2 = L2_2.vPos
    L3_2.vPos = L4_2
    L3_2 = CurrentScenario
    L3_2 = L3_2.oEmmyProtoEntity
    L4_2 = L2_2.vAng
    L3_2.vAng = L4_2
    L3_2 = CurrentScenario
    L3_2 = L3_2.oEmmyProtoEntity
    L3_2.bEnabled = true
  end
end
L15_1.EmmyProtoClimbSequenceMessageSkipped = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "LM_AfterEmmyProtoClimbSequence_Emmy"
  L0_2 = L0_2(L1_2)
  L1_2 = CurrentScenario
  L1_2 = L1_2.oEmmyProtoEntity
  if L1_2 ~= nil and L0_2 ~= nil then
    L1_2 = CurrentScenario
    L1_2 = L1_2.oEmmyProtoEntity
    L1_2.bEnabled = false
    L1_2 = CurrentScenario
    L1_2 = L1_2.oEmmyProtoEntity
    L2_2 = L0_2.vPos
    L1_2.vPos = L2_2
    L1_2 = CurrentScenario
    L1_2 = L1_2.oEmmyProtoEntity
    L2_2 = L0_2.vAng
    L1_2.vAng = L2_2
    L1_2 = CurrentScenario
    L1_2 = L1_2.oEmmyProtoEntity
    L1_2 = L1_2.ANIMATION
    L2_2 = L1_2
    L1_2 = L1_2.SetAction
    L3_2 = "relax"
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = CurrentScenario
    L1_2 = L1_2.oEmmyProtoEntity
    L1_2.bEnabled = true
  end
end
L15_1.OnProtoEmmyCantClimbCutsceneStart = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2
  L0_2 = print
  L1_2 = "OnProtoEmmyCantClimbCutsceneEnd"
  L0_2(L1_2)
  L0_2 = Scenario
  L0_2 = L0_2.CheckEmmyAlive
  L1_2 = CurrentScenario
  L1_2 = L1_2.oEmmyProtoEntity
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = CurrentScenario
    L0_2 = L0_2.oEmmyProtoEntity
    L0_2 = L0_2.AI
    L1_2 = L0_2
    L0_2 = L0_2.OnPresentationCutsceneEnd
    L0_2(L1_2)
  end
end
L15_1.OnProtoEmmyCantClimbCutsceneEnd = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "TG_PROTOEMMY_ACTIVATE"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L0_2.bEnabled = true
  end
  L1_2 = Game
  L1_2 = L1_2.GetActor
  L2_2 = "TG_PROTOEMMY_ACTIVATE_TIMER"
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L1_2.bEnabled = true
  end
end
L15_1.OnProtoEmmyWalkThroughCentralUnitDoor = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "TG_PROTOEMMY_ACTIVATE_TIMER"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.bEnabled
    if L1_2 == false then
      L1_2 = Game
      L1_2 = L1_2.GetActor
      L2_2 = "TG_PROTOEMMY_ACTIVATE"
      L1_2 = L1_2(L2_2)
      if L1_2 ~= nil then
        L2_2 = L1_2.bEnabled
        if L2_2 then
          L2_2 = s010_cave
          L2_2 = L2_2.OnEnter_ActivateProtoEmmy
          L2_2()
          L1_2.bEnabled = false
        end
      end
    end
  end
end
L15_1.OnAimCameraPossess = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = CurrentScenario
  L0_2 = L0_2.oEmmyProtoEntity
  if L0_2 ~= nil then
    L0_2 = CurrentScenario
    L0_2 = L0_2.oEmmyProtoEntity
    L0_2.bEnabled = true
    L0_2 = CurrentScenario
    L0_2 = L0_2.oEmmyProtoEntity
    L0_2 = L0_2.AI
    L1_2 = L0_2
    L0_2 = L0_2.StandStillFor
    L2_2 = 1
    L0_2(L1_2, L2_2)
  end
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "TG_PROTOEMMY_ACTIVATE"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L0_2.bEnabled = false
  end
  L1_2 = Game
  L1_2 = L1_2.GetActor
  L2_2 = "TG_PROTOEMMY_ACTIVATE_TIMER"
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L1_2.bEnabled = false
  end
end
L15_1.OnEnter_ActivateProtoEmmy = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.AddSF
  L1_2 = 3
  L2_2 = "s010_cave.OnAimCameraPossess"
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "TG_PROTOEMMY_ACTIVATE_TIMER"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L0_2.bEnabled = false
  end
end
L15_1.OnEnter_ActivateProtoEmmyTimer = L16_1
L15_1 = s010_cave
function L16_1()
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
    L1_2 = L0_2.SPAWNPOINT
    L2_2 = L1_2
    L1_2 = L1_2.AddPatrolShape
    L3_2 = "LS_PATROLEMMY_15"
    L1_2(L2_2, L3_2)
    L1_2 = L0_2.SPAWNPOINT
    L2_2 = L1_2
    L1_2 = L1_2.AddPatrolShape
    L3_2 = "LS_PATROLTUTOFOCUS"
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
  L1_2 = AI
  L1_2 = L1_2.AddPatrol
  L2_2 = "LE_WorldGraph"
  L3_2 = "PATROLROUTE_15"
  L4_2 = "LS_PATROLEMMY_15"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = AI
  L1_2 = L1_2.AddPatrol
  L2_2 = "LE_WorldGraph"
  L3_2 = "PATROLTUTOFOCUS"
  L4_2 = "LS_PATROLTUTOFOCUS"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = print
  L2_2 = "s010_cave.PatrolRoutesGeneration(): Patrol designation OK"
  L1_2(L2_2)
end
L15_1.PatrolRoutesGeneration = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_01"
  L3_2 = {}
  L4_2 = "WorldGraph_60"
  L3_2[1] = L4_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_01"
  L3_2 = {}
  L4_2 = "WorldGraph_69"
  L5_2 = "WorldGraph_70"
  L6_2 = "WorldGraph_72"
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
  L4_2 = "WorldGraph_73"
  L5_2 = "WorldGraph_70"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_02"
  L3_2 = {}
  L4_2 = "WorldGraph_51"
  L5_2 = "WorldGraph_60"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_02"
  L3_2 = {}
  L4_2 = "WorldGraph_59"
  L3_2[1] = L4_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_03"
  L3_2 = {}
  L4_2 = "WorldGraph_65"
  L3_2[1] = L4_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_03"
  L3_2 = {}
  L4_2 = "WorldGraph_59"
  L3_2[1] = L4_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_03"
  L3_2 = {}
  L4_2 = "WorldGraph_52"
  L5_2 = "WorldGraph_53"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_03"
  L3_2 = {}
  L4_2 = "WorldGraph_36"
  L3_2[1] = L4_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_03"
  L3_2 = {}
  L4_2 = "WorldGraph_45"
  L3_2[1] = L4_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_04"
  L3_2 = {}
  L4_2 = "WorldGraph_36"
  L3_2[1] = L4_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_04"
  L3_2 = {}
  L4_2 = "WorldGraph_44"
  L5_2 = "WorldGraph_45"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_04"
  L3_2 = {}
  L4_2 = "WorldGraph_52"
  L3_2[1] = L4_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_04"
  L3_2 = {}
  L4_2 = "WorldGraph_50"
  L3_2[1] = L4_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_04"
  L3_2 = {}
  L4_2 = "WorldGraph_60"
  L5_2 = "WorldGraph_61"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_05"
  L3_2 = {}
  L4_2 = "WorldGraph_32"
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
  L4_2 = "WorldGraph_34"
  L5_2 = "WorldGraph_37"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_05"
  L3_2 = {}
  L4_2 = "WorldGraph_41"
  L5_2 = "WorldGraph_42"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_06"
  L3_2 = {}
  L4_2 = "WorldGraph_25"
  L3_2[1] = L4_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_06"
  L3_2 = {}
  L4_2 = "WorldGraph_28"
  L5_2 = "WorldGraph_37"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_06"
  L3_2 = {}
  L4_2 = "WorldGraph_40"
  L3_2[1] = L4_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_07"
  L3_2 = {}
  L4_2 = "WorldGraph_15"
  L5_2 = "WorldGraph_22"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_07"
  L3_2 = {}
  L4_2 = "WorldGraph_9"
  L5_2 = "WorldGraph_11"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_07"
  L3_2 = {}
  L4_2 = "WorldGraph_16"
  L5_2 = "WorldGraph_18"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 2
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_07"
  L3_2 = {}
  L4_2 = "WorldGraph_25"
  L5_2 = "WorldGraph_33"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 3
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_08"
  L3_2 = {}
  L4_2 = "WorldGraph_9"
  L3_2[1] = L4_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_08"
  L3_2 = {}
  L4_2 = "WorldGraph_1"
  L3_2[1] = L4_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_08"
  L3_2 = {}
  L4_2 = "WorldGraph_15"
  L3_2[1] = L4_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_09"
  L3_2 = {}
  L4_2 = "WorldGraph_2"
  L3_2[1] = L4_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_09"
  L3_2 = {}
  L4_2 = "WorldGraph_4"
  L3_2[1] = L4_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_09"
  L3_2 = {}
  L4_2 = "WorldGraph_0"
  L5_2 = "WorldGraph_7"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_10"
  L3_2 = {}
  L4_2 = "WorldGraph_111"
  L5_2 = "WorldGraph_112"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_10"
  L3_2 = {}
  L4_2 = "WorldGraph_105"
  L5_2 = "WorldGraph_103"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_10"
  L3_2 = {}
  L4_2 = "WorldGraph_98"
  L5_2 = "WorldGraph_101"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 2
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_11"
  L3_2 = {}
  L4_2 = "WorldGraph_116"
  L5_2 = "WorldGraph_126"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_11"
  L3_2 = {}
  L4_2 = "WorldGraph_115"
  L5_2 = "WorldGraph_123"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_12"
  L3_2 = {}
  L4_2 = "WorldGraph_59"
  L3_2[1] = L4_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_12"
  L3_2 = {}
  L4_2 = "WorldGraph_92"
  L3_2[1] = L4_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_12"
  L3_2 = {}
  L4_2 = "WorldGraph_56"
  L3_2[1] = L4_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_12"
  L3_2 = {}
  L4_2 = "WorldGraph_60"
  L3_2[1] = L4_2
  L4_2 = 2
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_13"
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
  L2_2 = "PATROLROUTE_13"
  L3_2 = {}
  L4_2 = "WorldGraph_72"
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
  L4_2 = "WorldGraph_97"
  L5_2 = "WorldGraph_93"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_13"
  L3_2 = {}
  L4_2 = "WorldGraph_90"
  L3_2[1] = L4_2
  L4_2 = 2
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_14"
  L3_2 = {}
  L4_2 = "WorldGraph_88"
  L3_2[1] = L4_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_14"
  L3_2 = {}
  L4_2 = "WorldGraph_96"
  L3_2[1] = L4_2
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_14"
  L3_2 = {}
  L4_2 = "WorldGraph_80"
  L5_2 = "WorldGraph_79"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = 2
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_14"
  L3_2 = {}
  L4_2 = "WorldGraph_76"
  L3_2[1] = L4_2
  L4_2 = 2
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_15"
  L3_2 = {}
  L4_2 = "WorldGraph_88"
  L3_2[1] = L4_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_15"
  L3_2 = {}
  L4_2 = "WorldGraph_80"
  L3_2[1] = L4_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_15"
  L3_2 = {}
  L4_2 = "WorldGraph_76"
  L3_2[1] = L4_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLROUTE_15"
  L3_2 = {}
  L4_2 = "WorldGraph_85"
  L3_2[1] = L4_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AI
  L0_2 = L0_2.SetPatrolFinalNode
  L1_2 = "LE_WorldGraph"
  L2_2 = "PATROLTUTOFOCUS"
  L3_2 = {}
  L4_2 = "WorldGraph_21"
  L3_2[1] = L4_2
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = print
  L1_2 = "s010_cave.PatrolRoutesFinalNodesAssignation(): Final Nodes Assignation OK"
  L0_2(L1_2)
end
L15_1.PatrolRoutesFinalNodesAssignation = L16_1
L15_1 = s010_cave
function L16_1(A0_2)
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
L15_1.ChangePatrolEmmy = L16_1
L15_1 = s010_cave
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = string
  L2_2 = L2_2.gsub
  L3_2 = A0_2.sName
  L4_2 = "TG_PATROLEMMYACTIVATOR_"
  L5_2 = "PATROLROUTE_"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = s010_cave
  L3_2 = L3_2.ChangePatrolEmmy
  L4_2 = L2_2
  L3_2(L4_2)
end
L15_1.OnEnter_PatrolEmmyActivator = L16_1
L15_1 = s010_cave
function L16_1(A0_2, A1_2)
end
L15_1.OnExit_PatrolEmmyActivator = L16_1
L15_1 = s010_cave
L15_1.tEmmyDoor = nil
L15_1 = s010_cave
function L16_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = L3_1
  if L3_2 then
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
            L3_2 = s010_cave
            L3_2 = L3_2.HardEmmyRelocationDoor
            L4_2 = A0_2
            L3_2 = L3_2(L4_2)
            sTeleportLandmark = L3_2
          else
            L3_2 = s010_cave
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
            L5_2 = L3_2
            L4_2(L5_2)
            if L3_2 ~= nil then
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
              L4_2 = s010_cave
              L4_2 = L4_2.Check_WakeUpCU_Completed
              L5_2 = A0_2
              L4_2 = L4_2(L5_2)
              if L4_2 then
                L4_2 = CurrentScenario
                L4_2 = L4_2.oEmmyEntity
                L4_2.bEnabled = true
              end
            end
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
L15_1.OnWalkThroughEmmyDoor = L16_1
L15_1 = s010_cave
function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = print
  L2_2 = "Door: Hard "
  L3_2 = A0_2.sName
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = A0_2.sName
  if L1_2 == "DoorEmmy03" then
    L1_2 = s010_cave
    L2_2 = {}
    L3_2 = "LM_EmmyEntrancePoint_004"
    L2_2[1] = L3_2
    L1_2.tEmmyDoor = L2_2
  else
    L1_2 = A0_2.sName
    if L1_2 == "DoorEmmy02" then
      L1_2 = s010_cave
      L2_2 = {}
      L3_2 = "LM_EmmyEntrancePoint_005"
      L2_2[1] = L3_2
      L1_2.tEmmyDoor = L2_2
    else
      L1_2 = A0_2.sName
      if L1_2 == "DoorEmmy01" then
        L1_2 = s010_cave
        L2_2 = {}
        L3_2 = "LM_EmmyEntrancePoint_008"
        L2_2[1] = L3_2
        L1_2.tEmmyDoor = L2_2
      else
        L1_2 = A0_2.sName
        if L1_2 == "DoorEmmy10" then
          L1_2 = s010_cave
          L2_2 = {}
          L3_2 = "LM_EmmyEntrancePoint_012"
          L2_2[1] = L3_2
          L1_2.tEmmyDoor = L2_2
        else
          L1_2 = A0_2.sName
          if L1_2 == "DoorEmmy11" then
            L1_2 = s010_cave
            L2_2 = {}
            L3_2 = "LM_EmmyEntrancePoint_011"
            L4_2 = "LM_EmmyEntrancePoint_013"
            L2_2[1] = L3_2
            L2_2[2] = L4_2
            L1_2.tEmmyDoor = L2_2
          else
            L1_2 = A0_2.sName
            if L1_2 ~= "DoorEmmy06" then
              L1_2 = A0_2.sName
              if L1_2 ~= "DoorEmmy07" then
                goto lbl_74
              end
            end
            L1_2 = Blackboard
            L1_2 = L1_2.GetProp
            L2_2 = "s010_cave"
            L3_2 = "TG_TutoFocus_Caves_001:TRIGGER:Enabled"
            L1_2 = L1_2(L2_2, L3_2)
            if L1_2 == false then
              L2_2 = s010_cave
              L3_2 = {}
              L4_2 = "LM_EmmyEntrancePoint_000"
              L3_2[1] = L4_2
              L2_2.tEmmyDoor = L3_2
            else
              L2_2 = s010_cave
              L2_2.tEmmyDoor = nil
              goto lbl_76
              ::lbl_74::
              L1_2 = s010_cave
              L1_2.tEmmyDoor = nil
            end
          end
        end
      end
    end
  end
  ::lbl_76::
  L1_2 = s010_cave
  L1_2 = L1_2.tEmmyDoor
  if L1_2 ~= nil then
    L1_2 = s010_cave
    L1_2 = L1_2.tEmmyDoor
    L2_2 = math
    L2_2 = L2_2.random
    L3_2 = table
    L3_2 = L3_2.maxn
    L4_2 = s010_cave
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
L15_1.HardEmmyRelocationDoor = L16_1
L15_1 = s010_cave
function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.sName
  if L1_2 == "DoorEmmy03" then
    L1_2 = s010_cave
    L2_2 = {}
    L3_2 = "LM_EmmyEntrancePoint_003"
    L4_2 = "LM_EmmyEntrancePoint_004"
    L2_2[1] = L3_2
    L2_2[2] = L4_2
    L1_2.tEmmyDoor = L2_2
  else
    L1_2 = A0_2.sName
    if L1_2 == "DoorEmmy02" then
      L1_2 = s010_cave
      L2_2 = {}
      L3_2 = "LM_EmmyEntrancePoint_005"
      L4_2 = "LM_EmmyEntrancePoint_006"
      L2_2[1] = L3_2
      L2_2[2] = L4_2
      L1_2.tEmmyDoor = L2_2
    else
      L1_2 = A0_2.sName
      if L1_2 == "DoorEmmy01" then
        L1_2 = s010_cave
        L2_2 = {}
        L3_2 = "LM_EmmyEntrancePoint_008"
        L4_2 = "LM_EmmyEntrancePoint_009"
        L5_2 = "LM_EmmyEntrancePoint_010"
        L2_2[1] = L3_2
        L2_2[2] = L4_2
        L2_2[3] = L5_2
        L1_2.tEmmyDoor = L2_2
      else
        L1_2 = A0_2.sName
        if L1_2 == "DoorEmmy10" then
          L1_2 = s010_cave
          L2_2 = {}
          L3_2 = "LM_EmmyEntrancePoint_011"
          L4_2 = "LM_EmmyEntrancePoint_012"
          L2_2[1] = L3_2
          L2_2[2] = L4_2
          L1_2.tEmmyDoor = L2_2
        else
          L1_2 = A0_2.sName
          if L1_2 == "DoorEmmy11" then
            L1_2 = s010_cave
            L2_2 = {}
            L3_2 = "LM_EmmyEntrancePoint_011"
            L4_2 = "LM_EmmyEntrancePoint_013"
            L2_2[1] = L3_2
            L2_2[2] = L4_2
            L1_2.tEmmyDoor = L2_2
          else
            L1_2 = A0_2.sName
            if L1_2 ~= "DoorEmmy06" then
              L1_2 = A0_2.sName
              if L1_2 ~= "DoorEmmy07" then
                goto lbl_76
              end
            end
            L1_2 = Blackboard
            L1_2 = L1_2.GetProp
            L2_2 = "s010_cave"
            L3_2 = "TG_TutoFocus_Caves_001:TRIGGER:Enabled"
            L1_2 = L1_2(L2_2, L3_2)
            if L1_2 == false then
              L2_2 = s010_cave
              L3_2 = {}
              L4_2 = "LM_EmmyEntrancePoint_000"
              L5_2 = "LM_EmmyEntrancePoint_001"
              L6_2 = "LM_EmmyEntrancePoint_002"
              L3_2[1] = L4_2
              L3_2[2] = L5_2
              L3_2[3] = L6_2
              L2_2.tEmmyDoor = L3_2
            else
              L2_2 = s010_cave
              L2_2.tEmmyDoor = nil
              goto lbl_78
              ::lbl_76::
              L1_2 = s010_cave
              L1_2.tEmmyDoor = nil
            end
          end
        end
      end
    end
  end
  ::lbl_78::
  L1_2 = s010_cave
  L1_2 = L1_2.tEmmyDoor
  if L1_2 ~= nil then
    L1_2 = s010_cave
    L1_2 = L1_2.tEmmyDoor
    L2_2 = math
    L2_2 = L2_2.random
    L3_2 = table
    L3_2 = L3_2.maxn
    L4_2 = s010_cave
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
L15_1.EmmyRelocationDoor = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.AddSF
  L1_2 = 1
  L2_2 = "s010_cave.Checkpoint_RelocatingEmmy_CU"
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
end
L15_1.OnTeleport_Checkpoint_CU = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = CurrentScenario
  L0_2 = L0_2.oEmmyEntity
  if L0_2 ~= nil then
    L0_2 = Game
    L0_2 = L0_2.GetActor
    L1_2 = "LM_EmmyDestroySearchLandmark01"
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
      L1_2 = s010_cave
      L1_2 = L1_2.ChangePatrolEmmy
      L2_2 = "PATROLROUTE_14"
      L1_2(L2_2)
    end
  end
end
L15_1.Checkpoint_RelocatingEmmy_CU = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "LS_EmmyGrabOverride_000"
  L0_2 = L0_2(L1_2)
  L1_2 = Game
  L1_2 = L1_2.GetActor
  L2_2 = "LS_EmmyGrabOverride_001"
  L1_2 = L1_2(L2_2)
  if L0_2 ~= nil and L1_2 ~= nil then
    L1_2.bEnabled = false
    L0_2.bEnabled = true
  end
end
L15_1.ActivateGrabOverride_Right = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "LS_EmmyGrabOverride_000"
  L0_2 = L0_2(L1_2)
  L1_2 = Game
  L1_2 = L1_2.GetActor
  L2_2 = "LS_EmmyGrabOverride_001"
  L1_2 = L1_2(L2_2)
  if L0_2 ~= nil and L1_2 ~= nil then
    L0_2.bEnabled = false
    L1_2.bEnabled = true
  end
end
L15_1.ActivateGrabOverride_Left = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Scenario
  L0_2 = L0_2.CheckEmmyAlive
  L1_2 = CurrentScenario
  L1_2 = L1_2.oEmmyEntity
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = Game
    L0_2 = L0_2.GetActor
    L1_2 = "LS_EmmyEndStagger_000"
    L0_2 = L0_2(L1_2)
    if L0_2 ~= nil then
      L1_2 = L0_2.LOGICSHAPE
      L2_2 = L1_2
      L1_2 = L1_2.IsActorInside
      L3_2 = CurrentScenario
      L3_2 = L3_2.oEmmyEntity
      L1_2 = L1_2(L2_2, L3_2)
      if L1_2 then
        L1_2 = CurrentScenario
        L1_2 = L1_2.oEmmyEntity
        L1_2 = L1_2.AI
        L2_2 = L1_2
        L1_2 = L1_2.ForceStopStagger
        L1_2(L2_2)
      end
    end
  end
end
L15_1.EmmyCaveTryToEndStagger = L16_1
L15_1 = s010_cave
L16_1 = {}
L17_1 = "PRP_CV_watercave02"
L18_1 = "PRP_CV_watercave05"
L19_1 = "waterstream01_caveinit"
L20_1 = "waterstream01_caveinit_001"
L21_1 = "waterstream01_caveinit_002"
L22_1 = "waterstream01_caveinit_003"
L23_1 = "waterstream01_caveinit_004"
L24_1 = "waterstream01_caveinit_005"
L16_1[1] = L17_1
L16_1[2] = L18_1
L16_1[3] = L19_1
L16_1[4] = L20_1
L16_1[5] = L21_1
L16_1[6] = L22_1
L16_1[7] = L23_1
L16_1[8] = L24_1
L15_1.tWaterPoolsToEnable = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = print
  L1_2 = "Event_WaterPoolInfiltration started!"
  L0_2(L1_2)
  L0_2 = ipairs
  L1_2 = s010_cave
  L1_2 = L1_2.tWaterPoolsToEnable
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = Game
    L5_2 = L5_2.GetActor
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 ~= nil then
      L5_2.bEnabled = true
    else
      L6_2 = print
      L7_2 = "Entity "
      L8_2 = L4_2
      L9_2 = " not found"
      L7_2 = L7_2 .. L8_2 .. L9_2
      L6_2(L7_2)
    end
  end
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "Watervalve_fillmap"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = Game
    L1_2 = L1_2.SetMinimapRegionVisited
    L2_2 = "Watervalve_fillmap"
    L1_2(L2_2)
  end
end
L15_1.Event_WaterPoolInfiltration_Activate = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = ipairs
  L1_2 = s010_cave
  L1_2 = L1_2.tWaterPoolsToEnable
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = Game
    L5_2 = L5_2.GetActor
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 ~= nil then
      L5_2.bEnabled = false
    else
      L6_2 = print
      L7_2 = "Entity "
      L8_2 = L4_2
      L9_2 = " not found"
      L7_2 = L7_2 .. L8_2 .. L9_2
      L6_2(L7_2)
    end
  end
end
L15_1.Event_WaterPoolInfiltration_Deactivate = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2
  L0_2 = Scenario
  L0_2 = L0_2.CheckEmmyAlive
  L1_2 = CurrentScenario
  L1_2 = L1_2.oEmmyEntity
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = CurrentScenario
    L0_2 = L0_2.oEmmyEntity
    L0_2.bEnabled = false
  else
    L0_2 = print
    L1_2 = "Emmy not found"
    L0_2(L1_2)
  end
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "Door062 (PW-PW, Special)"
  L0_2 = L0_2(L1_2)
  L0_2 = L0_2.LIFE
  L1_2 = L0_2
  L0_2 = L0_2.UnLockDoor
  L0_2(L1_2)
  L0_2 = print
  L1_2 = "Emmy deshabilitado"
  L0_2(L1_2)
end
L15_1.Event_EmmyPatrolFocusTutorial_DisableEmmy = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = print
  L1_2 = "Event: Water valve tutorial"
  L0_2(L1_2)
  L0_2 = Scenario
  L0_2 = L0_2.CheckEmmyAlive
  L1_2 = CurrentScenario
  L1_2 = L1_2.oEmmyEntity
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = Game
    L0_2 = L0_2.GetActor
    L1_2 = "LM_Emmy_WaterPlant"
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
    L1_2 = CurrentScenario
    L1_2 = L1_2.oEmmyEntity
    L1_2 = L1_2.ANIMATION
    L2_2 = L1_2
    L1_2 = L1_2.SetAction
    L3_2 = "standby"
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
  end
end
L15_1.Event_EmmyWaterValveTutorial = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.GetPlayer
  L0_2 = L0_2()
  if L0_2 ~= nil then
    L1_2 = print
    L2_2 = "Event: Patrol Focus Tutorial"
    L1_2(L2_2)
    L1_2 = Scenario
    L1_2 = L1_2.CheckEmmyAlive
    L2_2 = CurrentScenario
    L2_2 = L2_2.oEmmyEntity
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = Game
      L1_2 = L1_2.GetActor
      L2_2 = "LM_TutoFocus_EmmyNoFocusTutorialPoint"
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
    else
      L1_2 = print
      L2_2 = "Emmy not found"
      L1_2(L2_2)
    end
  end
end
L15_1.Event_EmmyPatrolFocusTutorial = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.PushSetup
  L1_2 = "ScrewAttack"
  L2_2 = true
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
end
L15_1.OnEnter_ChangeMusic_ScrewAttack = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.PopSetup
  L1_2 = "ScrewAttack"
  L2_2 = true
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
end
L15_1.OnExit_ChangeMusic_ScrewAttack = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_003_B"
  L2_2 = true
  L0_2(L1_2, L2_2)
end
L15_1.OnEnter_ChangeCamera_003_B = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2
  L0_2 = print
  L1_2 = "caption finished"
  L0_2(L1_2)
end
L15_1.OnCaptionFinished = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_003_B"
  L2_2 = false
  L0_2(L1_2, L2_2)
end
L15_1.OnExit_ChangeCamera_003_B = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_003_C"
  L2_2 = true
  L0_2(L1_2, L2_2)
end
L15_1.OnEnter_ChangeCamera_003_C = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_003_C"
  L2_2 = false
  L0_2(L1_2, L2_2)
end
L15_1.OnExit_ChangeCamera_003_C = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_050_B"
  L2_2 = true
  L0_2(L1_2, L2_2)
end
L15_1.OnEnter_ChangeCamera_050_B = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_050_B"
  L2_2 = false
  L0_2(L1_2, L2_2)
end
L15_1.OnExit_ChangeCamera_050_B = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_056_B"
  L2_2 = true
  L0_2(L1_2, L2_2)
end
L15_1.OnEnter_ChangeCamera_056_B = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_056_B"
  L2_2 = false
  L0_2(L1_2, L2_2)
end
L15_1.OnExit_ChangeCamera_056_B = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_056_C"
  L2_2 = true
  L0_2(L1_2, L2_2)
end
L15_1.OnEnter_ChangeCamera_056_C = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_056_C"
  L2_2 = false
  L0_2(L1_2, L2_2)
end
L15_1.OnExit_ChangeCamera_056_C = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Blackboard
  L0_2 = L0_2.GetProp
  L1_2 = "PLAYER_INVENTORY"
  L2_2 = "ITEM_CENTRAL_UNIT_DECAYED_ENERGY"
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 ~= nil and 0 < L0_2 then
    L1_2 = Game
    L1_2 = L1_2.SetCollisionCameraLocked
    L2_2 = "collision_camera_064B"
    L3_2 = false
    L1_2(L2_2, L3_2)
  else
    L1_2 = Game
    L1_2 = L1_2.SetCollisionCameraLocked
    L2_2 = "collision_camera_064B"
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end
L15_1.OnEnter_ChangeCamera_064B = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_064B"
  L2_2 = false
  L0_2(L1_2, L2_2)
end
L15_1.OnExit_ChangeCamera_064B = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_015_B"
  L2_2 = true
  L0_2(L1_2, L2_2)
end
L15_1.OnEnter_ChangeCamera_015_B = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_015_B"
  L2_2 = false
  L0_2(L1_2, L2_2)
end
L15_1.OnExit_ChangeCamera_015_B = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_031_B"
  L2_2 = true
  L0_2(L1_2, L2_2)
end
L15_1.OnEnter_ChangeCamera_031_B = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_031_B"
  L2_2 = false
  L0_2(L1_2, L2_2)
end
L15_1.OnExit_ChangeCamera_031_B = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "TG_ChangeCamera_048_B"
  L0_2 = L0_2(L1_2)
  L0_2.bEnabled = false
  L1_2 = print
  L2_2 = "OnEnter_ChangeCamera_048_C"
  L1_2(L2_2)
  L1_2 = Game
  L1_2 = L1_2.SetCollisionCameraLocked
  L2_2 = "collision_camera_048_C"
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L15_1.OnEnter_ChangeCamera_048_C = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "TG_ChangeCamera_048_C"
  L0_2 = L0_2(L1_2)
  L0_2.bEnabled = true
end
L15_1.OnEnter_ChangeCamera_048_C_Delayed = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_048_C"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = print
  L1_2 = "OnExit_ChangeCamera_048_C"
  L0_2(L1_2)
  L0_2 = Game
  L0_2 = L0_2.AddSF
  L1_2 = 0
  L2_2 = "s010_cave.OnEnter_ChangeCamera_048_B_Delayed"
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
end
L15_1.OnExit_ChangeCamera_048_C = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "TG_ChangeCamera_048_C"
  L0_2 = L0_2(L1_2)
  L0_2.bEnabled = false
  L1_2 = Game
  L1_2 = L1_2.SetCollisionCameraLocked
  L2_2 = "collision_camera_048_B"
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = print
  L2_2 = "OnEnter_ChangeCamera_048_B"
  L1_2(L2_2)
end
L15_1.OnEnter_ChangeCamera_048_B = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "TG_ChangeCamera_048_B"
  L0_2 = L0_2(L1_2)
  L0_2.bEnabled = true
end
L15_1.OnEnter_ChangeCamera_048_B_Delayed = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_048_B"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = print
  L1_2 = "OnExit_ChangeCamera_048_B"
  L0_2(L1_2)
  L0_2 = Game
  L0_2 = L0_2.AddSF
  L1_2 = 0
  L2_2 = "s010_cave.OnEnter_ChangeCamera_048_C_Delayed"
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
end
L15_1.OnExit_ChangeCamera_048_B = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.PushSetup
  L1_2 = "DisableCamera_048"
  L2_2 = false
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
end
L15_1.OnEnter_DisableCamera_048 = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.PopSetup
  L1_2 = "DisableCamera_048"
  L2_2 = false
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
end
L15_1.OnExit_DisableCamera_048 = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.PushSetup
  L1_2 = "ChangeCamera_023_B"
  L2_2 = false
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
end
L15_1.OnEnter_ChangeCamera_023_B = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.PopSetup
  L1_2 = "ChangeCamera_023_B"
  L2_2 = false
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
end
L15_1.OnExit_ChangeCamera_023_B = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_091_B"
  L2_2 = true
  L0_2(L1_2, L2_2)
end
L15_1.OnEnter_ChangeCamera_091_B = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_091_B"
  L2_2 = false
  L0_2(L1_2, L2_2)
end
L15_1.OnExit_ChangeCamera_091_B = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.GetCamera
  L0_2 = L0_2()
  L0_2 = L0_2.CAMERA
  L1_2 = L0_2
  L0_2 = L0_2.SetLogicCameraParams
  L2_2 = "CAM_Far"
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = print
  L1_2 = "OnEnter_ChangeCamera_Far"
  L0_2(L1_2)
end
L15_1.OnEnter_ChangeCamera_Far = L16_1
L15_1 = s010_cave
function L16_1()
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
  L0_2 = print
  L1_2 = "OnExit_ChangeCamera_Far"
  L0_2(L1_2)
end
L15_1.OnExit_ChangeCamera_Far = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2
  L0_2 = print
  L1_2 = "Enable Fade"
  L0_2(L1_2)
  L0_2 = Game
  L0_2 = L0_2.SetSubAreasPreferredTransitionType
  L1_2 = "Fade"
  L0_2(L1_2)
end
L15_1.OnEnter_EnableFade = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2
  L0_2 = print
  L1_2 = "Disable Fade"
  L0_2(L1_2)
  L0_2 = Game
  L0_2 = L0_2.SetSubAreasPreferredTransitionType
  L1_2 = "None"
  L0_2(L1_2)
end
L15_1.OnExit_DisableFade = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2
  L0_2 = print
  L1_2 = "EMMY DEACTIVATE"
  L0_2(L1_2)
  L0_2 = Scenario
  L0_2 = L0_2.CheckEmmyAlive
  L1_2 = CurrentScenario
  L1_2 = L1_2.oEmmyEntity
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = print
    L1_2 = "EMMY DEACTIVATION"
    L0_2(L1_2)
    L0_2 = CurrentScenario
    L0_2 = L0_2.oEmmyEntity
    L0_2.bEnabled = false
  end
end
L15_1.OnEnter_DeactivationEmmy_CameraRail_CU = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = Scenario
  L0_2 = L0_2.CheckEmmyAlive
  L1_2 = CurrentScenario
  L1_2 = L1_2.oEmmyEntity
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = Game
    L0_2 = L0_2.GetActor
    L1_2 = "LM_EnterEmmyZoneSecondTime"
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
L15_1.OnExit_ActivationEmmy_CameraRail_CU = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "PRP_CV_AccessPoint001"
  L0_2 = L0_2(L1_2)
  L1_2 = Blackboard
  L1_2 = L1_2.GetProp
  L2_2 = "GAME_PROGRESS"
  L3_2 = "ADAMDIALOGUE"
  L1_2 = L1_2(L2_2, L3_2)
  if L0_2 ~= nil then
    if L1_2 == "DIAG_ADAM_AQUA_2" then
      L2_2 = L0_2.USABLE
      L3_2 = L2_2
      L2_2 = L2_2.ActiveDialogue
      L4_2 = "DIAG_ADAM_CAVE_4"
      L2_2(L3_2, L4_2)
      L2_2 = Blackboard
      L2_2 = L2_2.SetProp
      L3_2 = "GAME_PROGRESS"
      L4_2 = "ADAMDIALOGUE"
      L5_2 = "s"
      L6_2 = "DIAG_ADAM_CAVE_4"
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
L15_1.OnEnter_AP_01 = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "PRP_CV_AccessPoint002"
  L0_2 = L0_2(L1_2)
  L1_2 = Blackboard
  L1_2 = L1_2.GetProp
  L2_2 = "GAME_PROGRESS"
  L3_2 = "ADAMDIALOGUE"
  L1_2 = L1_2(L2_2, L3_2)
  if L0_2 ~= nil and L1_2 ~= nil then
    if L1_2 == "DIAG_ADAM_CAVE_1" then
      L2_2 = L0_2.USABLE
      L3_2 = L2_2
      L2_2 = L2_2.ActiveDialogue
      L4_2 = "DIAG_ADAM_CAVE_2"
      L2_2(L3_2, L4_2)
      L2_2 = Blackboard
      L2_2 = L2_2.SetProp
      L3_2 = "GAME_PROGRESS"
      L4_2 = "ADAMDIALOGUE"
      L5_2 = "s"
      L6_2 = "DIAG_ADAM_CAVE_2"
      L2_2(L3_2, L4_2, L5_2, L6_2)
    elseif L1_2 == "DIAG_ADAM_CAVE_2" then
      L2_2 = Blackboard
      L2_2 = L2_2.GetProp
      L3_2 = "s010_cave"
      L4_2 = "PRP_CV_ThermalDevice:USABLE:Used"
      L2_2 = L2_2(L3_2, L4_2)
      if L2_2 ~= nil then
        L3_2 = L0_2.USABLE
        L4_2 = L3_2
        L3_2 = L3_2.ActiveDialogue
        L5_2 = "DIAG_ADAM_CAVE_3"
        L3_2(L4_2, L5_2)
        L3_2 = Blackboard
        L3_2 = L3_2.SetProp
        L4_2 = "GAME_PROGRESS"
        L5_2 = "ADAMDIALOGUE"
        L6_2 = "s"
        L7_2 = "DIAG_ADAM_CAVE_3"
        L3_2(L4_2, L5_2, L6_2, L7_2)
      end
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
L15_1.OnEnter_AP_02 = L16_1
L15_1 = s010_cave
function L16_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = Elevator
  L3_2 = L3_2.Use
  L4_2 = "c10_samus"
  L5_2 = "s020_magma"
  L6_2 = "ST_FromCave"
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L15_1.OnLE_Platform_Elevator_FromMagma = L16_1
L15_1 = s010_cave
function L16_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = Scenario
  L4_2 = L4_2.SubAreaChangeRequest
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L15_1.SubAreaChangeRequest = L16_1
L15_1 = s010_cave
function L16_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  if A0_2 == "collision_camera_005" and A2_2 == "collision_camera_006" then
    if A4_2 then
      L5_2 = L3_1
      if L5_2 == false then
        L5_2 = Game
        L5_2 = L5_2.SetSubAreasPreferredTransitionType
        L6_2 = "None"
        L5_2(L6_2)
    end
    else
      L5_2 = Scenario
      L5_2 = L5_2.CheckEmmyAlive
      L6_2 = CurrentScenario
      L6_2 = L6_2.oEmmyEntity
      L5_2 = L5_2(L6_2)
      if L5_2 then
        L5_2 = CurrentScenario
        L5_2 = L5_2.oEmmyEntity
        L5_2 = L5_2.bEnabled
        if L5_2 == false then
          L5_2 = L4_1
          if L5_2 == true then
            L5_2 = CurrentScenario
            L5_2 = L5_2.oEmmyEntity
            L5_2.bEnabled = true
            L5_2 = print
            L6_2 = "EMMY REACTIVATION AFTER WAKE-UP CU"
            L5_2(L6_2)
          end
        end
      end
    end
    L5_2 = Game
    L5_2 = L5_2.GetActor
    L6_2 = "cutsceneplayer_37"
    L5_2 = L5_2(L6_2)
    if L5_2 ~= nil then
      L6_2 = L5_2.CUTSCENE
      L7_2 = L6_2
      L6_2 = L6_2.TryLaunchCutscene
      L6_2(L7_2)
    end
  elseif A0_2 == "collision_camera_064" and A2_2 == "collision_camera_074" then
    if A4_2 then
      L5_2 = Game
      L5_2 = L5_2.GetActor
      L6_2 = "TG_EnableSubareaChangeFade_001"
      L5_2 = L5_2(L6_2)
      if L5_2 ~= nil then
        L5_2.bEnabled = false
      end
    end
    L5_2 = Game
    L5_2 = L5_2.GetActor
    L6_2 = "cutsceneplayer_48"
    L5_2 = L5_2(L6_2)
    if L5_2 ~= nil then
      L6_2 = L5_2.CUTSCENE
      L7_2 = L6_2
      L6_2 = L6_2.TryLaunchCutscene
      L6_2(L7_2)
    end
  elseif A0_2 == "collision_camera_002" and A2_2 == "collision_camera_003" then
    L5_2 = Game
    L5_2 = L5_2.GetActor
    L6_2 = "cutsceneplayer_5"
    L5_2 = L5_2(L6_2)
    if L5_2 ~= nil then
      L6_2 = L5_2.CUTSCENE
      L7_2 = L6_2
      L6_2 = L6_2.TryLaunchCutscene
      L6_2(L7_2)
    end
  elseif A0_2 == "collision_camera_000" and A2_2 == "collision_camera_068" then
    L5_2 = Game
    L5_2 = L5_2.GetActor
    L6_2 = "cutsceneplayer_3"
    L5_2 = L5_2(L6_2)
    if L5_2 ~= nil then
      L6_2 = L5_2.CUTSCENE
      L7_2 = L6_2
      L6_2 = L6_2.TryLaunchCutscene
      L6_2(L7_2)
    end
  elseif A0_2 == "collision_camera_073" and A2_2 == "collision_camera_020" then
    L5_2 = Game
    L5_2 = L5_2.GetActor
    L6_2 = "cutsceneplayer_54"
    L5_2 = L5_2(L6_2)
    if L5_2 ~= nil then
      L6_2 = L5_2.CUTSCENE
      L7_2 = L6_2
      L6_2 = L6_2.TryLaunchCutscene
      L6_2(L7_2)
    end
  elseif A0_2 == "collision_camera_049" and A2_2 == "collision_camera_090" then
    L5_2 = Game
    L5_2 = L5_2.GetActor
    L6_2 = "cutsceneplayer_50"
    L5_2 = L5_2(L6_2)
    if L5_2 ~= nil then
      L6_2 = L5_2.CUTSCENE
      L7_2 = L6_2
      L6_2 = L6_2.TryLaunchCutscene
      L6_2(L7_2)
    end
  elseif A0_2 == "collision_camera_003" and A2_2 == "collision_camera_018" then
    L5_2 = Game
    L5_2 = L5_2.GetActor
    L6_2 = "cutsceneplayer_49-1"
    L5_2 = L5_2(L6_2)
    if L5_2 ~= nil then
      L6_2 = L5_2.CUTSCENE
      L7_2 = L6_2
      L6_2 = L6_2.TryLaunchCutscene
      L6_2(L7_2)
    end
  elseif A0_2 == "collision_camera_018" and A2_2 == "collision_camera_005" then
    L5_2 = Game
    L5_2 = L5_2.GetActor
    L6_2 = "cutsceneplayer_49-1"
    L5_2 = L5_2(L6_2)
    if L5_2 ~= nil then
      L6_2 = L5_2.CUTSCENE
      L7_2 = L6_2
      L6_2 = L6_2.HasCutsceneBeenPlayed
      L6_2 = L6_2(L7_2)
      if L6_2 == true then
        L6_2 = Game
        L6_2 = L6_2.GetActor
        L7_2 = "cutsceneplayer_49-2"
        L6_2 = L6_2(L7_2)
        if L6_2 ~= nil then
          L7_2 = L6_2.CUTSCENE
          L8_2 = L7_2
          L7_2 = L7_2.TryLaunchCutscene
          L7_2(L8_2)
        end
      end
    end
    L6_2 = L4_1
    if not L6_2 then
      L6_2 = Scenario
      L6_2 = L6_2.WriteToBlackboard
      L7_2 = Scenario
      L7_2 = L7_2.LUAPropIDs
      L7_2 = L7_2.CAVES_CENTRAL_UNIT_WAKE_UP_CUTSCENE_LAUNCHED
      L8_2 = "b"
      L9_2 = true
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = true
      L4_1 = L6_2
    end
  end
end
L15_1.OnSubAreaChange = L16_1
L15_1 = s010_cave
L16_1 = {}
L17_1 = "TG_ChainReaction_Camera_001"
L18_1 = "TG_ChainReaction_SteamJet_016"
L19_1 = "TG_ChainReaction_SteamJet_017"
L16_1[1] = L17_1
L16_1[2] = L18_1
L16_1[3] = L19_1
L15_1.tTriggersToEnable = L16_1
L15_1 = s010_cave
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = string
  L2_2 = L2_2.gsub
  L3_2 = A0_2.sName
  L4_2 = "TG_ChainReaction_SteamJet_"
  L5_2 = "steammag01_chainreaction_"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = Game
  L3_2 = L3_2.EnableEntityComponent
  L4_2 = L2_2
  L5_2 = "ACTIVATABLE"
  L3_2(L4_2, L5_2)
end
L15_1.OnEnter_ChainReaction_Steamjet = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.PlayCameraFXPreset
  L1_2 = "CHAINREACTION_BIG_EXP"
  L0_2(L1_2)
  L0_2 = Game
  L0_2 = L0_2.PlayPresetSound
  L1_2 = "chainreaction_rumble_sound_03"
  L0_2(L1_2)
  L0_2 = Game
  L0_2 = L0_2.PlayVibration
  L1_2 = "props/chainreaction/chain_reaction_rumble_03.bnvib"
  L2_2 = false
  L0_2(L1_2, L2_2)
end
L15_1.OnEnter_ChainReaction_Steamjet_CameraShake = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.AddSF
  L1_2 = 2.5
  L2_2 = "s010_cave.ChainReaction_Preparation"
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "camRail_PreChain"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L0_2.bEnabled = false
  end
end
L15_1.InitChainReaction = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.PlayCameraFXPreset
  L1_2 = "CHAINREACTION_MED_EXP"
  L0_2(L1_2)
  L0_2 = Game
  L0_2 = L0_2.PlayPresetSound
  L1_2 = "chainreaction_rumble_sound_02"
  L0_2(L1_2)
  L0_2 = Game
  L0_2 = L0_2.PlayVibration
  L1_2 = "props/chainreaction/chain_reaction_rumble_02.bnvib"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = Game
  L0_2 = L0_2.PushSetup
  L1_2 = "ChainReaction"
  L2_2 = true
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = Game
  L0_2 = L0_2.AddSF
  L1_2 = 2
  L2_2 = "s010_cave.ChainReaction_WaterPumpStep1"
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
end
L15_1.ChainReaction_Preparation = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = ipairs
  L1_2 = s010_cave
  L1_2 = L1_2.tTriggersToEnable
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = Game
    L5_2 = L5_2.GetActor
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 ~= nil then
      L5_2.bEnabled = true
    end
  end
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "ev_chainreaction_cv_001"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = Game
    L1_2 = L1_2.PlayCameraFXPreset
    L2_2 = "CHAINREACTION_MED_EXP"
    L1_2(L2_2)
    L1_2 = Game
    L1_2 = L1_2.PlayPresetSound
    L2_2 = "chainreaction_rumble_sound_02"
    L1_2(L2_2)
    L1_2 = Game
    L1_2 = L1_2.PlayVibration
    L2_2 = "props/chainreaction/chain_reaction_rumble_02.bnvib"
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = L0_2.CHAIN_REACTION_ACTION_SWITCHER
    L2_2 = L1_2
    L1_2 = L1_2.ChangeActionAndNavhMeshStage
    L3_2 = "action1"
    L4_2 = "action1"
    L1_2(L2_2, L3_2, L4_2)
  end
end
L15_1.ChainReaction_WaterPumpStep1 = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "ev_chainreaction_cv_fx_006"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L2_2 = L0_2
    L1_2 = L0_2.StartTimeline
    L3_2 = "q_001"
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = Game
  L1_2 = L1_2.GetActor
  L2_2 = "ev_chainreaction_cv_fx_007"
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.StartTimeline
    L4_2 = "q_delay01_001"
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = Game
  L2_2 = L2_2.GetActor
  L3_2 = "ev_chainreaction_cv_fx_011"
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L4_2 = L2_2
    L3_2 = L2_2.StartTimeline
    L5_2 = "q_delay01_002"
    L6_2 = true
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = Game
  L3_2 = L3_2.GetActor
  L4_2 = "ev_chainreaction_cv_fx_008"
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L5_2 = L3_2
    L4_2 = L3_2.StartTimeline
    L6_2 = "q_002"
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
  end
end
L15_1.ChainReaction_Drop_CV_002 = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "ev_chainreaction_cv_003"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = Game
    L1_2 = L1_2.PlayCameraFXPreset
    L2_2 = "CHAINREACTION_MED_EXP"
    L1_2(L2_2)
    L1_2 = Game
    L1_2 = L1_2.PlayPresetSound
    L2_2 = "chainreaction_rumble_sound_02"
    L1_2(L2_2)
    L1_2 = Game
    L1_2 = L1_2.PlayVibration
    L2_2 = "props/chainreaction/chain_reaction_rumble_02.bnvib"
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = L0_2.ACTIVATABLE
    L2_2 = L1_2
    L1_2 = L1_2.Activate
    L1_2(L2_2)
  end
  L1_2 = Game
  L1_2 = L1_2.GetActor
  L2_2 = "ev_chainreaction_cv_fx_001"
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.StartTimeline
    L4_2 = "q_001"
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = Game
  L2_2 = L2_2.GetActor
  L3_2 = "ev_chainreaction_cv_fx_003"
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L4_2 = L2_2
    L3_2 = L2_2.StartTimeline
    L5_2 = "q_delay01_003"
    L6_2 = true
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = Game
  L3_2 = L3_2.GetActor
  L4_2 = "ev_chainreaction_cv_fx_009"
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L5_2 = L3_2
    L4_2 = L3_2.StartTimeline
    L6_2 = "q_002"
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = Game
  L4_2 = L4_2.GetActor
  L5_2 = "ev_chainreaction_cv_fx_010"
  L4_2 = L4_2(L5_2)
  if L4_2 ~= nil then
    L6_2 = L4_2
    L5_2 = L4_2.StartTimeline
    L7_2 = "q_delay01_002"
    L8_2 = true
    L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = Game
  L5_2 = L5_2.GetActor
  L6_2 = "ev_chainreaction_cv_fx_018"
  L5_2 = L5_2(L6_2)
  if L5_2 ~= nil then
    L7_2 = L5_2
    L6_2 = L5_2.StartTimeline
    L8_2 = "q_delay02_001"
    L9_2 = true
    L6_2(L7_2, L8_2, L9_2)
  end
  L6_2 = Game
  L6_2 = L6_2.GetActor
  L7_2 = "ev_chainreaction_cv_fx_015"
  L6_2 = L6_2(L7_2)
  if L6_2 ~= nil then
    L8_2 = L6_2
    L7_2 = L6_2.StartTimeline
    L9_2 = "q_delay02_001"
    L10_2 = true
    L7_2(L8_2, L9_2, L10_2)
  end
  L7_2 = Game
  L7_2 = L7_2.GetActor
  L8_2 = "ev_chainreaction_cv_fx_016"
  L7_2 = L7_2(L8_2)
  if L7_2 ~= nil then
    L9_2 = L7_2
    L8_2 = L7_2.StartTimeline
    L10_2 = "q_delay01_002"
    L11_2 = true
    L8_2(L9_2, L10_2, L11_2)
  end
end
L15_1.ChainReaction_Drop_CV_003 = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "ev_chainreaction_cv_001"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = Game
    L1_2 = L1_2.PlayCameraFXPreset
    L2_2 = "CHAINREACTION_SMALL_EXP"
    L1_2(L2_2)
    L1_2 = L0_2.ANIMATION
    L2_2 = L1_2
    L1_2 = L1_2.SetAction
    L3_2 = "preaction2"
    L1_2(L2_2, L3_2)
  end
end
L15_1.ChainReaction_WaterPumpPreStep2 = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "ev_chainreaction_cv_001"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = Game
    L1_2 = L1_2.PlayCameraFXPreset
    L2_2 = "CHAINREACTION_BIG_EXP"
    L1_2(L2_2)
    L1_2 = Game
    L1_2 = L1_2.PlayPresetSound
    L2_2 = "chainreaction_rumble_sound_03"
    L1_2(L2_2)
    L1_2 = Game
    L1_2 = L1_2.PlayVibration
    L2_2 = "props/chainreaction/chain_reaction_rumble_03.bnvib"
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = L0_2.CHAIN_REACTION_ACTION_SWITCHER
    L2_2 = L1_2
    L1_2 = L1_2.ChangeActionAndNavhMeshStage
    L3_2 = "action2"
    L4_2 = "action2"
    L1_2(L2_2, L3_2, L4_2)
  end
end
L15_1.ChainReaction_WaterPumpStep2 = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "ev_chainreaction_cv_001"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = Game
    L1_2 = L1_2.PlayCameraFXPreset
    L2_2 = "CHAINREACTION_SMALL_EXP"
    L1_2(L2_2)
    L1_2 = Game
    L1_2 = L1_2.PlayPresetSound
    L2_2 = "chainreaction_rumble_sound_01"
    L1_2(L2_2)
    L1_2 = Game
    L1_2 = L1_2.PlayVibration
    L2_2 = "props/chainreaction/chain_reaction_rumble_01.bnvib"
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = L0_2.ANIMATION
    L2_2 = L1_2
    L1_2 = L1_2.SetAction
    L3_2 = "preaction3"
    L1_2(L2_2, L3_2)
  end
end
L15_1.ChainReaction_WaterPumpPreStep3 = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "ev_chainreaction_cv_001"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = Game
    L1_2 = L1_2.PlayCameraFXPreset
    L2_2 = "CHAINREACTION_BIG_EXP"
    L1_2(L2_2)
    L1_2 = Game
    L1_2 = L1_2.PlayPresetSound
    L2_2 = "chainreaction_rumble_sound_03"
    L1_2(L2_2)
    L1_2 = Game
    L1_2 = L1_2.PlayVibration
    L2_2 = "props/chainreaction/chain_reaction_rumble_03.bnvib"
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = L0_2.CHAIN_REACTION_ACTION_SWITCHER
    L2_2 = L1_2
    L1_2 = L1_2.ChangeActionAndNavhMeshStage
    L3_2 = "action3"
    L4_2 = "action3"
    L1_2(L2_2, L3_2, L4_2)
  end
end
L15_1.ChainReaction_WaterPumpStep3 = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "ev_chainreaction_cv_005"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = Game
    L1_2 = L1_2.PlayCameraFXPreset
    L2_2 = "CHAINREACTION_MED_EXP"
    L1_2(L2_2)
    L1_2 = Game
    L1_2 = L1_2.PlayPresetSound
    L2_2 = "chainreaction_rumble_sound_02"
    L1_2(L2_2)
    L1_2 = Game
    L1_2 = L1_2.PlayVibration
    L2_2 = "props/chainreaction/chain_reaction_rumble_02.bnvib"
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = L0_2.ACTIVATABLE
    L2_2 = L1_2
    L1_2 = L1_2.Activate
    L1_2(L2_2)
  end
  L1_2 = Game
  L1_2 = L1_2.GetActor
  L2_2 = "ev_chainreaction_cv_fx_004"
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.StartTimeline
    L4_2 = "q_001"
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = Game
  L2_2 = L2_2.GetActor
  L3_2 = "ev_chainreaction_cv_fx_000"
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L4_2 = L2_2
    L3_2 = L2_2.StartTimeline
    L5_2 = "q_delay01_001"
    L6_2 = true
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = Game
  L3_2 = L3_2.GetActor
  L4_2 = "ev_chainreaction_cv_fx_005"
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L5_2 = L3_2
    L4_2 = L3_2.StartTimeline
    L6_2 = "q_delay02_003"
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = Game
  L4_2 = L4_2.GetActor
  L5_2 = "ev_chainreaction_cv_fx_002"
  L4_2 = L4_2(L5_2)
  if L4_2 ~= nil then
    L6_2 = L4_2
    L5_2 = L4_2.StartTimeline
    L7_2 = "q_002"
    L8_2 = true
    L5_2(L6_2, L7_2, L8_2)
  end
end
L15_1.ChainReaction_Drop_CV_005 = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "ev_chainreaction_cv_fx_014"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L2_2 = L0_2
    L1_2 = L0_2.StartTimeline
    L3_2 = "q_001"
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = Game
  L1_2 = L1_2.GetActor
  L2_2 = "ev_chainreaction_cv_fx_012"
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.StartTimeline
    L4_2 = "q_003"
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = Game
  L2_2 = L2_2.GetActor
  L3_2 = "ev_chainreaction_cv_fx_013"
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L4_2 = L2_2
    L3_2 = L2_2.StartTimeline
    L5_2 = "q_004"
    L6_2 = true
    L3_2(L4_2, L5_2, L6_2)
  end
end
L15_1.ChainReaction_Drop_CV_006 = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.StopCameraFXPreset
  L1_2 = "CHAINREACTION_SOFT"
  L0_2(L1_2)
  L0_2 = Game
  L0_2 = L0_2.PlayCameraFXPreset
  L1_2 = "QUEEN_SHAKING_JUMP"
  L0_2(L1_2)
  L0_2 = Game
  L0_2 = L0_2.PlayPresetSound
  L1_2 = "events/chainreaction_bigexplosion"
  L0_2(L1_2)
  L0_2 = Game
  L0_2 = L0_2.PlayVibration
  L1_2 = "props/chainreaction/chainreaction_bigexplosion.bnvib"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "env_heat_gen_001_CR_END"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L0_2.bEnabled = true
    L1_2 = L0_2.ACTIVATABLE
    L2_2 = L1_2
    L1_2 = L1_2.Activate
    L3_2 = 1
    L1_2(L2_2, L3_2)
  end
end
L15_1.ChainReaction_BigExplosion = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = Game
  L0_2 = L0_2.PopSetup
  L1_2 = "ChainReaction"
  L2_2 = true
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = Game
  L0_2 = L0_2.PushSetup
  L1_2 = "Post_ChainReaction"
  L2_2 = true
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "ev_chainreaction_cv_004"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.CHANGE_STAGE_NAVMESH_ITEM
    L2_2 = L1_2
    L1_2 = L1_2.RefreshNavMeshState
    L1_2(L2_2)
  end
  L1_2 = Game
  L1_2 = L1_2.GetActor
  L2_2 = "ev_chainreaction_cv_004_a"
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.CHANGE_STAGE_NAVMESH_ITEM
    L3_2 = L2_2
    L2_2 = L2_2.RefreshNavMeshState
    L2_2(L3_2)
  end
  L2_2 = Game
  L2_2 = L2_2.GetActor
  L3_2 = "ev_chainreaction_cv_009"
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.CHANGE_STAGE_NAVMESH_ITEM
    L4_2 = L3_2
    L3_2 = L3_2.RefreshNavMeshState
    L3_2(L4_2)
  end
  L3_2 = Game
  L3_2 = L3_2.GetActor
  L4_2 = "ev_chainreaction_cv_010"
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L4_2 = L3_2.CHANGE_STAGE_NAVMESH_ITEM
    L5_2 = L4_2
    L4_2 = L4_2.RefreshNavMeshState
    L4_2(L5_2)
  end
  L4_2 = Game
  L4_2 = L4_2.GetActor
  L5_2 = "db_reg_cv_022"
  L4_2 = L4_2(L5_2)
  if L4_2 ~= nil then
    L5_2 = L4_2.NAVMESHITEM
    L6_2 = L5_2
    L5_2 = L5_2.OverrideInitialStage
    L7_2 = "initial"
    L5_2(L6_2, L7_2)
    L5_2 = L4_2.NAVMESHITEM
    L6_2 = L5_2
    L5_2 = L5_2.ChangeStage
    L7_2 = "initial"
    L5_2(L6_2, L7_2)
  end
end
L15_1.ChainReaction_ChangeFinalSetup = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.PlayCameraFXPreset
  L1_2 = "CHAINREACTION_SOFT"
  L0_2(L1_2)
end
L15_1.ShakingCameraDelayed = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.PlayCameraFXPreset
  L1_2 = "CHAINREACTION_BIG_EXP"
  L0_2(L1_2)
  L0_2 = Game
  L0_2 = L0_2.PlayPresetSound
  L1_2 = "chainreaction_rumble_sound_03"
  L0_2(L1_2)
  L0_2 = Game
  L0_2 = L0_2.PlayVibration
  L1_2 = "props/chainreaction/chain_reaction_rumble_03.bnvib"
  L2_2 = false
  L0_2(L1_2, L2_2)
end
L15_1.ShakingCameraHeatCompleted = L16_1
L15_1 = s010_cave
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = string
  L2_2 = L2_2.gsub
  L3_2 = A0_2.sName
  L4_2 = "TG_ChainReaction_Camera_"
  L5_2 = "collision_camera_CR_"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = Game
  L3_2 = L3_2.SetCollisionCameraLocked
  L4_2 = L2_2
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = Game
  L3_2 = L3_2.StopCameraFXPreset
  L4_2 = "CHAINREACTION_SOFT"
  L3_2(L4_2)
  L3_2 = string
  L3_2 = L3_2.gsub
  L4_2 = A0_2.sName
  L5_2 = "TG_ChainReaction_Camera_"
  L6_2 = "env_heat_gen_001_CR_"
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = Game
  L4_2 = L4_2.GetActor
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L12_1 = L3_2
  if L4_2 ~= nil then
    L5_2 = L4_2.bEnabled
    if L5_2 == false then
      L4_2.bEnabled = true
      L5_2 = 4
      L6_2 = 4
      if L3_2 == "env_heat_gen_001_CR_001" then
        L7_2 = Game
        L7_2 = L7_2.AddSF
        L8_2 = 4
        L9_2 = "s010_cave.ChainReaction_HeatZone_001_Activated"
        L10_2 = ""
        L7_2(L8_2, L9_2, L10_2)
        L5_2 = 4
        L6_2 = 8
      elseif L3_2 == "env_heat_gen_001_CR_002" then
        L7_2 = Game
        L7_2 = L7_2.AddSF
        L8_2 = 4
        L9_2 = "s010_cave.ChainReaction_HeatZone_002_Activated"
        L10_2 = ""
        L7_2(L8_2, L9_2, L10_2)
        L5_2 = 4
        L6_2 = 8
      elseif L3_2 == "env_heat_gen_001_CR_003" then
        L7_2 = Game
        L7_2 = L7_2.AddSF
        L8_2 = 11
        L9_2 = "s010_cave.ChainReaction_HeatZone_003_Activated"
        L10_2 = ""
        L7_2(L8_2, L9_2, L10_2)
        L5_2 = 11
        L6_2 = 15
      elseif L3_2 == "env_heat_gen_001_CR_004" then
        L7_2 = Game
        L7_2 = L7_2.AddSF
        L8_2 = 6
        L9_2 = "s010_cave.ChainReaction_HeatZone_004_Activated"
        L10_2 = ""
        L7_2(L8_2, L9_2, L10_2)
        L5_2 = 6
        L6_2 = 10
      elseif L3_2 == "env_heat_gen_001_CR_005" then
        L7_2 = Game
        L7_2 = L7_2.AddSF
        L8_2 = 6
        L9_2 = "s010_cave.ChainReaction_HeatZone_005_Activated"
        L10_2 = ""
        L7_2(L8_2, L9_2, L10_2)
        L5_2 = 6
        L6_2 = 10
      end
    else
      if L3_2 == "env_heat_gen_001_CR_001" then
        L5_2 = L7_1
        if L5_2 then
          L5_2 = s010_cave
          L5_2 = L5_2.ShakingCameraDelayed
          L5_2()
      end
      else
        if L3_2 == "env_heat_gen_001_CR_002" then
          L5_2 = L8_1
          if L5_2 then
            L5_2 = s010_cave
            L5_2 = L5_2.ShakingCameraDelayed
            L5_2()
        end
        else
          if L3_2 == "env_heat_gen_001_CR_003" then
            L5_2 = L9_1
            if L5_2 then
              L5_2 = s010_cave
              L5_2 = L5_2.ShakingCameraDelayed
              L5_2()
          end
          else
            if L3_2 == "env_heat_gen_001_CR_004" then
              L5_2 = L10_1
              if L5_2 then
                L5_2 = s010_cave
                L5_2 = L5_2.ShakingCameraDelayed
                L5_2()
            end
            elseif L3_2 == "env_heat_gen_001_CR_005" then
              L5_2 = L11_1
              if L5_2 then
                L5_2 = s010_cave
                L5_2 = L5_2.ShakingCameraDelayed
                L5_2()
              end
            end
          end
        end
      end
    end
  end
end
L15_1.OnEnter_ChainReaction_ChangeCamera = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2
  L0_2 = true
  L7_1 = L0_2
  L0_2 = L12_1
  if L0_2 == "env_heat_gen_001_CR_001" then
    L0_2 = s010_cave
    L0_2 = L0_2.ShakingCameraDelayed
    L0_2()
  end
end
L15_1.ChainReaction_HeatZone_001_Activated = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2
  L0_2 = true
  L8_1 = L0_2
  L0_2 = L12_1
  if L0_2 == "env_heat_gen_001_CR_002" then
    L0_2 = s010_cave
    L0_2 = L0_2.ShakingCameraDelayed
    L0_2()
  end
end
L15_1.ChainReaction_HeatZone_002_Activated = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2
  L0_2 = true
  L9_1 = L0_2
  L0_2 = L12_1
  if L0_2 == "env_heat_gen_001_CR_003" then
    L0_2 = s010_cave
    L0_2 = L0_2.ShakingCameraDelayed
    L0_2()
  end
end
L15_1.ChainReaction_HeatZone_003_Activated = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2
  L0_2 = true
  L10_1 = L0_2
  L0_2 = L12_1
  if L0_2 == "env_heat_gen_001_CR_004" then
    L0_2 = s010_cave
    L0_2 = L0_2.ShakingCameraDelayed
    L0_2()
  end
end
L15_1.ChainReaction_HeatZone_004_Activated = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2
  L0_2 = true
  L11_1 = L0_2
  L0_2 = L12_1
  if L0_2 == "env_heat_gen_001_CR_005" then
    L0_2 = s010_cave
    L0_2 = L0_2.ShakingCameraDelayed
    L0_2()
  end
end
L15_1.ChainReaction_HeatZone_005_Activated = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_CR_001"
  L2_2 = false
  L0_2(L1_2, L2_2)
end
L15_1.OnEnter_ChainReaction_ChangeCamera_000 = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.SetCollisionCameraLocked
  L1_2 = "collision_camera_CR_005"
  L2_2 = false
  L0_2(L1_2, L2_2)
end
L15_1.OnEnter_ChainReaction_ChangeCamera_006 = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "TG_PROTOEMMY_BEHAVIOR_002"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L0_2.bEnabled = false
  end
  L1_2 = Game
  L1_2 = L1_2.GetActor
  L2_2 = "TG_PROTOEMMY_BEHAVIOR_001"
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L1_2.bEnabled = false
  end
  L2_2 = Game
  L2_2 = L2_2.GetActor
  L3_2 = "TG_PROTOEMMY_BEHAVIOR_003"
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L2_2.bEnabled = true
  end
  L3_2 = Game
  L3_2 = L3_2.GetActor
  L4_2 = "TG_PROTOEMMY_BEHAVIOR"
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L3_2.bEnabled = false
  end
end
L15_1.OnEnter_StartCUProtoEmmy = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "TG_PROTOEMMY_BEHAVIOR_002"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L0_2.bEnabled = true
  end
  L1_2 = Game
  L1_2 = L1_2.GetActor
  L2_2 = "TG_PROTOEMMY_BEHAVIOR_001"
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L1_2.bEnabled = true
  end
  L2_2 = Game
  L2_2 = L2_2.GetActor
  L3_2 = "TG_PROTOEMMY_BEHAVIOR_003"
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L2_2.bEnabled = false
  end
  L3_2 = Game
  L3_2 = L3_2.GetActor
  L4_2 = "TG_PROTOEMMY_BEHAVIOR"
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L3_2.bEnabled = true
  end
end
L15_1.OnEnter_EndCUProtoEmmy = L16_1
L15_1 = s010_cave
function L16_1(A0_2)
  local L1_2, L2_2
  L1_2 = Game
  L1_2 = L1_2.SetCooldownFlag
  L2_2 = A0_2
  L1_2(L2_2)
end
L15_1.SetCooldownFlag = L16_1
L15_1 = s010_cave
function L16_1(A0_2)
  local L1_2, L2_2
  L1_2 = Game
  L1_2 = L1_2.GetCooldownFlag
  L2_2 = A0_2
  L1_2(L2_2)
end
L15_1.GetCooldownFlag = L16_1
L15_1 = s010_cave
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2.bEnabled = false
  L2_2 = Game
  L2_2 = L2_2.AddSF
  L3_2 = 0.8
  L4_2 = "s010_cave.Delayed_CoolDownEventCutscenePlaceholder"
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
    L7_2 = "CoolDownCutscene"
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end
L15_1.OnEnter_CoolDownEvent = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = GUI
  L0_2 = L0_2.ShowMessage
  L1_2 = "#CUT_COOLDOWN"
  L2_2 = true
  L3_2 = "s010_cave.Skipped_CoolDownEventCutscenePlaceholder"
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
    L5_2 = "CoolDownCutscene"
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L15_1.Delayed_CoolDownEventCutscenePlaceholder = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2
  L0_2 = s010_cave
  L0_2 = L0_2.Cooldown_Activation
  L0_2()
end
L15_1.Skipped_CoolDownEventCutscenePlaceholder = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.GetCurrentGameModeID
  L0_2 = L0_2()
  if L0_2 ~= "EDITOR" then
    L0_2 = Game
    L0_2 = L0_2.SetCooldownFlag
    L1_2 = true
    L0_2(L1_2)
    L0_2 = L5_1
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
      L1_2 = L1_2.CAVES_COOLDOWN_APPLIED
      L2_2 = "b"
      L3_2 = true
      L0_2(L1_2, L2_2, L3_2)
      L0_2 = true
      L5_1 = L0_2
      L0_2 = Game
      L0_2 = L0_2.GetActor
      L1_2 = "elevator_aqua_000_platform"
      L0_2 = L0_2(L1_2)
      if L0_2 ~= nil then
        L0_2.bEnabled = false
      end
    end
  end
end
L15_1.Cooldown_Activation = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L5_1
  if L0_2 == true then
    L0_2 = Game
    L0_2 = L0_2.PopSetup
    L1_2 = "Cooldown"
    L2_2 = true
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = Scenario
    L0_2 = L0_2.WriteToBlackboard
    L1_2 = Scenario
    L1_2 = L1_2.LUAPropIDs
    L1_2 = L1_2.CAVES_COOLDOWN_APPLIED
    L2_2 = "b"
    L3_2 = false
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = false
    L5_1 = L0_2
  end
end
L15_1.Cooldown_Deactivation = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = Blackboard
  L0_2 = L0_2.GetProp
  L1_2 = "GAME_PROGRESS"
  L2_2 = "CUTSCENE_THEATRE_CUTSCENE"
  L0_2 = L0_2(L1_2, L2_2)
end
L15_1.OnCutsceneTheater = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "cutsceneplayer_5"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.CUTSCENE
    L2_2 = L1_2
    L1_2 = L1_2.SetTakePlayMode
    L3_2 = 4
    L4_2 = "Loop"
    L1_2(L2_2, L3_2, L4_2)
  end
end
L15_1.OnBefore_Cutscene_5_Begins = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "cutsceneplayer_5"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.CUTSCENE
    L2_2 = L1_2
    L1_2 = L1_2.TryLaunchCutscene
    L1_2(L2_2)
  end
end
L15_1.OnBegin_Cutscene_5 = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "cutsceneplayer_5"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.CUTSCENE
    L2_2 = L1_2
    L1_2 = L1_2.ContinueCutsceneIfTakeLooped
    L1_2(L2_2)
  end
end
L15_1.OnMeleeTutorialInputPressed = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.FadeIn
  L1_2 = 0
  L2_2 = 0.5
  L0_2(L1_2, L2_2)
end
L15_1.OnCutscene0049_01Ended = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.FadeIn
  L1_2 = 0
  L2_2 = 0.5
  L0_2(L1_2, L2_2)
end
L15_1.OnCutscene0049_02Ended = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2
end
L15_1.OnCutscene0050_Ended = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2
end
L15_1.OpenTrapDoorCutscene50 = L16_1
L15_1 = s010_cave
function L16_1(A0_2)
  local L1_2
  L1_2 = A0_2.sName
  if L1_2 == "DoorEmmy11" then
    L1_2 = L4_1
    if not L1_2 then
      L1_2 = false
      return L1_2
  end
  else
    L1_2 = true
    return L1_2
  end
end
L15_1.Check_WakeUpCU_Completed = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "Door058 (PW-PW)"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.LIFE
    L2_2 = L1_2
    L1_2 = L1_2.ForceOpenDoor
    L3_2 = false
    L4_2 = "0034protoemmyappears"
    L1_2(L2_2, L3_2, L4_2)
  end
end
L15_1.OnCutscene34Ended = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "LE_GateProtoEmmy"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.ANIMATION
    L2_2 = L1_2
    L1_2 = L1_2.SetAction
    L3_2 = "close"
    L1_2(L2_2, L3_2)
  end
end
L15_1.CloseProtoEmmyCeilingGate = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "Door058 (PW-PW)"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = Game
    L1_2 = L1_2.SetActorVolumeOverride
    L2_2 = "Door058 (PW-PW)"
    L3_2 = 0
    L4_2 = 0
    L5_2 = "ALL"
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = L0_2.LIFE
    L2_2 = L1_2
    L1_2 = L1_2.ForceOpenDoor
    L3_2 = true
    L4_2 = "0034protoemmyappears"
    L1_2(L2_2, L3_2, L4_2)
  end
end
L15_1.OpenProtoEmmyCorridorPowerDoor = L16_1
L15_1 = s010_cave
function L16_1()
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
  L2_2 = "ITEM_VARIA_SUIT"
  L3_2 = 1
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Game
  L0_2 = L0_2.SetSendReports
  L1_2 = true
  L0_2(L1_2)
end
L15_1.SetVariaSuitForCutscene = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Game
  L0_2 = L0_2.GetPlayer
  L0_2 = L0_2()
  L0_2 = L0_2.INVENTORY
  L1_2 = L0_2
  L0_2 = L0_2.SetItemAmount
  L2_2 = "ITEM_VARIA_SUIT"
  L3_2 = 0
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Game
  L0_2 = L0_2.GetPlayer
  L0_2 = L0_2()
  L0_2 = L0_2.MODELUPDATER
  L0_2.sModelAlias = "Default"
  L0_2 = Game
  L0_2 = L0_2.GetPlayer
  L0_2 = L0_2()
  L0_2 = L0_2.MODELUPDATER
  L1_2 = L0_2
  L0_2 = L0_2.ForceUpdate
  L0_2(L1_2)
end
L15_1.RemoveVariaSuitForCutscene = L16_1
L15_1 = s010_cave
function L16_1()
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
  L2_2 = "ITEM_WEAPON_PLASMA_BEAM"
  L3_2 = 1
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Game
  L0_2 = L0_2.SetSendReports
  L1_2 = true
  L0_2(L1_2)
end
L15_1.SetPlasmaBeamForCutscene = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Game
  L0_2 = L0_2.GetPlayer
  L0_2 = L0_2()
  L0_2 = L0_2.INVENTORY
  L1_2 = L0_2
  L0_2 = L0_2.SetItemAmount
  L2_2 = "ITEM_WEAPON_PLASMA_BEAM"
  L3_2 = 0
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
L15_1.RemovePlasmaBeamForCutscene = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2
  L0_2 = s010_cave
  L0_2 = L0_2.RemoveVariaSuitForCutscene
  L0_2()
  L0_2 = s010_cave
  L0_2 = L0_2.RemovePlasmaBeamForCutscene
  L0_2()
end
L15_1.OnBeforeCutscene0001FlashbackEndStarted = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2
  L0_2 = s010_cave
  L0_2 = L0_2.SetVariaSuitForCutscene
  L0_2()
  L0_2 = s010_cave
  L0_2 = L0_2.SetPlasmaBeamForCutscene
  L0_2()
end
L15_1.OnBeforeCutscene0001IntroLandingStarted = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2
  L0_2 = s010_cave
  L0_2 = L0_2.SetVariaSuitForCutscene
  L0_2()
  L0_2 = s010_cave
  L0_2 = L0_2.SetPlasmaBeamForCutscene
  L0_2()
end
L15_1.OnBeforeCutscene0001IntroSpaceStarted = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2
  L0_2 = s010_cave
  L0_2 = L0_2.RemoveVariaSuitForCutscene
  L0_2()
  L0_2 = s010_cave
  L0_2 = L0_2.RemovePlasmaBeamForCutscene
  L0_2()
end
L15_1.OnBeforeCutscene0001FlashbackInitStarted = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2
  L0_2 = s010_cave
  L0_2 = L0_2.SwapScorpiusStatues
  L0_2()
end
L15_1.OnCutscene0057Ended = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.ResetAndStopUpdateSpecialEnergy
  L0_2()
end
L15_1.OnCutscene0057Finished = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "SG_Scorpius"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = print
    L2_2 = L0_2.SPAWNGROUP
    L2_2 = L2_2.iNumDeaths
    L1_2(L2_2)
    L1_2 = L0_2.SPAWNGROUP
    L1_2 = L1_2.iNumDeaths
    if 0 < L1_2 then
      L1_2 = s010_cave
      L1_2 = L1_2.SwapScorpiusStatues
      L1_2()
    end
  end
end
L15_1.CheckScorpiusDead = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "cut_54_scorpiusstatue"
  L0_2 = L0_2(L1_2)
  L1_2 = Game
  L1_2 = L1_2.GetActor
  L2_2 = "ev_scorpiusstatue_end"
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L1_2.bEnabled = true
  end
  if L0_2 ~= nil then
    L0_2.bEnabled = false
  end
end
L15_1.SwapScorpiusStatues = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "elevator_with_cutscene_aqua_000"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.USABLE
    L1_2.bFadeInActived = false
  end
end
L15_1.OnCutscene0007Finished = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "SP_Scorpius_scorpius"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.AI
    L2_2 = L1_2
    L1_2 = L1_2.NotifyAfterPresentation
    L1_2(L2_2)
  end
end
L15_1.OnScorpiusPresentationFinished = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.StopMusic
  L1_2 = true
  L0_2(L1_2)
end
L15_1.OnScorpiusPresentationSkipped = L16_1
L15_1 = s010_cave
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Game
  L2_2 = L2_2.PopSetup
  L3_2 = "Scorpius_Event"
  L4_2 = true
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = Game
  L2_2 = L2_2.GetActor
  L3_2 = "SG_Bigfist_000"
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.SPAWNGROUP
    L4_2 = L3_2
    L3_2 = L3_2.EnableSpawnGroup
    L3_2(L4_2)
  end
  L3_2 = Game
  L3_2 = L3_2.GetActor
  L4_2 = "SG_ScorpiusEventEnemies"
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L4_2 = L3_2.SPAWNGROUP
    L5_2 = L4_2
    L4_2 = L4_2.DisableSpawnGroup
    L4_2(L5_2)
  end
  L4_2 = Game
  L4_2 = L4_2.GetActor
  L5_2 = "TG_EnableEnemiesAfterScorpiusTail"
  L4_2 = L4_2(L5_2)
  if L4_2 ~= nil then
    L4_2.bEnabled = true
  end
  A0_2.bEnabled = false
end
L15_1.OnEnter_FinishScorpiusEvent = L16_1
L15_1 = s010_cave
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = Game
  L2_2 = L2_2.GetActor
  L3_2 = "SG_ScorpiusEventEnemies"
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.SPAWNGROUP
    L4_2 = L3_2
    L3_2 = L3_2.EnableSpawnGroup
    L3_2(L4_2)
  end
  A0_2.bEnabled = false
end
L15_1.OnEnter_EnableEnemiesAfterScorpiusTail = L16_1
L15_1 = s010_cave
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = print
  L3_2 = "INIT SCORPIUS ANIMATION EVENT"
  L2_2(L3_2)
  L2_2 = Game
  L2_2 = L2_2.PushSetup
  L3_2 = "Scorpius_Event"
  L4_2 = true
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  A0_2.bEnabled = false
end
L15_1.OnEnter_InitScorpiusEvent = L16_1
L15_1 = s010_cave
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = print
  L3_2 = "ScorpiusFirstAppearance"
  L2_2(L3_2)
  L2_2 = Game
  L2_2 = L2_2.PushSetup
  L3_2 = "ScorpiusFirstAppearance"
  L4_2 = true
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  A0_2.bEnabled = false
end
L15_1.OnEnter_ScorpiusFirstShown = L16_1
L15_1 = s010_cave
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Game
  L2_2 = L2_2.GetActor
  L3_2 = "SG_PostEmmy_002"
  L2_2 = L2_2(L3_2)
  L3_2 = Game
  L3_2 = L3_2.GetActor
  L4_2 = "SG_PostEmmy_003"
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
L15_1.OnEnter_ActivatePostEmmyEnemies = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "PRP_CV_AccessPoint001_WeightPlate"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.SMARTOBJECT
    L2_2 = L1_2
    L1_2 = L1_2.SetStateDuringFakeAdamDialogueCutScene
    L1_2(L2_2)
  end
end
L15_1.FakeAdamDialogueWeightPlate = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "PRP_CV_AccessPoint001_WeightPlate"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.SMARTOBJECT
    L2_2 = L1_2
    L1_2 = L1_2.SetStateAfterCutScene
    L1_2(L2_2)
  end
  L1_2 = Blackboard
  L1_2 = L1_2.SetProp
  L2_2 = "GAME_PROGRESS"
  L3_2 = "ADAMDIALOGUE"
  L4_2 = "s"
  L5_2 = "DIAG_ADAM_CAVE_1"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = Blackboard
  L1_2 = L1_2.SetProp
  L2_2 = "GAME_PROGRESS"
  L3_2 = "SHOWADAMDIALOGUE"
  L4_2 = "b"
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L15_1.FakeAdamDialogueBegins = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "PRP_CV_AccessPoint001"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.USABLE
    L2_2 = L1_2
    L1_2 = L1_2.Discover
    L3_2 = true
    L1_2(L2_2, L3_2)
    L2_2 = L0_2
    L1_2 = L0_2.StartTimeline
    L3_2 = "discovernotransition"
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
  end
end
L15_1.DiscoverAccessPointOnCutScene = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "PRP_CV_AccessPoint001"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.USABLE
    L2_2 = L1_2
    L1_2 = L1_2.Discover
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L15_1.DiscoverNotransitionAccessPointOnCutScene = L16_1
L15_1 = s010_cave
function L16_1()
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
L15_1.Enter_CWX_Arena = L16_1
L15_1 = s010_cave
function L16_1()
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
L15_1.Exit_CWX_Arena = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "TG_AfterScorpiusBattle"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L0_2.bEnabled = true
  end
  L1_2 = Game
  L1_2 = L1_2.GetActor
  L2_2 = "TG_ActivateArenaSpawngroup"
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L1_2.bEnabled = true
  end
end
L15_1.EnablePostScorpiusTrigger = L16_1
L15_1 = s010_cave
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Game
  L2_2 = L2_2.GetActor
  L3_2 = "Door062 (PW-PW, Special)"
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.LIFE
  L3_2 = L2_2
  L2_2 = L2_2.UnLockDoor
  L2_2(L3_2)
  L2_2 = Game
  L2_2 = L2_2.PopSetup
  L3_2 = "SP_Scorpius_scorpius_Boss_Defeated"
  L4_2 = true
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = Game
  L2_2 = L2_2.PushSetup
  L3_2 = "PostScorpius"
  L4_2 = true
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  A0_2.bEnabled = false
end
L15_1.OnEnter_ScorpiusArenaAfterBattle = L16_1
L15_1 = s010_cave
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = Game
  L2_2 = L2_2.GetActor
  L3_2 = "SG_Bigfist_007"
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.SPAWNGROUP
    L4_2 = L3_2
    L3_2 = L3_2.EnableSpawnGroup
    L3_2(L4_2)
  end
  A0_2.bEnabled = false
end
L15_1.OnEnter_ActivateArenaSpawngroup = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.AddSF
  L1_2 = 3
  L2_2 = "s010_cave.ActivationMeleeTutoReminder_delayed"
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
end
L15_1.ActivationMeleeTutoReminder = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.AddSF
  L1_2 = 2
  L2_2 = "s010_cave.ActivationMeleeTutoReminder_02_delayed"
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
end
L15_1.ActivationMeleeTutoReminder_02 = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.AddSF
  L1_2 = 2
  L2_2 = "s010_cave.ActivationMeleeTutoReminder_03_delayed"
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
end
L15_1.ActivationMeleeTutoReminder_03 = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "MeleeTutoTriggerEnter"
  L0_2 = L0_2(L1_2)
  L1_2 = Game
  L1_2 = L1_2.GetActor
  L2_2 = "MeleeTutoTriggerExit"
  L1_2 = L1_2(L2_2)
  if L0_2 ~= nil and L1_2 ~= nil then
    L0_2.bEnabled = true
    L1_2.bEnabled = true
  end
  L2_2 = Game
  L2_2 = L2_2.GetActor
  L3_2 = "MeleeTutoTriggerExit_002"
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L2_2.bEnabled = true
  end
  L3_2 = Game
  L3_2 = L3_2.GetActor
  L4_2 = "MeleeTutoTriggerExit_003"
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L3_2.bEnabled = true
  end
end
L15_1.ActivationMeleeTutoReminder_delayed = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "MeleeTutoTriggerEnter_002"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L0_2.bEnabled = true
  end
end
L15_1.ActivationMeleeTutoReminder_02_delayed = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "MeleeTutoTriggerEnter_003"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L0_2.bEnabled = true
  end
end
L15_1.ActivationMeleeTutoReminder_03_delayed = L16_1
L15_1 = s010_cave
function L16_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.sName
  if L1_2 == "PRP_CV_AccessPoint001" then
    L1_2 = s010_cave
    L1_2 = L1_2.OnTutoMapOptionsBegins
    L2_2 = true
    L1_2(L2_2)
  else
    L1_2 = A0_2.sName
    if L1_2 == "PRP_CV_MapStation001" then
      L1_2 = s010_cave
      L1_2 = L1_2.OnTutoMapRoomBegins
      L2_2 = true
      L1_2(L2_2)
    end
  end
end
L15_1.OnUsableFinishInteract = L16_1
L15_1 = s010_cave
function L16_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.sName
  if L1_2 == "PRP_CV_AccessPoint001" then
    L1_2 = s010_cave
    L1_2 = L1_2.OnTutoMapOptionsBegins
    L2_2 = true
    L1_2(L2_2)
  else
    L1_2 = A0_2.sName
    if L1_2 == "PRP_CV_MapStation001" then
      L1_2 = s010_cave
      L1_2 = L1_2.OnTutoMapRoomBegins
      L2_2 = true
      L1_2(L2_2)
    end
  end
end
L15_1.OnUsableCancelUse = L16_1
L15_1 = s010_cave
function L16_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.sName
  if L1_2 == "PRP_CV_AccessPoint001" then
    L1_2 = s010_cave
    L1_2 = L1_2.OnTutoMapOptionsBegins
    L2_2 = false
    L1_2(L2_2)
  else
    L1_2 = A0_2.sName
    if L1_2 == "PRP_CV_MapStation001" then
      L1_2 = s010_cave
      L1_2 = L1_2.OnTutoMapRoomBegins
      L2_2 = false
      L1_2(L2_2)
    end
  end
end
L15_1.OnUsablePrepareUse = L16_1
L15_1 = s010_cave
function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.sName
  if L1_2 == "LE_Elevator_FromMagma" then
    L1_2 = L14_1
    if not L1_2 then
      L1_2 = Scenario
      L1_2 = L1_2.WriteToBlackboard
      L2_2 = Scenario
      L2_2 = L2_2.LUAPropIDs
      L2_2 = L2_2.CAVES_TUTO_MAP_ROOM_DONE
      L3_2 = "b"
      L4_2 = true
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L15_1.OnUsableUse = L16_1
L15_1 = s010_cave
function L16_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Game
  L1_2 = L1_2.GetActor
  L2_2 = "MapOptionsTutoTriggerEnter"
  L1_2 = L1_2(L2_2)
  L2_2 = Game
  L2_2 = L2_2.GetActor
  L3_2 = "MapOptionsTutoTriggerExit"
  L2_2 = L2_2(L3_2)
  if L1_2 ~= nil and L2_2 ~= nil then
    L3_2 = L13_1
    if not L3_2 and A0_2 then
      L1_2.bEnabled = true
      L2_2.bEnabled = true
    else
      L1_2.bEnabled = false
      L2_2.bEnabled = false
    end
  end
end
L15_1.OnTutoMapOptionsBegins = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Scenario
  L0_2 = L0_2.WriteToBlackboard
  L1_2 = Scenario
  L1_2 = L1_2.LUAPropIDs
  L1_2 = L1_2.CAVES_TUTO_MAP_DONE
  L2_2 = "b"
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = true
  L13_1 = L0_2
  L0_2 = print
  L1_2 = L13_1
  L0_2(L1_2)
end
L15_1.OnTutoMapOptionsEnds = L16_1
L15_1 = s010_cave
function L16_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Game
  L1_2 = L1_2.GetActor
  L2_2 = "MapRoomTutoTriggerEnter"
  L1_2 = L1_2(L2_2)
  L2_2 = Game
  L2_2 = L2_2.GetActor
  L3_2 = "MapRoomTutoTriggerExit"
  L2_2 = L2_2(L3_2)
  if L1_2 ~= nil and L2_2 ~= nil then
    L3_2 = L14_1
    if not L3_2 and A0_2 then
      L1_2.bEnabled = true
      L2_2.bEnabled = true
    else
      L1_2.bEnabled = false
      L2_2.bEnabled = false
    end
  end
end
L15_1.OnTutoMapRoomBegins = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Scenario
  L0_2 = L0_2.WriteToBlackboard
  L1_2 = Scenario
  L1_2 = L1_2.LUAPropIDs
  L1_2 = L1_2.CAVES_TUTO_MAP_ROOM_DONE
  L2_2 = "b"
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = true
  L14_1 = L0_2
  L0_2 = print
  L1_2 = L14_1
  L0_2(L1_2)
end
L15_1.OnTutoMapRoomEnds = L16_1
L15_1 = s010_cave
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Game
  L2_2 = L2_2.PushSetup
  L3_2 = "ChozoWarriorX"
  L4_2 = true
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
end
L15_1.EnableChozoWarriorX = L16_1
L15_1 = s010_cave
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Game
  L2_2 = L2_2.PopSetup
  L3_2 = "ChozoWarriorX"
  L4_2 = true
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
end
L15_1.PostChozoWarriorX = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "cutsceneplayer_intro_space"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = Game
    L1_2 = L1_2.GetActor
    L2_2 = "cutsceneplayer_intro_flashbackinit"
    L1_2 = L1_2(L2_2)
    if L1_2 ~= nil then
      L2_2 = L0_2.CUTSCENE
      L3_2 = L2_2
      L2_2 = L2_2.QueueCutscenePlayer
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
      L2_2 = Game
      L2_2 = L2_2.GetActor
      L3_2 = "cutsceneplayer_intro_landing"
      L2_2 = L2_2(L3_2)
      if L2_2 ~= nil then
        L3_2 = L1_2.CUTSCENE
        L4_2 = L3_2
        L3_2 = L3_2.QueueCutscenePlayer
        L5_2 = L2_2
        L3_2(L4_2, L5_2)
        L3_2 = Game
        L3_2 = L3_2.GetActor
        L4_2 = "cutsceneplayer_intro_arrivalatrium"
        L3_2 = L3_2(L4_2)
        if L3_2 ~= nil then
          L4_2 = L2_2.CUTSCENE
          L5_2 = L4_2
          L4_2 = L4_2.QueueCutscenePlayer
          L6_2 = L3_2
          L4_2(L5_2, L6_2)
          L4_2 = Game
          L4_2 = L4_2.GetActor
          L5_2 = "cutsceneplayer_intro_fight"
          L4_2 = L4_2(L5_2)
          if L4_2 ~= nil then
            L5_2 = L3_2.CUTSCENE
            L6_2 = L5_2
            L5_2 = L5_2.QueueCutscenePlayer
            L7_2 = L4_2
            L5_2(L6_2, L7_2)
            L5_2 = Game
            L5_2 = L5_2.GetActor
            L6_2 = "cutsceneplayer_intro_flashbackend"
            L5_2 = L5_2(L6_2)
            if L5_2 ~= nil then
              L6_2 = L4_2.CUTSCENE
              L7_2 = L6_2
              L6_2 = L6_2.QueueCutscenePlayer
              L8_2 = L5_2
              L6_2(L7_2, L8_2)
            end
          end
        end
      end
    end
  end
end
L15_1.cutsceneplayer_intro_space_full = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.AddSF
  L1_2 = 0.1
  L2_2 = "s010_cave.cutsceneplayer_3_delayed"
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
end
L15_1.cutsceneplayer_3 = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "PRP_CV_AccessPoint001"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L0_2.bEnabled = false
  end
end
L15_1.cutsceneplayer_3_delayed = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.AddSF
  L1_2 = 0.1
  L2_2 = "s010_cave.cutsceneplayer_48_delayed"
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
end
L15_1.cutsceneplayer_48 = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "PRP_CV_AccessPoint001"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L0_2.bEnabled = false
  end
end
L15_1.cutsceneplayer_48_delayed = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "SP_Scorpius_scorpius"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L0_2.bEnabled = false
  end
end
L15_1.cutsceneplayer_54_delayed = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.AddSF
  L1_2 = 0.1
  L2_2 = "s010_cave.cutsceneplayer_55_delayed"
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
end
L15_1.cutsceneplayer_55 = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "SP_Scorpius_scorpius"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L0_2.bEnabled = false
  end
end
L15_1.cutsceneplayer_55_delayed = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.AddSF
  L1_2 = 0.1
  L2_2 = "s010_cave.cutsceneplayer_155_delayed"
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
end
L15_1.cutsceneplayer_155 = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "SP_Scorpius_scorpius"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L0_2.bEnabled = false
  end
end
L15_1.cutsceneplayer_155_delayed = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Game
  L0_2 = L0_2.AddSF
  L1_2 = 0.1
  L2_2 = "s010_cave.cutsceneplayer_57_delayed"
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
end
L15_1.cutsceneplayer_57 = L16_1
L15_1 = s010_cave
function L16_1()
  local L0_2, L1_2
  L0_2 = Game
  L0_2 = L0_2.GetActor
  L1_2 = "SP_Scorpius_scorpius"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L0_2.bEnabled = false
  end
end
L15_1.cutsceneplayer_57_delayed = L16_1
